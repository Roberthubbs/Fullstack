import { receiveAllProjects } from '../../actions/project_action';
import ProjectIndex from './project_index';
import { connect } from 'react-redux';
const mapStateToProps = (state) => {
    return {
        projects:state.entities.projects
    }
};

const mapDispatchToProps = dispatch => {
    return {
        receiveAllProjects: () => (dispatch(receiveAllProjects()))
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(ProjectIndex);