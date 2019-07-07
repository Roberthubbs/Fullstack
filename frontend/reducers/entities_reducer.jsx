import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import projectsReducer from './projects_reducer'
import  categoriesReducer from './category_reducer';
const entities = combineReducers({
    users: usersReducer,
    projects: projectsReducer,
    categories: categoriesReducer
});

export default entities;