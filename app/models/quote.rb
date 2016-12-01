class Quote < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :quote
  validates_presence_of :character

end
