# -*- encoding : utf-8 -*-
class Record < ActiveRecord::Base
  attr_accessible :content
  belongs_to :list

  validates :content, presence: true
end
