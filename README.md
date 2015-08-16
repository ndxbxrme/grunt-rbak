# grunt-rbak [![Build Status](https://travis-ci.org/ndxbxrme/grunt-rbak.svg?branch=master)](https://travis-ci.org/ndxbxrme/grunt-rbak)

> Backup your files, respecting .gitignores

## Getting Started
This plugin requires Grunt `~0.4.5`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-rbak --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-rbak');
```

## The "rbak" task

### Overview
In your project's Gruntfile, add a section named `rbak` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  rbak: {
    options: {
      // Task-specific options go here.
    },
    your_target: {
      // Target-specific file lists and/or options go here.
    },
  },
});
```

### Options

#### options.command
Type: `String`
Default value: `backup`

The command to run, can be `backup`, `restore` or `list`.

#### options.base
Type: `String`
Default value: `process.env.cwd()`

Where your backup lives.

#### options.dir
Type: `String`
Default value: `process.env.cwd()`

Directory to backup or the directory within backup to list/restore.

#### options.ignore
Type: `String`
Default value: `'node_modules,bower_components,.git,.svn'`

Comma seperated list of files/directories to ignore globally.

#### options.recursive
Type: `Boolean`
Default value: `true`

Recursively backup subfolders, or not.

#### options.respect-gitignore
Type: `Boolean`
Default value: `true`

Do the .gitignores need respecting?  They probably do.

### Usage Examples

#### Default Options
Backup D:/DEV folder into a folder called `D:/backup`

```js
grunt.initConfig({
  rbak: {
    main: {
      options: {
        command: 'backup'
        base: 'D:/backup',
        dir: 'D:/DEV'
      }
    }
  },
});
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
_(Nothing yet)_
