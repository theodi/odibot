# Description:
#   Nokogiri
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Nokogiri
#
# Author:
#   @pikesley

module.exports = (robot) ->
  robot.hear /nokogiri/i, (msg) ->
    msg.send "http://farm8.staticflickr.com/7289/11501249045_390b515621_o.png"
