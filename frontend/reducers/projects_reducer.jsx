import {
    RECEIVE_ALL_PROJECTS,
    RECEIVE_PROJECT
} from '../actions/project_action';
import {
    RECEIVE_CATEGORY
} from '../actions/category_actions'
import merge from 'lodash/merge';


export default (state ={}, action) => {
   
    Object.freeze(state);
    switch(action.type){
        case RECEIVE_ALL_PROJECTS:
            return merge({}, state, action.projects);
        case RECEIVE_PROJECT:
            return merge({},state,action.project);
        case RECEIVE_CATEGORY:
            return merge({}, action.payload.projects)
        default:
            return state; 
    }
};