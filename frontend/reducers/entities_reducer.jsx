import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import projectsReducer from './projects_reducer'
import  categoriesReducer from './category_reducer';
import stepsReducer from './steps_reducer';
const entities = combineReducers({
    users: usersReducer,
    projects: projectsReducer,
    categories: categoriesReducer,
    steps: stepsReducer,
});

export default entities;