class Note < ActiveRecord::Base
  attr_accessible :author_id, :body, :track_id

  belongs_to :track
  # belongs_to :author
  
end
