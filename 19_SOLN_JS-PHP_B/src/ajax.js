const ajax = {
    request(method, url, data={}, json=false) {
        const o = {method};

        if (method !== 'GET') {
            if (json) {
                o.headers = {'Content-Type': 'application/json'};
                o.body = JSON.stringify(data);
            } else {
                const formData = new FormData;
                o.method = 'POST';
                data._method = method;
                Object.keys(data).forEach(key => {
                    formData.append(key, data[key]);
                });
                o.body = formData;
            }
        }

        return fetch(`http://localhost/19_SOLN_JS-PHP_A/api/v1/${url}`, o)
            .then(res => res.json().then(data => {
                return {
                    status: res.status,
                    data,
                }
            }));
    },
    get(url) {
        return this.request('GET', url);
    },
    post(url, data={}, json=false) {
        return this.request('POST', url, data, json);
    },
    put(url, data={}, json=false) {
        return this.request('PUT', url, data, json);
    },
    delete(url, data={}, json=false) {
        return this.request('DELETE', url, data, json);
    }
};
