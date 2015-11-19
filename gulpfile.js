"use strict";
/*
 * gulp tasks are defined here.
 */
var gulp = require('gulp');
var connect = require('gulp-connect'); //run a local dev web server
var open = require('gulp-open'); //open a url in a web browser
var browserify = require('browserify'); //bundles js
var source = require("vinyl-source-stream"); //use conventional text streams with gulp
var concat = require("gulp-concat"); //concatenates files
var lint = require("gulp-eslint"); //lint js and jsx files

var config = {
    port: 9005,
    devBaseUrl: "http://localhost",
    paths: {
        html: "./src/main/webapp/**/*.html",
        js: ["./src/main/webapp/**/*.js","!./src/main/webapp/**/*bundle.js"],
        mainJS: "./src/main/webapp/WEB-INF/main.js",
        css: [
            "./src/main/webapp/components/bootstrap/dist/css/bootstrap.min.css",
            "./src/main/webapp/components/bootstrap/dist/css/bootstrap.theme.min.css"
        ],
        dist: "./dist",
        src: "./src"
    }
};

//gulp.task("startDevWebServer", function(){
//    connect.server({
//        root: ['dist'],
//        port: config.port,
//        base: config.devBaseUrl,
//        livereload: true
//    });
//});
//
//gulp.task("openBrowser", ["startDevWebServer"], function(){
//    gulp.src("dist/index.html").pipe(open({
//        url: config.devBaseUrl + ":" + config.port + "/"
//    }));
//});
//
//gulp.task("reloadHtmlFiles", function(){
//
//    gulp.src(config.paths.html)
//        .pipe(gulp.dest(config.paths.dist))
//        .pipe(connect.reload());//I assume connect.reload will not do anything if the web server is not up.
//});
//
//gulp.task("processJS", function(){
//    browserify(config.paths.mainJS)//other js files are imported from this the main.js via require()
//        .transform(reactify)
//        .bundle()
//        .on("error", console.error.bind(console))
//        .pipe(source("bundle.js"))
//        .pipe(gulp.dest(config.paths.dist + "/scripts"))
//        .pipe(gulp.dest(config.paths.src + "/scripts")) //for intellij
//        .pipe(connect.reload());
//});
//
//gulp.task("processCSS", function(){
//    gulp.src(config.paths.css)
//        .pipe(concat("bundle.css"))
//        .pipe(gulp.dest(config.paths.dist + "/css"))
//        .pipe(gulp.dest(config.paths.src + "/css")); //for intellij
//});
//
//gulp.task("lint", function(){
//    return gulp.src(config.paths.js)
//        .pipe(lint({config: 'eslint.config.json'}))
//        .pipe(lint.format());
//});
//
//gulp.task("watchHtmlFiles", function(){
//    gulp.watch(config.paths.html, ["reloadHtmlFiles"]);
//    gulp.watch(config.paths.js, ["processJS", "lint"]);
//});
//
//gulp.task("default", ["reloadHtmlFiles", "processJS", "lint", "processCSS", "openBrowser", "watchHtmlFiles"]);