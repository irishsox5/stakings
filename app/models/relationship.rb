class Relationship < ActiveRecord::Base

  belongs_to :investor_user, class_name: "User", foreign_key: 'investor_id'
  belongs_to :investment_user, class_name: "User", foreign_key:'investment_id'

  validates :investor_id, presence: true
  validates :investment_id, presence: true
end
