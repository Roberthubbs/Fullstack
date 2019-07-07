import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './root'
import * as CategoryAPIUtil from './util/category_api_util';
// import { fetchProjects } from './actions/project_action';
document.addEventListener('DOMContentLoaded', () => {
    let store;
    if (window.currentUser) {
        const preloadedState = {
            entities: {
                users: { [window.currentUser.id]: window.currentUser }
            },
            session: { id: window.currentUser.id }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }
    window.store = store;
    window.fetchCategories = CategoryAPIUtil.fetchCategories;
    window.getState = store.getState;
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});

