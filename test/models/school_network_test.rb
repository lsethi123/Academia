# == Schema Information
#
# Table name: school_networks
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  network_id :integer
#  archived   :boolean
#  created_at :datetime
#  updated_at :datetime
#  role       :string(255)
#

require 'test_helper'

class SchoolNetworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
