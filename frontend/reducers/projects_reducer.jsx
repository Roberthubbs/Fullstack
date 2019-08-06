import {
    RECEIVE_ALL_PROJECTS,
    RECEIVE_PROJECT,
    REMOVE_PROJECT,
    RECEIVE_ALL_SEARCH_PROJECTS
} from '../actions/project_action';
import {
    RECEIVE_CATEGORY
} from '../actions/category_actions'
import merge from 'lodash/merge';


export default (state ={}, action) => {
   
    Object.freeze(state);
    switch(action.type){
        case RECEIVE_ALL_PROJECTS:
            // debugger;
            return merge({}, action.projects);
        case RECEIVE_PROJECT:
        //    debugger;
            return merge({},state,{[action.payload.project.id]: action.payload.project});
        case REMOVE_PROJECT:
             
            const { id } = action;
            let newState = merge({}, state);
            delete newState[id];
            return newState;
        case RECEIVE_ALL_SEARCH_PROJECTS:
           
            return merge({}, state, action.projects);
        case RECEIVE_CATEGORY:
            return merge({}, action.payload.projects)
        default:
            return state; 
    }
};