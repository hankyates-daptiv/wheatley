# Description:
#
# Commands:
#   Listens for stuff and replies appropriately
#
# Author:
#   hank


module.exports = (robot) ->
  robot.hear /(careful|care)$/i, (msg) ->
    wheatley_img = [
      "http://25.media.tumblr.com/9ee555d19958d6fa8387c175bc993ab3/tumblr_mwpeg8urRS1rmehxxo1_500.png"
    ]
    msg.reply wheatley_img[Math.floor(Math.random()*wheatley_img.length)]

  robot.hear /(morning|mornin|hi wheatley|hey wheatley| hi | hey )$/i, (msg) ->
    wheatley_img = [
       "http://media.tumblr.com/tumblr_maf0f5TxkQ1rrzlrq.gif",
       "http://24.media.tumblr.com/b02cc25ede2ca39d2a8a1518923bfac6/tumblr_mwcpfmWvQm1qcb7k0o1_400.gif",
       "http://25.media.tumblr.com/tumblr_m6lzgktk4u1qhbnv4o1_r4_500.gif",
       "http://25.media.tumblr.com/46e673055f93b929887da72c92a4b630/tumblr_mx06b2etSt1qccu1oo1_500.gif",
       "http://31.media.tumblr.com/50c5c0ce29f3eee12a11e5e184fb376d/tumblr_mx06b2etSt1qccu1oo5_250.gif",
       "http://24.media.tumblr.com/a2120cd8d3deae0f8bec042644873877/tumblr_mx06b2etSt1qccu1oo4_250.gif",
       "http://media.tumblr.com/tumblr_maf0f5TxkQ1rrzlrq.gif",
       "http://25.media.tumblr.com/3f6cdf635caf86fa1bd56ba19421434e/tumblr_mifspd6EnJ1rgndfmo1_400.gif",
       "http://31.media.tumblr.com/0f2d6af2e107621221855f2356962194/tumblr_mx06b2etSt1qccu1oo2_500.gif"
    ]
    msg.reply wheatley_img[Math.floor(Math.random()*wheatley_img.length)] + "\n AH! Oh. My. God. You look terribl-- ummm... good. Looking good, actually."

  robot.hear /(derp|whoops|oops|dammit|shit|ugh|bad)$/i, (msg) ->
    wheatley_img = [
      "http://cdn.memegenerator.net/instances/400x/29086847.jpg",
      "http://24.media.tumblr.com/d8c9f5b77fe17207fbdb890473fa4ab0/tumblr_mvz24rtGhE1r3r8efo1_500.gif",
      "http://31.media.tumblr.com/tumblr_mcmk1eSzm91rycsdto1_500.gif",
      "http://24.media.tumblr.com/tumblr_m4v8dwBmC11rwbligo1_500.jpg",
      "http://i.imgur.com/iByosOp.png",
      "http://img0.etsystatic.com/il_570xN.243115620.jpg",
      "http://25.media.tumblr.com/tumblr_m4cjfpzI2v1qhbnv4o2_r3_500.gif",
      "http://cdn.memegenerator.net/instances/250x250/43232276.jpg"
    ]
    msg.send wheatley_img[Math.floor(Math.random()*wheatley_img.length)]

  robot.hear /(panic)$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/b4e203c894237b2721a8a21f63a3ca2a/tumblr_mmagd8rjY61rmn5y0o2_250.gif"

  robot.hear /(hack)$/i, (msg) ->
    wheatley_img = [
      "http://25.media.tumblr.com/4bd69414bcd678cfd7333ec95cf55dac/tumblr_mw49qjR7G01r3r8efo1_500.gif",
      "http://24.media.tumblr.com/44258bdf8e4e2b857cafb69097bacd67/tumblr_mw49qjR7G01r3r8efo4_500.gif",
      "http://25.media.tumblr.com/tumblr_menza20uFb1rkxa08o1_500.gif"
    ]
    msg.send wheatley_img[Math.floor(Math.random()*wheatley_img.length)]

  robot.hear /(lol|haha)$/i, (msg) ->
    wheatley_img = [
      "http://31.media.tumblr.com/50c5c0ce29f3eee12a11e5e184fb376d/tumblr_mx06b2etSt1qccu1oo5_250.gif"
    ]
    msg.send wheatley_img[Math.floor(Math.random()*wheatley_img.length)] + "\n hah!"

  robot.hear /(crazy|insane)$/i, (msg) ->
    msg.send "http://24.media.tumblr.com/3a0db8d8290775e7b832a9d00dbcf8ae/tumblr_mvz24rtGhE1r3r8efo3_500.gif"

  robot.hear /bird$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/0ba7edfcaec59f6681153293d7104870/tumblr_mqp72vmCEv1rix2dqo1_250.gif"

  robot.hear /(love|like|good)$/i, (msg) ->
    wheatley_img = [
      "http://th06.deviantart.net/fs71/200H/i/2011/110/d/e/wheatley__portal_2_by_littlemeesh-d3eh5w0.png",
      "http://25.media.tumblr.com/5809ba7fb5c2268a85b21e67b3e1dae4/tumblr_mi7sri4uSj1rgndfmo1_500.gif"
    ]
    msg.send wheatley_img[Math.floor(Math.random()*wheatley_img.length)]
