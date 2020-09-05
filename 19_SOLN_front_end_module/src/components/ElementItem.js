Vue.component('element-item', {
    // language=HTML
    template: `
        <transition name="scale" appear>
            <div class="element" :style="position" :class="cl" @mousedown="startDrag">
                <div class="nodes">
                    <button
                            v-for="node in element.nodes"
                            :class="nodeCl(node)"
                            :key="node.id"
                            @click="createElement(node)"
                            @mousedown.shift.stop="startLinking(node)"
                            @mouseup="doneLinking(node)"
                    >
                        <span class="node-text">{{node.id}}</span>
                    </button>
                </div>
                <div class="tools">
                    <button class="btn btn-info arial btn-custom tool tool-edit" @click="editElement">&#9998;</button>
                    <button class="btn btn-danger arial btn-custom tool tool-delete" @click="deleteElement"
                            v-if="element.id != 'root'">&#10006;
                    </button>
                </div>
            </div>
        </transition>
        <!--<div class="element selected" style="left:350px; top:150px;">-->
        <!--    <div class="nodes">-->
        <!--        <button class="node node-1"><span class="node-text">1</span></button>-->
        <!--        <button class="node node-2"><span class="node-text">2</span></button>-->
        <!--        <button class="node node-3"><span class="node-text">3</span></button>-->
        <!--        <button class="node node-4"><span class="node-text">4</span></button>-->
        <!--    </div>-->
        <!--    <div class="tools">-->
        <!--        <button class="btn btn-info arial btn-custom tool tool-edit">&#9998;</button>-->
        <!--        <button class="btn btn-danger arial btn-custom tool tool-delete">&#10006;</button>-->
        <!--    </div>-->
        <!--</div>-->
    `,
    props: ['element'],
    data() {
        return {
            move: 0,
            drag: null,
        };
    },
    computed: {
        // style
        position() {
            const {x, y} = this.element;
            return {
                left: `${x}px`,
                top: `${y}px`,
            }
        },
        // element class
        cl() {
            const cl = ['element'];

            if (this.element.selected) cl.push('selected');

            if (this.$root.mode === 'view') {
                if (this.$parent.$parent.$parent.nowId === this.element.id) {
                    cl.push('viewing');
                }
            }


            return cl;
        }
    },
    methods: {
        // element nodes class
        nodeCl(node) {
            const cl = ['node'];

            cl.push(`node-${node.id}`);

            if (this.element.selected) cl.push('selected');

            return cl;
        },

        /**
         * Element
         */
        createElement(node) {
            if (node.linkId) return;
            if (this.move > 3) return;
            E.$emit('createRelation', this.element, node);
        },
        editElement() {
            if (this.move > 3) return;
            E.$emit('selectElement', this.element);
        },
        deleteElement() {
            if (this.move > 3) return;
            E.$emit('removeElement', this.element);
        },

        /**
         * Linking
         */
        startLinking(node) {
            E.$emit('startLinking', this.element, node);
        },
        doneLinking(node) {
            E.$emit('doneLinking', this.element, node);
        },

        /**
         * Drag
         */
        startDrag({pageX, pageY}) {
            this.move = 0;
            this.drag = {x: pageX, y: pageY};

            window.addEventListener('mousemove', this.moveDrag);
            window.addEventListener('mouseup', this.endDrag);
        },
        moveDrag({pageX, pageY}) {
            if (!this.drag) return;
            this.move++;

            const {x, y} = this.drag;

            const moveX = pageX - this.drag.x;
            const moveY = pageY - this.drag.y;

            this.element.x += moveX;
            this.element.y += moveY;

            this.drag.x = pageX;
            this.drag.y = pageY;
        },
        endDrag() {
            if (!this.drag) return;
            this.drag = null;

            window.removeEventListener('mousemove', this.moveDrag);
            window.removeEventListener('mouseup', this.endDrag);
        }
    }
});
