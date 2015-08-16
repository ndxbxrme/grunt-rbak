(function() {
  'use strict';
  module.exports = function(grunt) {
    var async, rbak;
    rbak = require('rbak');
    async = require('async');
    return grunt.registerMultiTask('rbak', 'Backup your files', function() {
      var done, options;
      done = this.async();
      options = this.options({
        base: process.cwd(),
        dir: process.cwd(),
        ignore: 'node_modules,bower_components,.git,.svn',
        recursive: true,
        'respect-gitignore': true
      });
      switch (options.command) {
        case 'backup':
          return rbak.backup(options, done);
        case 'list':
          return rbak.list(options, done);
        case 'restore':
          return rbak.restore(options, done);
      }
    });
  };

}).call(this);
