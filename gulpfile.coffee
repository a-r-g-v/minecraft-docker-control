bower = require 'gulp-bower-files'
gulp = require 'gulp' 

flatten = require 'gulp-flatten'
uglify = require 'gulp-uglify'
cond   = require 'gulp-if'
 
gulp.task 'bower', ->
  bower()
    .pipe uglify({preserveComments:'some'})
    .pipe flatten()
    .pipe (gulp.dest 'lib')
