class Item < ActiveRecord::Base
  default_scope :order => 'name'

  has_attached_file :avatar, :styles => { :original => "80x80" }
end
