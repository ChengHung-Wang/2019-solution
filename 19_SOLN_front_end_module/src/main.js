const LOCAL_ELEMENTS = '200801_elements';
const LOCAL_LINKS = '200801_links';
const ARROW_TOP = 1;
const ARROW_RIGHT = 2;
const ARROW_BOTTOM = 3;
const ARROW_LEFT = 4;
const REVERSE = {
    [ARROW_TOP]: ARROW_BOTTOM,
    [ARROW_RIGHT]: ARROW_LEFT,
    [ARROW_BOTTOM]: ARROW_TOP,
    [ARROW_LEFT]: ARROW_RIGHT,
};
const POSITION = {
    [ARROW_TOP]: {x: 0, y: -1},
    [ARROW_RIGHT]: {x: 1, y: 0},
    [ARROW_BOTTOM]: {x: 0, y: 1},
    [ARROW_LEFT]: {x: -1, y: 0},
};
const TEXT = {
    [ARROW_TOP]: 'top',
    [ARROW_RIGHT]: 'right',
    [ARROW_BOTTOM]: 'bottom',
    [ARROW_LEFT]: 'left',
};

const uuid = () => `xxxx-xxxx-xxxx-xxxxxxxxx-${Date.now()}`.replace(/x/g, () => Math.floor(Math.random() * 16).toString(16));

const E = new Vue;

const vm = new Vue({
    el: '#app',
    data: {
        mode: 'edit',
        elements: [],
        links: [],
    },
    computed: {
        componentName() {
            return `${this.mode}-mode`;
        }
    },
    watch: {
        elements: {
            deep: true,
            handler() {
                localStorage.setItem(LOCAL_ELEMENTS, JSON.stringify(this.elements));
            }
        },
        links: {
            deep: true,
            handler() {
                localStorage.setItem(LOCAL_LINKS, JSON.stringify(this.links.map(link => {
                    return Object.assign({}, link, {
                        from: {
                            element: link.from.element.id,
                            node: link.from.node.id,
                        },
                        to: {
                            element: link.to.element.id,
                            node: link.to.node.id,
                        }
                    });
                })));
            }
        }
    },
    methods: {
        /**
         * init
         */
        init() {
            if (localStorage.getItem(LOCAL_ELEMENTS)) {
                this.restore();
            } else {
                this.clear();
            }
        },
        clear() {
            this.elements = [];
            this.links = [];

            this.createElement({id: 'root'});
        },
        restore() {
            this.elements = JSON.parse(localStorage.getItem(LOCAL_ELEMENTS));

            const links = localStorage.getItem(LOCAL_LINKS);
            if (links) {
                this.links = JSON.parse(links).map(link => {
                    const from = this.elements.find(x => x.id === link.from.element);
                    const to = this.elements.find(x => x.id === link.to.element);
                    return Object.assign({}, link, {
                        from: {
                            element:from,
                            node:from.nodes.find(x => x.id === link.from.node),
                        },
                        to: {
                            element:to,
                            node:to.nodes.find(x => x.id === link.to.node),
                        }
                    });
                });
            }
        },

        /**
         * Element
         */
        createElement(option) {
            const o = {
                id: uuid(),
                key: uuid(),
                x: window.innerWidth / 2,
                y: window.innerHeight / 2,
                caption: 'Lorem ipsum dolor sit amet',
                content: `
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquid architecto aut autem consectetur dolor enim, excepturi illo illum incidunt ipsum iure libero, magni maiores molestiae nisi suscipit velit veniam.</p>
                    <img src="images/example.jpg" alt="exmaple image">
                `,
                selected: false,
                nodes: [
                    {id: 1, caption: '', linkId: null},
                    {id: 2, caption: '', linkId: null},
                    {id: 3, caption: '', linkId: null},
                    {id: 4, caption: '', linkId: null},
                ],
            };

            Object.assign(o, option);
            this.elements.push(o);
            return o;
        },
        removeElement(el) {
            el.nodes.forEach(node => {
                if (node.linkId) {
                    const link = this.links.find(x => x.id === node.linkId);
                    this.removeLink(link);
                }
            });

            const index = this.elements.findIndex(x => x === el);
            this.elements.splice(index, 1);
        },

        /**
         * Link
         */
        createLink(option) {
            const o = {
                id: uuid(),
                selected: false,
                from: {
                    element: null,
                    node: null,
                },
                to: {
                    element: null,
                    node: null,
                }
            };

            Object.assign(o, option);
            this.links.push(o);
            return o;
        },
        removeLink(link) {
            link.to.node.linkId = null;
            link.from.node.linkId = null;

            const index = this.links.findIndex(x => x === link);
            this.links.splice(index, 1);
        },

        /**
         * Relation
         */
        connectRelation(e1, n1, e2, n2) {
            const link = this.createLink();

            link.from.element = e1;
            link.from.node = n1;
            link.to.element = e2;
            link.to.node = n2;

            n1.linkId = link.id;
            n2.linkId = link.id;
        },
        createRelation(e, n) {
            let {x, y} = POSITION[n.id];
            x = x * 150 + e.x;
            y = y * 150 + e.y;
            const ne = this.createElement({x, y});
            const nn = ne.nodes.find(x => x.id === REVERSE[n.id]);
            this.connectRelation(e, n, ne, nn);
        },

        /**
         * Select(Start Editing) Element & Link
         */
        selectElement(element) {
            this.deselectElement();
            element.selected = true;
        },
        deselectElement() {
            this.elements.forEach(x => x.selected = false);
        },
        selectLink(link) {
            this.deselectLink();
            link.selected = true;
        },
        deselectLink() {
            this.links.forEach(x => x.selected = false);
        },

        /**
         * modes
         */
        modeView() {
            this.mode = 'view';
            this.deselectElement();
            this.deselectLink();
        },
        modeEdit() {
            this.mode = 'edit';
        }
    },
    created() {
        this.init();

        // Element
        E.$on('removeElement', this.removeElement);

        // Link
        E.$on('removeLink', this.removeLink);

        // Relation
        E.$on('connectRelation', this.connectRelation);
        E.$on('createRelation', this.createRelation);

        // Select
        E.$on('selectElement', this.selectElement);
        E.$on('deselectElement', this.deselectElement);
        E.$on('selectLink', this.selectLink);
        E.$on('deselectLink', this.deselectLink);
    }
});
