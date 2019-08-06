json.project do 
    json.partial! 'api/projects/project', project: @project 
    
end

json.extract! @project, :steps
json.extract! @project_author, :username
