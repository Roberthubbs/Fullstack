import * as CategoryAPIUtil from '../util/category_api_util';

export const RECEIVE_ALL_CATEGORIES = "RECEIVE_ALL_CATEGORIES";
export const RECEIVE_CATEGORY = "RECEIVE_CATEGORY";

export const receiveAllCategories = categories => ({
    type: RECEIVE_ALL_CATEGORIES,
    categories
});



export const receiveCategory = category => ({
    RECEIVE_CATEGORY,
    category
});

export const fetchCategory = id => dispatch =>(
    CategoryAPIUtil.fetchCategory(id).then(category => dispatch(receiveCategory(category)))
);

export const fetchCategories = () => dispatch => (
    CategoryAPIUtil.fetchCategories().then(categories => dispatch(receiveAllCategories(categories)))
);

