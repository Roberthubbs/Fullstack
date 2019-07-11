import { connect } from 'react-redux';
import NewProjectForm from './new_project_form';
import { createProject } from '../../actions/project_action';

const mapStateToProps = state => ({
    project : {
        description: "",
        materials: ""
    },
    currentUser: state.session.id
})




const mapDispatchToProps = dispatch => ({
    createProject: project => dispatch(createProject(project))
});

export default connect(mapStateToProps, mapDispatchToProps)(NewProjectForm);