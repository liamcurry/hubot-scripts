# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   ^5 - Shows a picture of an epic high five
#
# Author:
#   Liam Curry

images =
  highfive: [
    'http://i.imgur.com/fiZtK.gif'
    'http://i.imgur.com/ks0lE.gif'
    'http://i.imgur.com/JsG2b.gif'
    'http://i.imgur.com/omiv4.gif'
    'http://i.imgur.com/LBtIS.gif'
  ]
  nu: [
    'http://i.imgur.com/otHa1.jpg'
    'http://i.imgur.com/W5OXM.png'
    'http://i.imgur.com/J7WvS.gif'
  ]
  hahano: [
    'http://i.imgur.com/SgZo2.gif'
    'http://i.imgur.com/aV5Ex.gif'
  ]
  gay: [
    'http://goo.gl/9bmJQ'
  ]

getImg = (msg, key) ->
  msg.send msg.random images[key]

module.exports = (robot) ->

  robot.hear /(^|\W)\^5(\z|\W|$)/i, (msg) ->
    getImg msg, 'highfive'

  robot.hear /(^|\W)no u(\z|\W|$)/i, (msg) ->
    getImg msg, 'nu'

  robot.hear /(^|\W)n u(\z|\W|$)/i, (msg) ->
    getImg msg, 'nu'

  robot.hear /haha lol/i, (msg) ->
    getImg msg, 'hahano'

  robot.hear /lol :\)/i, (msg) ->
    getImg msg, 'hahano'

  robot.hear /(^|\W)rajes(\z|\W|$)/i, (msg) ->
    getImg msg, 'gay'

  robot.hear /(^|\W)ken(\z|\W|$)/i, (msg) ->
    getImg msg, 'gay'
