class Symptom < ActiveRecord::Base
  belongs_to :recommendation

  validates :name, presence: true

  severity = [1,2,3,4,5,6,7,8,9,10]

  validates :severity, inclusion: {
  	in: severity,
  	message: "must be between 1 and 10"
  }
end