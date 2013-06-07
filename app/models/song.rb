class Song < ActiveRecord::Base
  attr_accessible :title

  has_many :recordings, class_name: 'Track'
end
