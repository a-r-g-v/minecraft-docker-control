bower = require 'gulp-bower-files'
gulp = require 'gulp' 
minify = require 'gulp-minify-css'
concat = require 'gulp-concat'

flatten = require 'gulp-flatten'
uglify = require 'gulp-uglify'
cond   = require 'gulp-if'
 
gulp.task 'bower', ->
  bower()
    .pipe uglify({preserveComments:'some'})
    .pipe flatten()
    .pipe (gulp.dest 'htdocs/lib')

gulp.task 'css', ->
  gulp.src('htdocs/lib/*.css')
  .pipe(concat('style.css'))
  .pipe(minify())
  .pipe( gulp.dest 'htdocs/lib')
  
gulp.task('default', ['bower', 'css'])
