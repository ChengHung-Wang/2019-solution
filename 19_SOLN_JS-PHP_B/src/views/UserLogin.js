const UserLogin = {
    template:`
        <div class="container mb-5">
            <div class="box">
                <div class="title">login</div>
                <form @submit.prevent="login">
                    <table class="session-table">
                        <tr>
                            <td>
                                Lastname
                            </td>
                            <td>
                                <input type="text" class="form-control" placeholder="Lastname" id="lastname" v-model="form.lastname">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Registration Code
                            </td>
                            <td>
                                <input type="password" class="form-control" placeholder="Code" id="registration_code" v-model="form.registration_code">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="btn btn-outline-success" id="login">Login</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    `,
    data() {
        return {
            form: {
                lastname:'',
                registration_code:'',
            }
        };
    },
    methods: {
        login() {
            ajax.post('login', this.form)
                .then(({data, status}) => {
                    if (status === 200) {
                        E.$emit('success', 'Login Success');
                        store.setAuth(data);
                        this.$router.push({
                            name:'EventList'
                        });
                    } else {
                        E.$emit('danger', 'Lastname or registration code not correct');
                    }
                });
        }
    }
};
