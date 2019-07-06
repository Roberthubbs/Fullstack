import { fetchProjects } from '../../actions/project_action';
import ProjectIndex from './project_index';
import { connect } from 'react-redux';
const mapStateToProps = (state) => {
    return {
    
        
        projects: Object.values(state.entities.projects)
    }
};

const mapDispatchToProps = dispatch => {
    return {
        receiveAllProjects: () => (dispatch(fetchProjects()))
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(ProjectIndex);