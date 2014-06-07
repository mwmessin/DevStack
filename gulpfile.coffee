gulp = require 'gulp'
watch = require 'gulp-watch'
stylus = require 'gulp-stylus'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
rename = require 'gulp-rename'
livereload = require 'gulp-livereload'

gulp.task 'dev', ->
  gulp.src '**/*.coffee'
    .pipe watch()
    .pipe coffee()
    .pipe concat()
    .pipe uglify()
    .pipe rename('script.js')
    .pipe livereload()

  gulp.src '**/*.stylus'
    .pipe watch()
    .pipe stylus()
    .pipe concat()
    .pipe rename('style.css')
    .pipe livereload()
