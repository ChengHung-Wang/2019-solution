const EventRegister = {
    template: `
        <div class="container mb-5">
            <div class="box">
                <div class="title">event registration</div>
                <template v-if="event">
                    <div class="h4 mb-4">{{event.name}}</div>
                    <div class="row px-3 mb-4">
                        <template v-for="ticket in event.tickets">
                            <div class="col-md-4 p-0">
                                <label class="d-flex p-4 m-0 justify-content-between align-items-center h-100 ticket" :class="{disabled:!ticket.available }">
                                    <input type="radio" v-model="ticket_id" :value="ticket.id">
                                    <span class="d-flex flex-column flex-grow-1 pl-3">
                                        <span class="d-flex justify-content-between align-items-center">
                                            <span class="h5">{{ticket.name}}</span>
                                            <span class="h6">{{ticket.cost}}</span>
                                        </span>
                                        <span>
                                            {{ticket.description}}
                                        </span>
                                    </span>
                                </label>
                            </div>
                        </template>
                    </div>
                    <div class="h5">
                        Select additional workshops you want to book.
                    </div>
                    <ul class="mb-5">
                        <li class="mb-2" v-for="workshop in workshops" :key="workshop.id">
                            <label class="workshop">
                                <input type="checkbox" class="mr-3" v-model="session_ids" :value="workshop.id">
                                <span>{{workshop.title}}</span>
                            </label>
                        </li>
                    </ul>
                    <div class="d-flex flex-column justify-content-between align-items-end">
                        <table class="cost-table mb-4">
                            <tr>
                                <td>Event ticket:</td>
                                <td id="event-cost">{{ticket_cost}}</td>
                            </tr>
                            <tr>
                                <td>Additional workshops:</td>
                                <td id="additional-cost">{{workshops_cost}}</td>
                            </tr>
                            <tr>
                                <th>Total:</th>
                                <th id="total-cost">{{total_cost}}</th>
                            </tr>
                        </table>
                        <button class="btn btn-outline-success" :class="{disabled:!ticket_id}" id="purchase" @click="purchase">Purchase</button>
                    </div>
                </template>
            </div>
        </div>
    `,
    data() {
        return {
            event: null,
            ticket_id: '',
            session_ids: [],
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
        },
        workshops() {
            let workshops = [];
            this.event.channels.find(channel => {
                channel.rooms.find(room => {
                    room.sessions.find(session => {
                        if (session.type === 'workshop') {
                            workshops.push(session);
                        }
                    });
                });
            });
            return workshops;
        },
        ticket_cost() {
            if (!this.ticket_id) return 0;
            const ticket = this.event.tickets.find(x => x.id === this.ticket_id);
            return parseFloat(ticket.cost);
        },
        workshops_cost() {
            if (!this.session_ids.length) return 0;
            return this.workshops.reduce((acc, workshop) => {
                if (this.session_ids.includes(workshop.id)) {
                    acc += parseFloat(workshop.cost);
                }
                return acc;
            }, 0);
        },
        total_cost() {
            return this.ticket_cost + this.workshops_cost;
        }
    },
    methods: {
        purchase() {
            const {ticket_id, session_ids, organizer_slug, event_slug} = this;
            ajax.post(`organizers/${organizer_slug}/events/${event_slug}/registration?token=${store.auth.token}`, {ticket_id, session_ids}, true)
                .then(({data,status}) => {
                    if (status === 200) {
                        E.$emit('success', data.message);
                        this.$router.push({
                            name:'EventDetail',
                            params:{organizer_slug, event_slug},
                        });
                    } else {
                        E.$emit('danger', data.message);
                    }
                });
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
