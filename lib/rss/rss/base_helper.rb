module RSS
	module BaseHelper

		def make_request!
			response = Nokogiri::XML(url)
		end

		def extract_item(response)
			response.try(:css, 'item').each do |data|
				title = data.at("title").text
				published = data.at("pubDate").text

				yield(title, published) if block_given?
			end
		end
	end
end