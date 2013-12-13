# Description:
#   An HTTP Listener that notifies about new Github pull requests
#
# Dependencies:
#   "url": ""
#   "querystring": ""
#
# Configuration:
#   You will have to do the following:
#   1. Get an API token: curl -u 'username' -d '{"scopes":["repo"],"note":"Hooks management"}' \
#                         https://api.github.com/authorizations
#   2. Add <HUBOT_URL>:<PORT>/hubot/gh-pull-requests?room=<room>[&type=<type>] url hook via API:
#      curl -H "Authorization: token <your api token>" \
#      -d '{"name":"web","active":true,"events":["pull_request_review_comment", "commit_comment"],"config":{"url":"<this script url>","content_type":"json"}}' \
#      https://api.github.com/repos/<your user>/<your repo>/hooks
#
# Commands:
#   None
#
# URLS:
#   POST /hubot/git-comments?room=<room>[&type=<type]
#
# Authors:
#   hank

url = require('url')
querystring = require('querystring')

module.exports = (robot) ->

  robot.router.post "/hubot/git-comments", (req, res) ->
    query = querystring.parse(url.parse(req.url).query)

    res.end "yup"

    user = {}
    user.room = query.room if query.room
    user.type = query.type if query.type

    try
      announceComment req.body
    catch error
      console.log "github comment notifier error: #{error}. Request: #{req.body}"


announceComment = (body) ->
    mentioned = data.pull_request.body.match(/(^|\s)(@[\w\-\/]+)/g)
    message = ""

    message += "New PR comment on #{body.comment.pull_request_url} by #{body.comment.user.login}\n"
    message += "on line #{body.comment.position} in file #{body.comment.path}\n"
    message += "#{body.comment.html_url}\n"

    if mentioned
      unique = (array) ->
        output = {}
        output[array[key]] = array[key] for key in [0...array.length]
        value for key, value of output

      mentioned = mentioned.filter (nick) ->
        slashes = nick.match(/\//g)
        slashes is null or slashes.length < 2

      mentioned = mentioned.map (nick) -> nick.trim()
      mentioned = unique mentioned

      message += "Mentioned: #{mentioned.join(", ")}"

    robot.send user, message
