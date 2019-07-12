import {
    RECEIVE_ALL_PROJECTS,
    RECEIVE_PROJECT,
    REMOVE_PROJECT
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
           
            return merge({},state,{[action.payload.project.id]: action.payload.project});
        case REMOVE_PROJECT:
             debugger;
            const { id } = action;
            let newState = merge({}, state);
            delete newState[id];
            return newState;
        case RECEIVE_CATEGORY:
            return merge({}, action.payload.projects)
        default:
            return state; 
    }
};