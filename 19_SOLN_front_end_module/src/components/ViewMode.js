Vue.component('view-mode', {
    // language=HTML
    template: `
        <div id="viewer" ref="viewer">
            <div class="side">
                <div>
                    <button class="btn btn-primary btn-custom" @click="$parent.modeEdit()">Edit Mode</button>
                </div>
                <div>
                    <p v-for="node in nowElement.nodes" :key="node.id">
                        <button class="btn arrow btn-dark" :class="{disabled:!node.linkId}" @click="change(node)">
                            <b>{{arrowText(node.id)}}</b>
                            <span>{{node.caption}}</span>
                        </button>
                    </p>
                </div>
                <div>
                    <div class="navigation">
                        <div class="navigation-layout">
                            <edit-mode :elements="elements" :links="links"></edit-mode>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slides">
                <transition :name="arrow" enter-active-class="slide-active" leave-active-class="slide-active" mode="out-in" appear>
                    <div class="slide" :key="nowElement.key">
                        <div class="slide-content">
                            <div class="title">
                                {{nowElement.caption}}
                            </div>
                            <div class="separator"></div>
                            <div v-html="nowElement.content"></div>
                        </div>
                    </div>
                </transition>
            </div>
        </div>
    `,
    props: ['elements', 'links'],
    data() {
        return {
            nowId: 'root',
            arrow: 'slide-center',
        }
    },
    computed: {
        nowElement() {
            return this.elements.find(x => x.id === this.nowId);
        }
    },
    methods: {
        arrowText(id) {
            return TEXT[id];
        },
        change(node) {
            const link = this.links.find(x => x.id === node.linkId);
            if (link) {
                if (link.from.element.id === this.nowId) {
                    this.nowId = link.to.element.id;
                } else {
                    this.nowId = link.from.element.id;
                }
                this.arrow = `slide-${TEXT[node.id]}`;
            }
        },
        onKeyDown(e) {
            if ([1,2,3,4].includes(parseInt(e.key))) {
                const nodeId = parseInt(e.key);
                const node = this.nowElement.nodes.find(x => x.id === nodeId);
                this.change(node);
            }
        }
    },
    mounted() {
        this.$refs.viewer.requestFullscreen();

        window.addEventListener('keydown', this.onKeyDown);
    },
    destroyed() {
        window.removeEventListener('keydown', this.onKeyDown);
    }
});
