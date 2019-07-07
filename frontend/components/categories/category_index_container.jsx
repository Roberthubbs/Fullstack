import {fetchCategories } from '../../actions/category_actions';
import { connect } from 'react-redux';
import CategoryIndex from './category_index';

const mapStateToProps = (state) => {
    return {
        categories: Object.values(state.entities.categories)
       
    }
};


const mapDispatchToProps = dispatch => ({
    fetchCategories: () => (dispatch(fetchCategories()))
});

export default connect(mapStateToProps, mapDispatchToProps)(CategoryIndex)