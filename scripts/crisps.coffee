# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   dispense crisps - nope
#
# Author:
#   @pikesley

module.exports = (robot) ->
  robot.respond /dispense (.*)/i, (msg) ->
    msg.send "Get your own damn #{msg.match[1]}, yo"
