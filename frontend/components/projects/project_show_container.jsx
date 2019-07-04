import ProjectShow from './project_show';
import { connect } from 'react-redux';
import { fetchProject } from '../../actions/project_action';
const mapStateToProps = (state, ownProps) => ({
    projectId: ownProps.match.params.projectId,
    project: state.entities.projects[ownProps.match.params.projectId]
});


const mapDispatchToProps = dispatch => ({
    fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);