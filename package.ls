#!/usr/bin/env lsc -cj
name: 'g0v.tw'
version: '0.0.1'
description: 'g0v official website'
main: 'Gruntfile.js'
repository:
  type: 'git'
  url: 'https://github.com/g0v/g0v.tw'
keywords:
  "g0v"
  ...
license: 'BSD-2-Clause'
scripts:
  prepublish: """
    node ./node_modules/livescript/bin/lsc -cj package.ls
    node ./node_modules/livescript/bin/lsc -cj bower.ls
    node ./node_modules/livescript/bin/lsc -c test/*.js.ls
  """
  build: 'gulp'
  test: 'npm run build && bower i && ./node_modules/karma/bin/karma start --browsers PhantomJS --single-run true test/karma.conf.js'
  start: 'gulp dev'
devDependencies:
  'bower': '^1.3.12'
  'chai': '~1.10.0'
  'connect': '^3.3.4'
  'connect-livereload': '^0.5.2'
  'express': '^4.11.1'
  'gulp': '^3.8.10'
  'gulp-bower': '~0.0.10'
  'gulp-commonjs': '~0.1.0'
  'gulp-concat': '~2.4.3'
  'gulp-filter': '^2.0.0'
  'gulp-if': '^1.2.5'
  'gulp-insert': '^0.4.0'
  'gulp-jade': '^0.11.0'
  'gulp-json-editor': '~2.2.1'
  'gulp-less': '~3.0.0'
  'gulp-livereload': '^3.6.0'
  'gulp-livescript': '^3.0.1'
  'gulp-open': '^0.3.2'
  'gulp-plumber': '^0.6.6'
  'gulp-rename': \>=1.2.0
  'gulp-uglify': '^1.1.0'
  'gulp-util': '~3.0.2'
  'karma': '^0.12.31'
  'karma-live-preprocessor': '~0.2.0'
  'karma-phantomjs-launcher': "^0.1.4"
  'karma-mocha': '~0.1.0'
  'karma-chai': '~0.1.0'
  'karma-ng-scenario': '0.1.0'
  'livescript': '1.4.0'
  'main-bower-files': '^2.5.0'
  'marked': '^0.3.6'
  'mocha': '^2.1.0'
  'streamqueue': '^0.1.0'
  'tiny-lr': '^0.1.5'
