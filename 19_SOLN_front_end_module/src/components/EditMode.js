Vue.component('edit-mode', {
    // language=HTML
    template: `
        <div id="editor">
            <img class="logo" src="images/logo.png" alt="knowledge explorer" title="logo">

            <link-group>
                <link-item v-for="link in links" :link="link" :key="link.id"></link-item>
            </link-group>

            <element-group>
                <element-item v-for="element in elements" :element="element" :key="element.key"></element-item>
            </element-group>

            <template v-if="linking">
                <div class="linking" :style="linkingPosition">{{linking.node.id}}</div>
            </template>

            <div class="nav">
                <button class="btn btn-info btn-custom" @click="$parent.clear()">Clear</button>
                <button class="btn btn-warning btn-custom ml-2" @click="$parent.modeView()">View Mode</button>
            </div>

            <template v-if="selectedElement">
                <editor-item :element="selectedElement"></editor-item>
            </template>
        </div>
    `,
    props: ['elements', 'links'],
    data() {
        return {
            linking: null,
        };
    },
    computed: {
        linkingPosition() {
            const {x, y} = this.linking;
            return {
                left: `${x}px`,
                top: `${y}px`,
            }
        },
        selectedElement() {
            return this.elements.find(x => x.selected);
        },
        selectedLink() {
            return this.links.find(x => x.selected);
        }
    },
    methods: {
        /**
         * linking
         */
        startLinking(element, node) {
            if (node.linkId) return;

            const {pageX: x, pageY: y} = event;

            this.linking = {x, y, element, node};

            window.addEventListener('mousemove', this.moveLinking);
            window.addEventListener('mouseup', this.endLinking);
        },
        moveLinking({pageX, pageY}) {
            if (!this.linking) return;

            this.linking.x = pageX;
            this.linking.y = pageY;
        },
        doneLinking(element, node) {
            if (node.linkId || !this.linking || this.linking.element === element) return;

            E.$emit('connectRelation', this.linking.element, this.linking.node, element, node);
        },
        endLinking() {
            if (!this.linking) return;

            this.linking = null;

            window.removeEventListener('mousemove', this.moveLinking);
            window.removeEventListener('mouseup', this.endLinking);
        },

        /**
         * Event
         */
        onKeyDown(e) {
            if (e.key === 'Delete' || e.key === 'Backspace') {
                e.preventDefault();
                if (this.selectedLink) {
                    E.$emit('removeLink', this.selectedLink);
                }
            }
        }
    },
    created() {
        E.$on('startLinking', this.startLinking);
        E.$on('doneLinking', this.doneLinking);

        window.addEventListener('keydown', this.onKeyDown);
    },
    destroyed() {
        window.removeEventListener('keydown', this.onKeyDown);
    }
});
