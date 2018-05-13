require 'sinatra/base'
require "json"
require 'faker'

class Leaderboard < Sinatra::Base
  get '/' do
    times = REDIS.get("times") || "[]"
    @times = JSON.parse(times).sort_by { |time| time['time'] }
    erb :leaderboard
  end

  post '/times' do
    REDIS.set("times", []) unless REDIS.get("times")

    person_with_time = { name: "#{Faker::Color.color_name.capitalize} #{Faker::Pokemon.name}", time: params['time'] }
    all_times = JSON.parse(REDIS.get("times")) + [person_with_time]

    REDIS.set("times", all_times.to_json)
  end

  run! if app_file == $0
end