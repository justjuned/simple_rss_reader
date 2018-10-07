module RSS
	module BaseHelper

		def make_request!
			response = Nokogiri::XML(url)
		end

		def extract_items(response)
			response.try(:css, 'item').each do |data|
				url = data.at('link').text
				title = data.at('title').text
				p_date = data.at('pubDate').text

				yield(url: url, title: title, published_date: p_date) if block_given?
			end
		end
	end
end