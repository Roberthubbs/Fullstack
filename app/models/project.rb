# == Schema Information
#
# Table name: projects
#
#  id              :bigint           not null, primary key
#  description     :string           not null
#  body            :text             not null
#  materials       :text             not null
#  number_of_likes :integer          not null
#  author_id       :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category_id     :integer
#

class Project < ApplicationRecord

    validates :description, :body, :author_id, :number_of_likes, presence: true
    
    has_one_attached :photo

    belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

    belongs_to :category,
        foreign_key: :category_id,
        class_name: :Category

    has_many :steps,
        foreign_key: :project_key,
        class_name: :Step
    # def photo_url
    #     if self.photo.attached?
    #         Rails.application.routes.url_helpers.rails_blob_path(self.photo, only_path: true)
    #     else
    #         nil
    #     end
    # end
end
