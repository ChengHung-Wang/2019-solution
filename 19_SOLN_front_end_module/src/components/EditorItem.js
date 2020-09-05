Vue.component('editor-item', {
    // language=HTML
    template: `
        <transition name="scale" appear>
            <div class="editor">
                <button class="btn btn-danger btn-custom mb-3" @click="close">Close</button>
                <div class="form-group">
                    <label for="input-1">Title</label>
                    <input type="text" class="form-control" id="input-1" v-model="element.caption">
                </div>
                <div class="form-group">
                    <label for="input-1">Content</label>
                    <div id="ckeditor"></div>
                    <!--<input type="text" class="form-control" id="input-2">-->
                </div>
                <div class="form-inline mb-1" v-for="node in nodes" :key="node.id">
                    <label>
                        <span>Caption {{node.id}}</span>
                        <input type="text" class="form-control ml-3" v-model="node.caption">
                    </label>
                </div>
            </div>
        </transition>
    `,
    props: ['element'],
    computed: {
        nodes() {
            return this.element.nodes.filter(x => x.linkId);
        }
    },
    watch: {
        element() {
            this.setContent();
        }
    },
    methods: {
        close() {
            E.$emit('deselectElement');
        },
        setContent() {
            CKEDITOR.instances.ckeditor.setData(this.element.content);
        }
    },
    mounted() {
        CKEDITOR.replace('ckeditor', {
            removePlugins: ['easyimage', 'cloudservices'],
        });

        CKEDITOR.instances.ckeditor.on('change', () => {
            this.element.content = CKEDITOR.instances.ckeditor.getData();
        });

        this.setContent();
    }
});
