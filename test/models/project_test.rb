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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
