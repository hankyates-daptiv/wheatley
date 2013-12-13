# Description:
#
# Commands:
#   Listens for crudeness and replies appropriately
#
# Author:
#   hank

module.exports = (robot) ->
  robot.hear /.*(bed|hard|force|deep).*/i, (msg) ->
    msg.send "That's what she said..."
