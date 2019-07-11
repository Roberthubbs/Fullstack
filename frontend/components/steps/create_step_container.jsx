import CreateStepForm from './create_step_form';
import { connect } from 'react-redux';
import { createStep } from '../../actions/step_actions';
import {fetchProject} from '../../actions/project_action';
const mapStateToProps = (state, ownParams) => {
   
    return {
        projectId: ownParams.match.params.projectId,
        project: state.entities.projects[ownParams.match.params.projectId],
    }
};


const mapDispatchToProps = dispatch => ({
    createStep: projectId => dispatch(createStep(projectId)),
    fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default connect(mapStateToProps, mapDispatchToProps)(CreateStepForm);