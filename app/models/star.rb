class Star < ActiveRecord::Base
  attr_accessible :birthdate, :city, :first_name, :last_name, :state
  validates :state, :length => { :maximum => 2 }

  has_many :movies

  def full_name
    first_name + ' ' + last_name
  end
end
