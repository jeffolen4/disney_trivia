class Hint < ActiveRecord::Base
  belongs_to :question

  validates_presence_of :hint
end
