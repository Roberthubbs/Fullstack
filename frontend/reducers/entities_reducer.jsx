import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import projectsReducer from './projects_reducer'
import { categoryReducer } from './category_reducer';
const entities = combineReducers({
    users: usersReducer,
    projects: projectsReducer,
    categories: categoryReducer
});

export default entities;