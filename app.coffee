express = require 'express'
stylus = require 'stylus'
assets = require 'connect-assets'

app = express.createServer()
app.use assets()
app.set 'view engine', 'jade'

app.get '/', (req, resp) -> resp.render 'index'

app.get '/:filename.:extension', (req, resp) ->
  content = req.param['content']
  if (content and content.length > 1024)
    resp.json({error: 'File content is longer than 1024 characters and was truncated.. Please use POST instead of GET'}, 406)
  else
    saveit(req, resp)

app.post '/:filename.:extension', (req, resp)->
  saveit(req, resp)

saveit = (req, resp) ->
  content = req.param.content
  unless (content)
    resp.json({error: 'File content is missing'}, 406)
  else
    resp.attachment(req.param.filename)
    resp.send(content)

app.listen process.env.PORT or 4000, -> console.log 'Listening...'
