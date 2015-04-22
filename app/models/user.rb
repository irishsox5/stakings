class User < ActiveRecord::Base

    def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["name"]
      user.screen_name = auth["info"]["nickname"]
      user.image_url = auth["info"]["image"]
      user.location = auth["info"]["location"]
      # user = User.find(1)
      # user.add_role :user
    end
  end
end
