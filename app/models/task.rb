class Task < ActiveRecord::Base

  STATUSES = %w(backlog todo in_progress to_verify done)

  attr_accessible :estimate, :name, :status

  validates :name, :presence => true
  validates :estimate, :presence => true, :numericality => { :only_integer => true,
                                                             :greater_than_or_equal_to => 0 }
  validates :status, :presence => true, :inclusion => { :in => STATUSES }

  class << self
    def statuses
      STATUSES
    end
  end

end
