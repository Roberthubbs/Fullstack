json.project do 
    json.partial! 'api/projects/project', project: @project 
    
end

json.extract! @project, :steps

