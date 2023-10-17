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
class Report < ApplicationRecord
  belongs_to :camper
  validates :body, presence: true

  scope :most_recent, -> { order(created_at: :desc) }
  scope :in_last_month, -> { where('created_at > ?', 31.days.ago) }

  def deletable?
    created_at > 5.minutes.ago
  end

  def minutes_left_to_delete
    (((created_at + 5.minutes) - Time.now) / 60).round
  end

end
