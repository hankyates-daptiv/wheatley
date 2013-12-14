# Description:
#  Listens for "hangout" keyword and sends Google Hangout url. Saves a couple minutes in our office.
#
# Configuration:
#   HUBOT_HANGOUT_URL
#
# Commands:
#   hubot hangout - sends hangout url
#
# Dependencies:
#   child_process
#   
# Notes:
#  To generate a static Hangout URL, create a Google+ event sometime in the future
#  @ https://plus.google.com/events
#
# Author:
#   nicoritschel
#   
# Contributors:
#   jtrinklein
exec = require('child_process').exec

module.exports = (robot) ->
  robot.respond /hangout\s?(.*)?/i, (msg) ->
    if process.env.HUBOT_HANGOUT_URL
      msg.reply process.env.HUBOT_HANGOUT_URL
    else
      nomsg = "Okay, I'm gonna lay my cards on the table: I don't wanna do it."
      cookie = process.env.HUBOT_GOOGLE_COOKIE
      command = "curl -s -b '#{cookie}' 'https://plus.google.com:443/hangouts/_' | sed -ne '/window.location.href =/s/.*\\(https.*\\)\";/\\1/p'"
      console.log(command)
      if cookie
        exec command, (err,sout,serr) ->
          console.log(sout)
          console.log(serr)
          if err or sout.length == 0
            msg.reply nomsg
          else
            msg.reply "Okay. Alright. So, I've got an idea. But it is bloody dangerous. Here we go...\n#{sout}"
      else
        msg.reply nomsg

