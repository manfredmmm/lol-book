class Play < ActiveRecord::Base
  belongs_to :user
  has_one :champion
  has_and_belongs_to_many :items
end
