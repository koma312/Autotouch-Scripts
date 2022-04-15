// You have three ways to require a JavaScript module:
// 1. require('relative_path'), e.g. `const worker = require('../worker')`
// 2. require('absolute_path'), e.g. `const worker = require('/var/mobile/Library/AutoTouch/Scripts/worker')`
// 3. require('remote_url'), e.g. `const worker = require('https://cdn.jsdelivr.net/npm/lodash@4.17.15/lodash.min.js')`
// *Only HTTPS is supported while using remote url*

const _ = require('https://cdn.jsdelivr.net/npm/lodash@4.17.15/lodash.min.js')

const result1 = _.defaults({ 'a': 1 }, { 'a': 3, 'b': 2 })
// → { 'a': 1, 'b': 2 }
alert(result1)

const result2 = _.partition([1, 2, 3, 4], n => n % 2)
// → [[1, 3], [2, 4]]
alert(result2)