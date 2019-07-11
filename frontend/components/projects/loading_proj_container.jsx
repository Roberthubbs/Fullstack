import { connect } from 'react-redux';
import { fetchProject, fetchProjects } from '../../actions/project_action';
import LoadingProjectForm from './loading_proj_form'
const mapStateToProps = (state) => {
 
   const projects = Object.values(state.entities.projects)
   
    return {
        project: projects[projects.length-1],
        projects: projects
        // project: Object.values(state.entities.projects[0])
        // projectId: project.id
    }
};


const mapDispatchToProps = dispatch => ({
    // fetchProject: projectId => dispatch(fetchProject(projectId))
    fetchProjects: () => dispatch(fetchProjects())
});

export default connect(mapStateToProps, mapDispatchToProps)(LoadingProjectForm)