# gulp-reiny

```
npm install gulp-reiny --save-dev
```

```js
var gulp = require('gulp');
var reiny = require('gulp-reiny');
gulp.task('reiny', function(){
  return gulp.src('src/**/*.reiny')
    .pipe reiny()
    .pipe(gulp.dest('lib'));
});
```

run `gulp reiny`
