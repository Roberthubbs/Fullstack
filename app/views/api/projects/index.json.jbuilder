@projects.each do |project|
    project.set! project.id do 
        json.partial! 'project', project: project 
        json.number_of_likes 
    end 
end 