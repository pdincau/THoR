class Task < ActiveRecord::Base
  attr_accessible :estimate, :name

  validates :name, :presence => true
  validates :estimate, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
end
