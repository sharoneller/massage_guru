class Recommendation < ActiveRecord::Base
	has_many :symptoms

	validates :modality, presence: true

	duration = ["30 minutes", "60 minutes", "90 minutes"]

	validates :duration, inclusion: { in: duration }

	frequency = %w(weekly bi-weekly bi-monthly monthly quarterly bi-annual annual)

	validates :frequency, inclusion: { in: frequency}

	pressure = %w(light medium deep)

	validates :pressure, inclusion: { in: pressure}

	validates :description, length: { minimum: 25 }

end
