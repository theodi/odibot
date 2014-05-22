# Description:
#   Ed Balls
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Ed Balls - Ed Balls
#
# Author:
#   @pikesley

module.exports = (robot) ->
  robot.hear /Ed.*Balls/i, (msg) ->
    msg.send "http://i3.kym-cdn.com/photos/images/newsfeed/000/530/356/7a1.jpg"
