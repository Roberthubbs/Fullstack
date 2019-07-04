# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 
    guestUser = User.create(username: "DemoUser", password: "Password")


    Project.destroy_all
    makingLuresOneOOne = Project.create(description: "Making good all-purpose lures", body: "This is going to contain a lengthy post about making lures exactly
    how you want to make them", materials: "twine, beads, fishingline, hooks", number_of_likes: 3, author_id: 12)
end