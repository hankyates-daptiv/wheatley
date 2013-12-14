# Description:
#   Allows hubot to answer almost any question by asking Wolfram Alpha
#
# Dependencies:
#   "wolfram": "0.2.2"
#
# Configuration:
#   HUBOT_WOLFRAM_APPID - your AppID
#
# Commands:
#   hubot wolfram/wfa <question> - Searches Wolfram Alpha for the answer to the question
#
# Notes:
#   This may not work with node 0.6.x
#
# Author:
#   dhorrigan

Wolfram = require('wolfram').createClient(process.env.HUBOT_WOLFRAM_APPID)

module.exports = (robot) ->
  robot.respond /(wolfram|wfa) (.*)$/i, (msg) ->
    Wolfram.query msg.match[2], (err,result) ->
      if result and result.length > 0
        value0 = result[0].subpods[0].value
        value1 = result[1].subpods[0].value
        image = result[0].subpods[0].image
        m = value0
        m += " = #{value1}" if value1
        m += "\n#{image}"
        msg.reply m
      else
        msg.reply "Oh. Sorry. Could have... sworn you said something."
