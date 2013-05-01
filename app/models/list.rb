# -*- encoding : utf-8 -*-
class List < ActiveRecord::Base
  attr_accessible :name, :records_attributes, :positions_attributes

  has_many :positions, as: :groupable
  has_many :groups, through: :positions, :source => :positionable, :source_type => 'Group'
  has_many :records, through: :positions, :source => :positionable, :source_type => 'Record'
  #has_many :groups, through: :positions
  #has_many :records, through: :positions

  accepts_nested_attributes_for :positions
  #accepts_nested_attributes_for :records, allow_destroy: true, reject_if: proc { |r| r['content'].blank? }

  validates :name, presence: true

  #after_initialize :default_empty_records

  private

  def default_empty_records
    if new_record? && records.count == 0
      2.times do
        records << Record.new
      end
    end

  end
end
