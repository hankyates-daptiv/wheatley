# Description:
#   When things aren't going well, you must flip it. (╯°□°）╯︵ ʇoqnɥ
#
# Dependencies:
#   "flip": "~0.1.0"
#
# Commands:
#   hubot flip <text> - express your anger
#   hubot rage flip <text> - express your anger with rage
#   hubot unflip <text>
#
# Authors:
#   jergason
#   spajus

flip = require 'flip'

module.exports = (robot) ->

  robot.hear /(rage)?\s?flip\s?(.*)?$/i, (msg) ->
    doflip msg

  robot.respond /(rage)?(\s|^)flip\s?(.*)?$/i, (msg) ->
    doflip msg

  doflip = (msg) ->
    if msg.match[1] == 'rage'
      guy = '(ノಠ益ಠ)ノ彡'
    else
      guy = '(╯°□°）╯︵'

    toFlip = (msg.match[3] || '').trim()

    if toFlip == 'me'
      toFlip = msg.message.user.name

    if toFlip == ''
      flipped = '┻━┻'
    else
      flipped = flip(toFlip)

    msg.send "#{guy} #{flipped}"


  robot.hear /unflip\s?(.*)?$/i, (msg) ->
    dounflip msg

  robot.respond /unflip\s?(.*)?$/i, (msg) ->
    dounflip msg

  dounflip = (msg) ->
    toUnflip = (msg.match[1] || '').trim()

    if toUnflip == 'me'
      unflipped = msg.message.user.name
    else if toUnflip == ''
      unflipped = '┬──┬'
    else
      unflipped = flip(toUnflip)

    msg.send "#{unflipped} ノ( º _ ºノ)"

