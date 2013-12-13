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
       "http://31.media.tumblr.com/0f2d6af2e107621221855f2356962194/tumblr_mx06b2etSt1qccu1oo2_500.gif"
    ]
    
    msg.send  wheatley_img[Math.floor(Math.random()*wheatley_img.length)] + "\n oh ... uh. hello there."

  robot.hear /panic$/i, (msg) ->
    msg.send "http://24.media.tumblr.com/58eed93435ea93cf21b98b75c6386fb6/tumblr_mwx1x2w6Te1r89838o6_r2_250.gif"
