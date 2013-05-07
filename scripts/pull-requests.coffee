ROOM = "#theodi"

module.exports = (robot) ->

  robot.router.post "/hubot/pull-requests", (req, res) ->
    res.end('')
    try
      robot.messageRoom ROOM, "Peep peep! Incoming pull request! '#{req.body.title}' on repo #{req.body.repo} at #{req.body.url}"
    catch error
      console.log "pull-requests error: #{error}. Data: #{req.body}"