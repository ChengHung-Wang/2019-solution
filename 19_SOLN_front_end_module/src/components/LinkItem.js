Vue.component('link-item', {
    // language=HTML
    template: `
        <transition name="scale" appear>
            <path
                    ref="link"
                    :stroke-dashoffset="length"
                    :stroke-dasharray="length"
                    :d="d"
                    :class="cl"
                    :style="style"
                    @click="selectLink"
            ></path>
        </transition>
        <!--<path d="M 100 800 L 400 800" class="link selected"></path>-->
    `,
    props: ['link'],
    data() {
        return {
            length: 'auto',
        };
    },
    computed: {
        d() {
            const {from, to} = this.link;

            const pos1 = POSITION[from.node.id];
            const pos2 = POSITION[to.node.id];

            let {x: x1, y: y1} = from.element;
            let {x: x2, y: y2} = to.element;

            x1 += pos1.x * 45;
            y1 += pos1.y * 45;
            x2 += pos2.x * 45;
            y2 += pos2.y * 45;

            return `M ${x1} ${y1} L ${x2} ${y2}`;
        },
        style() {
            const {x,y} = this.link.from.element;
            return { 'transform-origin': `${x}px ${y}px` };
        },
        cl() {
            const cl = ['link'];

            if (this.link.selected) cl.push('selected');

            return cl;
        }
    },
    methods: {
        /**
         * Select
         */
        selectLink() {
            E.$emit('selectLink', this.link);
        },
        /**
         * path length
         */
        enterAnimation(el, done) {
            console.log(el.getTotalLength());
            this.length = el.getTotalLength();
            setTimeout( () => {
                el.style.transition = 'stroke-dashoffset .4s var(--bounce)';
                el.style.strokeDashoffset = 0;
                setTimeout( () => {
                    el.style.transition = '';
                    this.length = 'auto';
                }, 400);
            });
        },
    },
});
