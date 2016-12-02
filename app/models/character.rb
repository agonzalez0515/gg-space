class Character < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :name

  has_many :quotes
end
