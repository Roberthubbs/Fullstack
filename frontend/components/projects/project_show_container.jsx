import ProjectShow from './project_show';
import { connect } from 'react-redux';
import { fetchProject, deleteProject, updateProject } from '../../actions/project_action';
const mapStateToProps = (state, ownProps) => {
    // debugger
    return{  
        projectId: ownProps.match.params.projectId,
        project: state.entities.projects[ownProps.match.params.projectId],
        steps: Object.values(state.entities.steps),
        current_user: state.session.id,
        authorname: state.entities.users.authorname,
        
      }
};


const mapDispatchToProps = dispatch => ({
    fetchProject: projectId => dispatch(fetchProject(projectId)),
    deleteProject: id => dispatch((deleteProject(id))),
    updateLikes: likes => dispatch((updateProject(id)))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);