class Record < ActiveRecord::Base
  attr_accessible :content
  belongs_to :list
end
