import { fetchProjects } from '../../actions/project_action';
import ProjectIndex from './project_index';
import { connect } from 'react-redux';
import { fetchCategories } from '../../actions/category_actions'
const mapStateToProps = (state) => {
    return {
    
        categories: Object.values(state.entities.categories),
        projects: Object.values(state.entities.projects),
        currentUser: state.session.id || null
    }
};

const mapDispatchToProps = dispatch => {
    return {
        receiveAllProjects: () => (dispatch(fetchProjects())),
        receiveAllCategories: () => (dispatch(fetchCategories()))
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(ProjectIndex);