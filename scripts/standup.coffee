TIMEZONE = "Europe/London"
DAILY_STANDUP = '0 58 09 * * 1-5' 
ROOM = "#theodi"

cronJob = require('cron').CronJob

module.exports = (robot) ->
        standup = new cronJob DAILY_STANDUP,
                ->
                        robot.messageRoom ROOM, "Nearly standup time! Here's the hangout URL: #{process.env.HUBOT_HANGOUT_URL}"
                null
                true
                TIMEZONE
