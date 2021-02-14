class Concert < ApplicationRecord
       belongs_to :group
       
       validates :name, presence: true
       validates :duration, presence: true
       validates :audience, presence: true
       validates :event_date, presence: true


       scope :last_concerts, -> (group) {where(group_id: group.id, event_date: Time.now.beginning_of_month.. Time.now.end_of_month).order(event_date: :desc)}
       scope :max_audience, -> (group) {where(group_id: group.id).order(audience: :desc)}
       scope :max_duration, -> (group) {where(group_id: group.id).order(duration: :desc)}
end
