class Stake < ActiveRecord::Base
  include PublicActivity::Common
  #tracked owner: ->(controller, model) { controller && controller.current_user }

  validates :tour_id, presence: true
  validates :tournament_id, presence: true

  is_impressionable

  belongs_to :user
  belongs_to :tour
  belongs_to :tournament
end
