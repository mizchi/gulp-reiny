# gulp-reiny

```
npm install gulp-reiny --save-dev
```

```js
var reiny = require('gulp-reiny');
gulp.task('raect-jade', function(){
  return gulp.src('src/**/*.reiny')
    .pipe reiny()
    .pipe(gulp.dest('lib'));
});
```
