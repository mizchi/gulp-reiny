gulp = require 'gulp'
reiny = require 'gulp-reiny'
gulp.task 'reiny', ->
  gulp.src('src/**/*.reiny')
    .pipe reiny()
    .pipe(gulp.dest('lib'))
