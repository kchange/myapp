# require 'csv'
class QuotesController < ApplicationController

	def show
		# csv = CSV.open("#{Rails.root}/lib/quotes.csv", headers: true)
		# lines = csv.readlines
		# @random_quote = lines[rand(lines.size)]

		@random_quote = Quote.fetch_random

 		respond_to do |format|
      format.html { @random_quote }
      format.json { render json: @random_quote }
      format.xml do 
      	render xml: { quote: @random_quote[0], author: @random_quote[1] }.to_xml 
      end
    end
	end
end
