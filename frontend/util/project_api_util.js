export const fetchProject = id => (
    $.ajax({
        method: "GET",
        url: `/api/projects/${id}`
    })
);

export const fetchProjects = () => (
    $.ajax({
        method: 'GET',
        url: `/api/projects`
    })
);

export const createProject = formData => (
    $.ajax({
        method: 'POST',
        url: '/api/projects',
        data: { formData},
        contentType: false,
        processData: false
    })
);