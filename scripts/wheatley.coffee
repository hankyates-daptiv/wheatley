module.exports = (robot) ->
  robot.respond /hi$/i, (msg) ->
    msg.send "http://24.media.tumblr.com/b02cc25ede2ca39d2a8a1518923bfac6/tumblr_mwcpfmWvQm1qcb7k0o1_400.gif"

  robot.respond /panic$/i, (msg) ->
    msg.send "http://i1.theportalwiki.net/img/a/a6/Wheatley_a1_wakeup_pinchergrab02.wav"
