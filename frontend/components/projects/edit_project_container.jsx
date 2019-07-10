import { connect } from 'react-redux';
import EditProjectForm from './edit_project_form';
import { updateProject } from '../../actions/project_action';

const mapStateToProps =  (state, ownProps)  => ({
    project: state.entities.projects[ownProps.match.params.projectId],
    clicked: false,
    


    formType: 'Create New Project'
});

const mapDispatchToProps = dispatch => ({
    updateProject: (formData) => dispatch(updateProject(formData))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProjectForm)