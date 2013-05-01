class Group < ActiveRecord::Base
  attr_accessible :list, :name, :position

  has_one :position, as: :positionable
  has_many :positions, as: :groupable
end
