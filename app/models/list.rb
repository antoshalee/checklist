class List < ActiveRecord::Base
  attr_accessible :name, :records_attributes
  has_many :records
  accepts_nested_attributes_for :records, allow_destroy: true
end
