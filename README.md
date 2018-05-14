# Drills Leaderboard

A leaderboard for the [drills](https://github.com/sjmog/drills).

## Getting Started

You'll need Redis and a .env with a REDIS_URL set. Then `bundle` and `rackup` to run locally.

You can view the leaderboard live on Heroku [here](https://drills-leaderboard.herokuapp.com/).

## Pushing to Heroku

1. Get added as a collaborator on Heroku.
2. Use the Heroku CLI to push to Heroku. Probably `git push heroku master`.

> Redis is all set up to use the `REDIS_URL` environment variable on Heroku.