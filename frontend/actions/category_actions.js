import * as CategoryAPIUtil from '../util/category_api_util';

export const RECEIVE_ALL_CATEGORIES = "RECEIVE_ALL_CATEGORIES";
export const RECEIVE_CATEGORY = "RECEIVE_CATEGORY";

export const receiveAllCategories = categories => ({
    type: RECEIVE_ALL_CATEGORIES,
    categories
});



// export const receiveCategory = ({category, projects}) => ({
//     type: RECEIVE_CATEGORY,
//     category: category,
//     projects: projects
// });
export const receiveCategory = (payload) => ({
    type: RECEIVE_CATEGORY,
    payload
});


export const fetchCategory = categoryId => dispatch =>(
    CategoryAPIUtil.fetchCategory(categoryId).then(category => dispatch(receiveCategory(category)))
);

export const fetchCategories = () => dispatch => (
    CategoryAPIUtil.fetchCategories().then(categories => dispatch(receiveAllCategories(categories)))
);

