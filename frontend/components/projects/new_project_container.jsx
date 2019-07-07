import { connect } from 'react-redux';
import NewProjectForm from './new_project_form';
import { receiveProject } from '../../actions/project_action';

const mapStateToProps =  state  => ({
    project: state.entities.project,
    formType: 'Create New Project'
});

const mapDispatchToProps = dispatch => ({
    createNewProject: (formData) => dispatch(receiveProject(formData))
});

export default connect(mapStateToProps, mapDispatchToProps)(NewProjectForm)