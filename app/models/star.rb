class Star < ActiveRecord::Base
  attr_accessible :birthdate, :city, :first_name, :last_name, :state

  def full_name
    first_name + ' ' + last_name
  end
end
