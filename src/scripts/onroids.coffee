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

rdmImg = (images) ->
  (msg) ->
    msg.send msg.random images

module.exports = (robot) ->

  robot.hear /(^|\W)\^5(\z|\W|$)/i, rdmImg [
    'http://i.imgur.com/fiZtK.gif'
    'http://i.imgur.com/ks0lE.gif'
    'http://i.imgur.com/JsG2b.gif'
    'http://i.imgur.com/omiv4.gif'
    'http://i.imgur.com/LBtIS.gif'
  ]

  robot.hear /^(no u|n u|u r|ur)$/i, rdmImg [
    'http://i.imgur.com/otHa1.jpg'
    'http://i.imgur.com/W5OXM.png'
    'http://i.imgur.com/J7WvS.gif'
  ]

  robot.hear /(haha lol|lol :\))$/i, rdmImg [
    'http://i.imgur.com/SgZo2.gif'
    'http://i.imgur.com/aV5Ex.gif'
  ]

  robot.hear /(^|\W)(ken|rajes)(\z|\W|$)/i, rdmImg [
    'http://goo.gl/9bmJQ'
  ]

  robot.hear /(^|\W)gangnam(\z|\W|$)/i, rdmImg [
    'http://youtu.be/9bZkp7q19f0'
  ]
