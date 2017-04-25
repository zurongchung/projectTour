var gulp = require('gulp'),
    inlineCss = require('gulp-inline-css');

gulp.task('default', function() {
    return gulp.src('release/html/*.html')
        .pipe(inlineCss())
        .pipe(gulp.dest('release/build'));
});
