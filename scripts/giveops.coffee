# Description:
#   Gives ops to ODI bods

ops = [
  "pikesley",
  "davetaz",
  "pezholio"
]

module.exports = (robot) ->
  robot.enter (response) ->
    if response.message.user.name in ops
      robot.adapter.command('MODE', response.message.user.room, '+o', response.message.user.name);
