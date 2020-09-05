const SessionDetail = {
    template:`
        <div class="container mb-5">
            <div class="box">
                <template v-if="session">
                    <div class="title">session detail</div>
                    <div class="h4 mb-3">
                        {{session.title}} - {{session.type}}
                    </div>
                    <div class="article mb-4">
                        {{session.description}}
                    </div>
                    <table class="session-table">
                        <tr>
                            <th>Speaker : </th>
                            <td>{{session.speaker}}</td>
                        </tr>
                        <tr>
                            <th>Start : </th>
                            <td>{{session.start}}</td>
                        </tr>
                        <tr>
                            <th>End : </th>
                            <td>{{session.end}}</td>
                        </tr>
                        <tr>
                            <th>Cost : </th>
                            <td>{{session.cost ? session.cost : 0}}</td>
                        </tr>
                    </table>
                </template>
            </div>
        </div>
    `,
    data() {
        return {
            event: null,
        };
    },
    computed: {
        organizer_slug() {
            const {organizer_slug} = this.$route.params;
            return organizer_slug;
        },
        event_slug() {
            const {event_slug} = this.$route.params;
            return event_slug;
        },
        session_id() {
            const {session_id} = this.$route.params;
            return session_id;
        },
        session() {
            if (!this.event) return false;
            let session = null;
            this.event.channels.find(channel => {
                channel.rooms.find(room => {
                    room.sessions.find(x => {
                        if (x.id == this.session_id) {
                            session = x;
                            return true;
                        }
                    });
                });
            });
            return session;
        }
    },
    created() {
        const {organizer_slug, event_slug} = this;
        ajax.get(`organizers/${organizer_slug}/events/${event_slug}`)
            .then(({data, status}) => {
                if (status === 200) {
                    this.event = data;
                }
            });
    }
};
