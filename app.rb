require 'bundler'
Bundler.require

get '/' do
  return {
    :name => 'cutest animals',
    :message => 'Info about cute animals'
  }.to_json
end

get '/squirrel' do
  squirrel = {
    :name => 'squirrel',
    :cuteness => '10',
    :habitat => 'forests, urban areas, everywhere',
    :picture_url => 'http://curiousanimals.net/wp-content/uploads/2008/08/squirrel.jpg',
    :description => 'The squirrel is a really cute rodent that has a bushy tail'
  }
  squirrel_json = squirrel.to_json
  return squirrel_json
end

get '/sasha' do
  return {
    :name => 'Sasha',
    :cuteness => '10,000,000,000',
    :habitat => 'Roger\s and Carrie\s house, parks',
    :picture_url => 'http://i.imgur.com/3Nd0hX6.jpg',
    :description => 'Sasha is the best dog in the world.'
  }.to_json
end

get '/sea_lion' do
  return {
    :name => 'sea lion',
    :cuteness => '8',
    :habitat => 'water',
    :picture_url => 'http://www.oceanadventure.com.ph/wp-content/uploads/2013/03/sea-lion-14.jpg',
    :description => 'Sea lions are sea mammals with external ear flaps and other cute characteristics'
  }.to_json
end

get '/baby_tiger' do
  return {
    :name => 'baby tiger',
    :cuteness => '8.5',
    :habitat => 'swamps, grasslands, and rain forests',
    :picture_url => 'https://s-media-cache-ak0.pinimg.com/236x/1f/fc/08/1ffc08a8a092106424fb983456b5aef5.jpg',
    :description => 'TIgers are the largest species of cat.  Baby tigers are not that large, however.'
  }.to_json
end

get '/goat' do
  return {
    :name => 'goat',
    :cuteness => '10',
    :habitat => 'Goats can survive and thrive anywhere',
    :picture_url => 'https://i.ytimg.com/vi/Qfu7YS_vz4A/hqdefault.jpg',
    :description => 'Goats are one of the oldest domesticated species and are cute'
  }.to_json
end

get '/json_test.erb' do
   erb :json_test
end
