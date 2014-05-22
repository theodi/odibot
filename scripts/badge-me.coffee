# Description:
#   Achievement Badge Generator 
#
# Commands:
#   hubot badge me <thing> | <score> 

module.exports = (robot) ->
  robot.respond /badge me (.*)_(.*)/i, (msg) ->
    achievement = encodeURIComponent msg.match[1]
    score = encodeURIComponent msg.match[2]
#    url = "http://img.shields.io/#{achievement}/#{score}.png?color=green"
    url = "http://b.adge.me/:#{achievement}-#{score}-green.svg"
    msg.send url
