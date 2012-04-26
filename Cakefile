{spawn, exec} = require 'child_process'
fs            = require 'fs'

task 'build', 'build the node module', (cb) ->
  console.log "Building"
  files = fs.readdirSync 'src'
  files = ('src/' + file for file in files when file.match(/\.iced$/))
  runIced ['-c', '-o', 'lib/'].concat(files), ->
    runIced ['-c', 'index.iced'], ->
      runIced ['package.iced'], ->
        console.log "Done building."
        cb() if typeof cb is 'function'

runIced = (args, cb) ->
  proc =         spawn 'iced', args
  proc.stderr.on 'data', (buffer) -> console.log buffer.toString()
  proc.on        'exit', (status) ->
    process.exit(1) if status != 0
    cb() if typeof cb is 'function'