class User < ActiveRecord::Base
  has_many :quests, dependent: :destroy
end
