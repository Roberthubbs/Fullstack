import { RECEIVE_ALL_CATEGORIES, RECEIVE_CATEGORY} from '../actions/category_actions';

import merge from 'lodash/merge';

const categoriesReducer =(state={}, action) =>{
    Object.freeze(state);
    
    switch(action.type){
        
        case RECEIVE_ALL_CATEGORIES:
            
            return action.categories
            
        case RECEIVE_CATEGORY: 
            // let newState = action.category
            // let newProjects = ({[action.projects]: action.projects})
           
            // return merge({}, newState, newProjects);
            return merge({}, state, action.payload.category)
        default: 
            return state;
    }
}

export default categoriesReducer;