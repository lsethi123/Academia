# == Schema Information
#
# Table name: schools
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  address          :string(255)
#  city             :string(255)
#  state            :string(255)
#  zipcode          :string(255)
#  phone            :string(255)
#  website          :string(255)
#  email            :string(255)
#  parent_school_id :integer
#  archived         :boolean
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
