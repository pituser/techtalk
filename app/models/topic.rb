class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
end
