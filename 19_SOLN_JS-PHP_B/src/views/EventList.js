const EventList = {
    template: `
        <div class="container mb-5">
            <div class="box">
                <div class="title">Events list</div>
                <div class="list-group">
                    <template v-for="(event, i) in events">
                        <router-link :to="{name:'EventDetail', params: {organizer_slug:event.organizer.slug, event_slug:event.slug}}" class="list-group-item list-group-item-action event" :key="event.id">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">{{event.name}}</h5>
                            </div>
                            <p class="mb-1">{{event.organizer.name}}, {{event.date}}</p>
                        </router-link>
                    </template>
                </div>
            </div>
        </div>
    `,
    data() {
        return {
            events: [],
        }
    },
    created() {
        ajax.get('events').then(({status, data}) => {
            if (status === 200) {
                this.events = data;
            }
        });
    }
};
