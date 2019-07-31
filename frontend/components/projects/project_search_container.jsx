import { fetchProjects } from '../../actions/project_action';
import ProjectSearchIndex from './project_search_index';
import { connect } from 'react-redux';
import { fetchCategories } from '../../actions/category_actions'


const mapStateToProps = (state) => {
    return {

        // categories: Object.values(state.entities.categories),
        projects: Object.values(state.entities.projects) 
        
    }
};

const mapDispatchToProps = dispatch => {
    return {
        receiveAllProjects: (string) => (dispatch(fetchProjects(string))),
        // receiveAllCategories: () => (dispatch(fetchCategories()))
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(ProjectSearchIndex);