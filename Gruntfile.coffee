'use strict'

module.exports = (grunt) ->
  require('load-grunt-tasks') grunt
  grunt.initConfig
    watch:
      coffee:
        files: ['src/**/*.coffee', 'test/**/*.coffee', 'Gruntfile.coffee']
        tasks: ['coffeelint', 'coffee']
    coffee:
      options:
        sourceMap: false
        sourceRoot: ''
      server:
        files: [{
          expand: true
          cwd: 'src/'
          src: ['**/*.coffee']
          dest: 'tasks'
          ext: '.js'
        }, {
          expand: true
          cwd: 'test/'
          src: ['**/*test.coffee']
          dest: 'test'
          ext: '.js'
        }]
    coffeelint:
      all:
        files:
          src: [
            'src/**/*.coffee'
            'Gruntfile.coffee'
            'test/**/*.coffee'
          ]
        options:
          'no_trailing_whitespace': level: 'ignore'
          'max_line_length': level: 'ignore'
    jshint:
      all: [
        'Gruntfile.js'
        'tasks/*.js'
      ]
      options: jshintrc: '.jshintrc'
    clean: tests: [ 'tmp' ]
  grunt.loadTasks 'tasks'
  grunt.registerTask 'test', [
    'clean'
    'coffeelint'
    #'nodeunit'
  ]
  grunt.registerTask 'default', [
    'coffeelint'
    'coffee'
    'jshint'
    'test'
    'watch'
  ]