# Description:
#   Arsebees
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Never forget
#
# Author:
#   @pezholio

module.exports = (robot) ->
  robot.hear /arsebees/i, (msg) ->
    msg.send "https://i.imgflip.com/ch87k.jpg"
