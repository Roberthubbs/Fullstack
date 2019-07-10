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

export const createProject = project => (
    $.ajax({
        method: 'POST',
        url: '/api/projects',
        data: { project },
        
    })
);

// export const updateProject = (formData, id) => (
//     $.ajax({
//         method: "PATCH",
//         url: `/api/projects/${id}`,
//         data: { formData },
//         contentType: false,
//         processData: false
//     })
// )
export const updateProject = (project) => (
    $.ajax({
        method: "GET",
        url: `/api/projects/${project.id}/edit`,
        data: { project },
        // contentType: false,
        // processData: false
    })
)

