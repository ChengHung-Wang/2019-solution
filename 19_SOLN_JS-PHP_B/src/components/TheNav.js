Vue.component('the-nav', {
    template:`
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <router-link :to="{name:'EventList'}" class="navbar-brand">Event Booking Platform</router-link>
    
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <template v-if="isAuth">
                        <li class="nav-item d-flex align-items-center mr-3">
                            {{auth.username}}
                        </li>
                        <li class="nav-item">
                            <button class="btn btn-outline-success my-2 my-sm-0" @click="logout">
                                Logout
                            </button>
                        </li>
                    </template>
                    <template v-else>
                        <li class="nav-item">
                            <router-link :to="{name:'UserLogin'}" class="btn btn-outline-success my-2 my-sm-0 login-btn">
                                Login
                            </router-link>
                        </li>
                    </template>
                </ul>
            </div>
        </nav>
    `,
    data() {
        return {
            auth: store.auth,
        };
    },
    computed: {
        isAuth() {
            const {username, token} = this.auth;
            return username && token;
        }
    },
    methods: {
        logout() {
            ajax.post(`logout?token=${this.auth.token}`)
                .then(({data, status}) => {
                    if (status === 200) {
                        store.removeAuth();
                        this.$router.push({name:'UserLogin'});
                        E.$emit('success', data.message);
                    }
                });
        }
    }
});
