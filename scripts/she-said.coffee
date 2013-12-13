# Description:
#
# Commands:
#   Listens for crudeness and replies appropriately
#
# Author:
#   hank

module.exports = (robot) ->
  robot.hear /(bed|hard|in|force|deep)/i, (msg) ->
    if !(msg.message.text.match(/commit\//))
      msg.send "That's what she said..."
