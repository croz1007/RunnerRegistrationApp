class Runner < ActiveRecord::Base

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :gender, presence: true
  validates :age, presence: true

end
