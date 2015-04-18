reiny = require 'reiny/lib'
through = require 'through2'
replaceExt = require 'replace-ext'

module.exports = (opt) ->
  stream = through.obj (file, enc, callback) ->
    if file.isNull()
      @push(file)
      return callback()
    else if file.isBuffer()
      file.contents = new Buffer reiny.compile(file.contents.toString())
      file.path = replaceExt(file.path, '.js')
      @push(file)
      return callback()
    else if file.isStream()
      throw new Error('Streams are not supported')
    return callback()
  return stream
