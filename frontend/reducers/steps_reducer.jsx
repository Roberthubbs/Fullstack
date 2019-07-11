import { RECEIVE_PROJECT } from '../actions/project_action';
import { RECEIVE_STEP } from '../actions/step_actions';
import merge from 'lodash/merge';

const stepsReducer = (state = {}, action) => {
    Object.freeze(state)
    switch(action.type){
        case RECEIVE_PROJECT: 
            return merge({},state, action.payload.steps);
        case RECEIVE_STEP: 
            
            return merge({}, state, { [action.step.id]: action.step});
        default: 
            return state;
    }
};

export default stepsReducer;