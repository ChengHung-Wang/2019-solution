const EventDetail = {
    // language=HTML
    template: `
        <div class="container mb-5">
            <div class="box">
                <div class="title">event agenda</div>
                <template v-if="event">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <div class="h4">{{event.name}}</div>
                        <router-link :to="{name:'EventRegister', params:{organizer_slug, event_slug}}" class="btn btn-outline-success" id="register">Register for this event</router-link>
                    </div>
                    <table class="table agenda table-borderless">
                        <thead>
                        <tr>
                            <th width="15%"></th>
                            <th width="15%"></th>
                            <th width="70%">
                                <div class="d-flex">
                                    <div class="flex-grow-1">9:00</div>
                                    <div class="flex-grow-1">11:00</div>
                                    <div class="flex-grow-1">13:00</div>
                                    <div class="flex-grow-1">15:00</div>
                                </div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <template v-for="channel in event.channels">
                            <template v-for="(room, i) in channel.rooms">
                                <tr class="row">
                                    <td v-if="!i" class="channel" :rowspan="channel.rooms.length">{{channel.name}}</td>
                                    <td class="room">{{room.name}}</td>
                                    <td>
                                        <div class="sessions">
                                            <template v-for="session in room.sessions">
                                                <div :class="sessionClass(session)" :style="sessionStyle(session)">
                                                    <router-link
                                                            :to="{name:'SessionDetail', params:{organizer_slug, event_slug, session_id: session.id}}">
                                                        {{session.title}}
                                                    </router-link>
                                                </div>
                                            </template>
                                        </div>
                                    </td>
                                </tr>
                            </template>
                        </template>
                        </tbody>
                    </table>
                </template>
            </div>
        </div>
    `,
    data() {
        return {
            event: null,
            registrations: null,
        }
    },
    methods: {
        sessionStyle(session) {
            const start = session.start.slice(11, 16);
            const end = session.end.slice(11, 16);

            const s_arr = start.split(':');
            const e_arr = end.split(':');

            const sm = parseInt(s_arr[0]) * 60 + parseInt(s_arr[1]) - (60 * 9);
            const em = parseInt(e_arr[0]) * 60 + parseInt(e_arr[1]) - (60 * 9);

            const section = 8 * 60;

            const left = sm / section * 100 + '%';
            const width = (em - sm) / section * 100 + '%';

            return {left, width};
        },
        sessionClass(session) {
            const cl = ['session'];
            if (this.registrations) {
                const reg = this.registrations.find(x => x.event.id === this.event.id);
                if (reg) {
                    if (session.type === 'talk') {
                        cl.push('registered');
                    } else {
                        if (reg.session_ids.includes(session.id)) {
                            cl.push('registered');
                        }
                    }
                }
            }
            return cl;
        }
    },
    computed: {
        organizer_slug() {
            const {organizer_slug} = this.$route.params;
            return organizer_slug;
        },
        event_slug() {
            const {event_slug} = this.$route.params;
            return event_slug;
        }
    },
    created() {
        const {organizer_slug, event_slug} = this;
        ajax.get(`organizers/${organizer_slug}/events/${event_slug}`)
            .then(({data, status}) => {
                if (status === 200) {
                    this.event = data;
                    if (store.isAuth()) {
                        ajax.get(`registrations?token=${store.auth.token}`)
                            .then(({data, status}) => {
                                if(status === 200) {
                                    this.registrations = data.registrations;
                                }
                            });
                    }
                }
            });
    }
};
