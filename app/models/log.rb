class Log < ActiveRecord::Base
	belongs_to :wine

	RATINGS = 1..10
  	validates :name, :location, :comments, :tasted_on, :rating, presence: true
  	validates :comments, length: {minimum: 15 }, unless: 'comment.blank?'
  	validates :rating, inclusion: {in: RATINGS, message: "must be from #{RATINGS.first} to #{RATINGS.last}"}

end
