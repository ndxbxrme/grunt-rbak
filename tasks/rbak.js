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
        base: process.env.cwd(),
        dir: process.env.cwd(),
        ignore: 'node_modules,bower_components,.git,.svn',
        recursive: true,
        'respect-gitignore': true
      });
      switch (options.command) {
        case 'backup':
          rbak.backup(options);
          break;
        case 'list':
          rbak.list(options);
          break;
        case 'restore':
          rbak.restore(options);
      }
      return done();
    });
  };

}).call(this);
