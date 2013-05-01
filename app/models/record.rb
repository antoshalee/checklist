# -*- encoding : utf-8 -*-
class Record < ActiveRecord::Base
  attr_accessible :content
  #belongs_to :list
  has_one :position, as: :positionable

  validates :content, presence: true
end
