import ProjectShow from './project_show';
import { connect } from 'react-redux';
import { fetchProject, deleteProject } from '../../actions/project_action';
const mapStateToProps = (state, ownProps) => {
    return{  
        projectId: ownProps.match.params.projectId,
        project: state.entities.projects[ownProps.match.params.projectId],
        steps: Object.values(state.entities.steps),
        current_user: state.session.id
      }
};


const mapDispatchToProps = dispatch => ({
    fetchProject: projectId => dispatch(fetchProject(projectId)),
    deleteProject: id => dispatch((deleteProject(id)))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);