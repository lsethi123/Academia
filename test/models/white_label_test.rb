# == Schema Information
#
# Table name: white_labels
#
#  id          :integer          not null, primary key
#  school_id   :integer
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class WhiteLabelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
