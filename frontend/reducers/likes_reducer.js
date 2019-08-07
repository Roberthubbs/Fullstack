import {
    
    RECEIVE_PROJECT,
   
} from '../actions/project_action';
import {
    RECEIVE_CATEGORY
} from '../actions/category_actions'
import merge from 'lodash/merge';


export default (state = {}, action) => {

    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PROJECT:
            //    debugger;
            return merge({}, state, { [action.payload.project.id]: action.payload.project });
        default:
            return state;
    }
};