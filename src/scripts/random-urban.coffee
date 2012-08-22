# Description:
#   Random terms via Urban Dictionary
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot random term - Searches Urban Dictionary and returns a random definition
#
# Author:
#   Liam Curry

module.exports = (robot) ->

  robot.respond /random term$/i, (msg) ->
    msg.http('http://api.urbandictionary.com/v0/random')
      .get() (err, res, body) ->
        terms = JSON.parse(body).list
        terms.sort (a, b) ->
          return getScore(a) - getScore(b)
        term = terms[0]
        msg.send "Word: #{truncate(term.word)}"
        msg.send "Definition: #{truncate(term.definition)}"
        msg.send "Example: #{truncate(term.example)}"
        #msg.send "Score: #{getScore(term)}, URL: #{term.permalink}"

truncate = (text) ->
  truncated = text.substring(0, Math.min(text.length, 140))
  truncated += '...' if text.length > 140
  return truncated

getScore = (term) ->
  thumbsUp = parseInt term.thumbs_up
  thumbsDown = parseInt term.thumbs_down
  return thumbsUp - thumbsDown
