# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  camper_id  :integer          not null
#
# Indexes
#
#  index_reports_on_camper_id  (camper_id)
#
# Foreign Keys
#
#  camper_id  (camper_id => campers.id)
#
require "test_helper"

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
