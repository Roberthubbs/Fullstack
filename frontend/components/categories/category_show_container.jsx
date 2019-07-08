import CategoryShow from './category_show';
import { connect } from 'react-redux';
import { fetchCategory } from '../../actions/category_actions';
import { receiveAllProjects } from '../../actions/project_action';
import { fetchProjects } from '../../util/project_api_util';
const mapStateToProps = (state, ownProps) => {
    
    return {
        categoryId: ownProps.match.params.categoryId,
        category: state.entities.categories[ownProps.match.params.categoryId],
        projects: Object.values(state.entities.projects)
    }
    
};


const mapDispatchToProps = dispatch => ({
    fetchCategory: categoryId => dispatch(fetchCategory(categoryId)),
    
});

export default connect(mapStateToProps, mapDispatchToProps)(CategoryShow);