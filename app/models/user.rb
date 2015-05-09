class User < ActiveRecord::Base

  has_many :stakes
  has_many :tours
  has_many :tournaments
  has_many :comments
  # Investment Relationship
  has_many :investor_relationships, class_name: "Relationship",foreign_key: 'investor_id'
  has_many :investment_relationships, class_name: "Relationship",foreign_key: 'investment_id'
  # End Investment Relationship

# Creating User (Omniauth)
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["name"]
      user.screen_name = auth["info"]["nickname"]
      user.image_url = auth["info"]["image"]
      user.location = auth["info"]["location"]
    end
  end

   def investors
    relationships = self.investment_relationships
    users = []

    relationships.each do |relationship|
      users << relationship.investor_user
    end
    return users
  end

  def investments
    relationships = self.investor_relationships
    users = []

    relationships.each do |relationship|
      users << relationship.investment_user
    end
    return users
  end

end
