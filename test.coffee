require('ts-node').register() # <-- This is what Karma does, and it brings in source-map-support
cs = require('coffeescript')

transpileOpts = presets: ["@babel/env"]
opts = transpile: transpileOpts
code = "foo = 'bar'"

result = cs.compile(code, opts)

console.log result
