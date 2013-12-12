module.exports = (robot) ->
  robot.respond /KILL hector$/i, (msg) ->
    msg.send "!exit"

