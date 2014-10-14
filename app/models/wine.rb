class Wine < ActiveRecord::Base

	has_many :logs, dependent: :destroy
	VARIETAL = ['Merlot', 'Cabernet', 'Pino Noir']
	validates :name, :year, :country, :winery, presence: true

	validates :varietal, inclusion: {in: VARIETAL, message: "must be from #{VARIETAL.first} to #{VARIETAL.last}"}

	validates :year,
		numericality: {only_integer: true, greater_than_or_equal_to: 0},
		if: "year.present?"


end
