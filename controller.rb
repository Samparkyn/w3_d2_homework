require('sinatra')
require('sinatra/contrib/all')
require('json')

require_relative('./models/word_formatter')

get '/' do
  @name = 'Sam Parkyn'
  @age = 'Age : 24 -> Date of Birth : 31.10.91'
  @about = 'Hobbies -> I enjoy horse riding, tennis and skiing :)'
  erb(:aboutme)
end

get '/sam' do
  erb(:samhome)
end

get '/address' do
content_type(:json)
address = {
  address: '3 ARGYLE HOUSE',
  building: 'CODEBASE',
  postcode: 'e13 zqf',
  phone: '0131558030'
}
postcode_format = WordFormatter.new(address[:postcode])
address[:postcode] = postcode_format.postcode_upcase
address.to_json()
end


