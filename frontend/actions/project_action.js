import * as ProjectAPIUtil from '../util/project_api_util';

export const RECEIVE_ALL_PROJECTS = "RECEIVE_ALL_PROJECTS";
export const RECEIVE_PROJECT = "RECEIVE_PROJECT";


export const receiveAllProjects = projects => {
    return { type: RECEIVE_ALL_PROJECTS,
            projects }
};
export const receiveProject = project => ({
    type: RECEIVE_PROJECT,
    project
});

export const fetchProject = projectId => dispatch => (
    ProjectAPIUtil.fetchProject(projectId).then(project => dispatch(receiveProject(project)))
);

export const fetchProjects = () => dispatch => {
    return ProjectAPIUtil.fetchProjects().then(projects => dispatch(receiveAllProjects(projects)))

};

export const createProject = project => dispatch => (
    ProjectAPIUtil.createProject(project).then(project => dispatch(receiveProject(project)))
);