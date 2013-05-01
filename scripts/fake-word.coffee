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
#   fake word me - <FAKE WORDS>
#
# Author:
#   @pezholio

module.exports = (robot) ->
  robot.respond /(gimme|give me) (\d+|a) fake word(s)?/i, (msg) ->
    msg.http('http://www.wordgenerator.net/application/p.php?id=fake_words&type=50&spaceflag=false').get() (err, res, body) ->
      words = body.split(',')
      console.log(msg.match)
      if msg.match[2] == "a"
        fakeWord(msg, words)
      else    
        for [1..msg.match[2]]
          fakeWord(msg, words)

fakeWord = (msg, words) ->
  word = words[Math.floor(Math.random()*words.length)]
  if word.length > 0
    msg.send word
  else 
    fakeWord(msg, words)