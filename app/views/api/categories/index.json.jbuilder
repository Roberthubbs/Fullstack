# @categories.each do |category|
#         json.set! category.id do  
#             category.extract! category, :id, :name, :description
#         end
# end
json.array! @categories do |category|
    json.name category.name 
    json.description category.description 
end