# == Schema Information
#
# Table name: school_classes
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  name       :string(255)
#  subject    :string(255)
#  size       :integer
#  start_date :datetime
#  end_date   :datetime
#  archived   :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SchoolClassTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
