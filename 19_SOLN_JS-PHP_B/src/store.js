const LOCAL_USERNAME = '200730_username';
const LOCAL_TOKEN = '200730_token';

const store = {
    auth: {
        username: localStorage.getItem(LOCAL_USERNAME) || null,
        token: localStorage.getItem(LOCAL_TOKEN) || null,
    },
    setAuth({username, token}) {
        this.auth.username = username;
        this.auth.token = token;

        localStorage.setItem(LOCAL_USERNAME, username);
        localStorage.setItem(LOCAL_TOKEN, token);
    },
    removeAuth() {
        this.auth.username = null;
        this.auth.token = null;

        localStorage.removeItem(LOCAL_USERNAME);
        localStorage.removeItem(LOCAL_TOKEN);
    },
    isAuth() {
        const {username, token} = this.auth;
        return username && token;
    }
};
