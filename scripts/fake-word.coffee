# Description:
#   Got a project in need of a name? Starting a band? What you need is a name. Enter Hubot and www.wordgenerator.net
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   fake word me - <FAKE WORD>
#
# Author:
#   @pezholio

module.exports = (robot) ->
  robot.respond /fake word me/i, (msg) ->
    msg.http('http://www.wordgenerator.net/application/p.php?id=fake_words&type=50&spaceflag=false').get() (err, res, body) ->
      words = body.split(',')
      word = words[Math.floor(Math.random()*words.length)]
      msg.send word