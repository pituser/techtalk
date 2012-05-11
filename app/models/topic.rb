class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  
  belongs_to :user
end
