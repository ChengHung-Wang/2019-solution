Vue.component('the-alert', {
    template:`
        <div class="alert-wrapper">
            <transition name="slide" mode="out-in">
                <div :class="cl" v-if="message" :key="message.id">
                    {{message.value}}
                </div>
            </transition>
        </div>
    `,
    data() {
        return {
            interval : null,
            message : null,
        };
    },
    computed: {
        cl() {
            const cl = ['alert'];
            if (this.message) {
                cl.push(`alert-${this.message.type}`);
            }
            return cl;
        }
    },
    methods: {
        setMessage(type, value) {
            clearInterval(this.interval);
            this.message = {
                type,value,id:Date.now()
            }
            this.interval = setTimeout(() => {
                this.message = null;
            }, 5000);
        }
    },
    mounted() {
        E.$on('danger', (msg) => {
            this.setMessage('danger', msg);
        });
        E.$on('success', (msg) => {
            this.setMessage('success', msg);
        });
    }
});
