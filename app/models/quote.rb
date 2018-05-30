class Quote
	require 'csv'

	def self.fetch_random
		csv = CSV.open("#{Rails.root}/lib/quotes.csv", headers: true)
		lines = csv.readlines
		lines[rand(lines.size)]
	end
end
