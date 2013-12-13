# Description:
#
# Commands:
#   Listens for stuff and replies appropriately
#
# Author:
#   hank


module.exports = (robot) ->
  robot.hear /(morning|mornin|hi wheatley|hey wheatley)$/i, (msg) ->
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
    msg.send  wheatley_img[Math.floor(Math.random()*wheatley_img.length)] + "\n oh ... uh. hello there."

  robot.hear /(derp|whoops|oops|dammit|shit|ugh|bad)$/i, (msg) ->
    wheatley_img = [
      "http://cdn.memegenerator.net/instances/400x/29086847.jpg",
      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRsZ3jG7yl-fXEBjjm2ROj2XGySdHsP4na8aBwuPj-mW8UfC9Jo",
      "http://i.imgur.com/iByosOp.png",
      "http://img0.etsystatic.com/il_570xN.243115620.jpg",
      "http://cdn.memegenerator.net/instances/250x250/43232276.jpg"
    ]
    msg.send wheatley_img[Math.floor(Math.random()*wheatley_img.length)]

  robot.hear /(panic)$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/b4e203c894237b2721a8a21f63a3ca2a/tumblr_mmagd8rjY61rmn5y0o2_250.gif"

  robot.hear /(hack)$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/tumblr_menza20uFb1rkxa08o1_500.gif"

  robot.hear /bird$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/0ba7edfcaec59f6681153293d7104870/tumblr_mqp72vmCEv1rix2dqo1_250.gif"

  robot.hear /(love|like|good)$/i, (msg) ->
    msg.send "http://25.media.tumblr.com/5809ba7fb5c2268a85b21e67b3e1dae4/tumblr_mi7sri4uSj1rgndfmo1_500.gif"
