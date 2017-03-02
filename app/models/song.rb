class Song < ActiveRecord::Base
	validates :title, presence: true
	# validate :title
	validates :release_year, numericality: { less_than_or_equal_to: Time.current.year}
	validates :artist_name, presence: true

	# def title
	# 	if title && !Song.find(title: title, artist: artist, release_year: release_year)
	# 		errors.add(:title, "Song already exists!")
	# 		return false
	# 	else
	# 		return true
	# 	end
	# end

	def is_released?
		if released == true
			return true
		else
			errors.add(:released, "Please mark the song as 'released'")
			return false
		end
	end



end

