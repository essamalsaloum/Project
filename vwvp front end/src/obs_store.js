const observable = function() {
    this.data = {};
    
    this.subscribers = [];
    
    this.subscribe = (fn) => {
        this.subscribers.push(fn);
    };
    this.unsubscribe=(fn) =>{
        this.subscribers = this.subscribers.filter(subscriber => subscriber !== fn);
    };
    
    this.put = (k,v) => {
        this.data[k] = v;
        for (const subscriber of this.subscribers) {
            subscriber(k,v);
        }
    };
    this.get = (k) => {
        return this.data[k];
    };
    this.values = function() { return Object.values(this.data); };
};

const selectedFilters = new observable();
const selectedOneOrg = new observable();
const selectedCoords = new observable();
const selectedOrgs = new observable();
const switcher = new observable();
const allTags = new observable();

export {
    observable,selectedFilters,selectedOneOrg,selectedCoords,selectedOrgs,switcher,allTags
    
};