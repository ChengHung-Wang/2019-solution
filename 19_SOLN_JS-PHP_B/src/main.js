const E = new Vue;

const vm = new Vue({
    router,
    el:'#app',
    data: {
        transitionName:'',
    },
    watch: {
        '$route'(to, from){
            const toCount = to.path.split('/').length;
            const fromCount = from.path.split('/').length;
            console.log(toCount, fromCount);
            if (toCount > fromCount) {
                this.transitionName = 'slide-left';
            } else {
                this.transitionName = 'slide-right';
            }
        }
    }
});
