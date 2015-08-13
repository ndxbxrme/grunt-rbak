'use strict'
module.exports = (grunt) ->
  rbak = require 'rbak'
  async = require 'async'
  grunt.registerMultiTask 'rbak', 'Backup your files', ->
    done = @async()
    options = @options
      base: process.env.cwd()
      dir: process.env.cwd()
      ignore: 'node_modules,bower_components,.git,.svn'
      recursive: true
      'respect-gitignore': true
    switch options.command
      when 'backup' then rbak.backup options
      when 'list' then rbak.list options
      when 'restore' then rbak.restore options
    done()