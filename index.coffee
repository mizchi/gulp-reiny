reiny = require 'reiny/lib'
through = require 'through2'
replaceExt = require 'replace-ext'

module.exports = (opt) -> through.obj (file, enc, callback) ->
  if file.isNull()
    @push(file)
    return callback()
  else if file.isBuffer()
    content = file.contents.toString()
    file.contents = new Buffer reiny.compile(content, opt)
    file.path = replaceExt(file.path, '.js')
    @push(file)
    return callback()
  else if file.isStream()
    throw new Error('Streams are not supported')
  return callback()
