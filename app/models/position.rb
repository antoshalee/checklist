class Position < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :groupable, polymorphic: true
  belongs_to :positionable, polymorphic: true

  validates :groupable, presence: true
  validates :positionable, presence: true

end
