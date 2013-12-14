# Description:
#   Allows Hubot to roll dice
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot roll - Roll a d20
#   hubot roll <x?>d<y> - roll x dice, each of which has y sides
#   hubot roll dice - Roll two six-sided dice
#
# Author:
#   ab9
#   
# Contributor:
#   jtrinklein

module.exports = (robot) ->
  robot.respond /roll dice/i, (msg) ->
    msg.reply report(roll(2, 6),2,6)

  robot.respond /roll$/i, (msg) ->
    msg.reply report(roll(1, 20),1,20)

  robot.respond /roll (\d+)?d(\d+)/i, (msg) ->
    dice = if msg.match[1] then parseInt(msg.match[1]) else 1
    sides = parseInt msg.match[2]
    answer = if sides < 2
      sides = 3 + Math.floor(Math.random() * 17)
      phrase = if (dice == 1) then "a #{sides} sided die" else "#{sides} sided dice"
      "Instead of that, how about, for fun, I'll roll #{phrase} instead\n" + report(roll(dice,sides),dice,sides)
    else if dice > 100
      "I'm not going to roll more than 100 dice for you."
    else
      report(roll(dice, sides),dice,sides)
    msg.reply answer

report = (results,dice,sides) ->
  if results?
    switch results.length
      when 0
        "I didn't roll any dice."
      when 1
        if (sides == 20 and dice == 1 and results[0] == 1)
          "1, you died..."
        else
          "#{results[0]}."
      else
        total = results.reduce (x, y) -> x + y
        "#{results.join(", ")}\nTotal: #{total}."

roll = (dice, sides) ->
  rollOne(sides) for i in [0...dice]

rollOne = (sides) ->
  1 + Math.floor(Math.random() * sides)
