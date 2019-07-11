# json.category do 
#     json.extract! @category, :id, :name, :description
# end
json.category do 
    json.set! @category.id do
        json.extract! @category, :name, :description
    end
end


json.projects @category.projects.each do |project|
        
        json.extract! project, :id, :description, :materials, :steps
    if project.photo.attached? 
        json.photo url_for(project.photo)
    end
    
end 