class Question < ActiveRecord::Base
  has_many :answers, :dependent => :delete_all
  has_many :hints, :dependent => :delete_all

  validates :question, presence: true

  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :hints
end
