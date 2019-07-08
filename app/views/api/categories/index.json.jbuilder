@categories.each do |category|
        json.set! category.id do  
            json.extract! category, :id, :name, :description
        end
end
# json.array! @categories do |category|
#     json.name category.name 
#     json.description category.description 
#     json.projects category.projects
#     json.id category.id
# end