require_relative "./app"
require "redis"
require "dotenv"

Dotenv.load
REDIS = Redis.new(url: ENV['REDIS_URL'])
run Leaderboard