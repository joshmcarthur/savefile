express = require 'express'
stylus = require 'stylus'
assets = require 'connect-assets'

app = express.createServer()
app.use assets()
app.set 'view engine', 'jade'

app.get '/', (req, resp) -> resp.render 'index'

app.get '/:filename', (req, resp) ->
  content = req.query['content']
  if (content and content.length > 1024)
    resp.json({error: 'File content is longer than 1024 characters and was truncated.. Please use POST instead of GET'}, 406)
  else
    saveit(req, resp)

app.post '/:filename', saveit

saveit = (req, resp) ->
  content = req.query["content"]
  unless (content)
    resp.json({error: 'File content is missing'}, 406)
  else
    resp.attachment(req.params.filename)
    resp.send(content)

app.listen process.env.VMC_APP_PORT or 4000, -> console.log 'Listening...'
