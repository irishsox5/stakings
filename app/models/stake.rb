class Stake < ActiveRecord::Base
  include PublicActivity::Common
  #tracked owner: ->(controller, model) { controller && controller.current_user }

  is_impressionable

  belongs_to :user
  belongs_to :tour
  belongs_to :tournament
end
