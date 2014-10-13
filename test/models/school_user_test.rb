# == Schema Information
#
# Table name: school_users
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  username         :string(255)
#  password         :string(255)
#  confirm_password :string(255)
#  last_login_date  :datetime
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class SchoolUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
