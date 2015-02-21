class Hint < ActiveRecord::Base
  belongs_to :question

  validates :hint, presence: true
end
