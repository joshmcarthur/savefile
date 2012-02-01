savefile.it
===========

[GET/POST] http://savefile.it/:filename?content=:contents of file

Example of Use
----------

``` JavaScript
  var file_contents = "<h1>Hello, World!</h1>";
  var filename = "file.txt";
  window.open("http://savefile.it/" + filename + "?content=" +
file_contents);
```

i.e.:

```
  http://savefile.it/[The file name you want to use]?content=[The
content of your file]
```

Good for
-------

* File downloads from Javascript
* Avoiding the need for a server-side tool
* Quick and easy integration

Open Source
-----------

Created by [Josh McArthur](https://twitter.com/sudojosh)
Code available on [Github](https://github.com/joshmcarthur/savefile.it)
Hosted by [Heroku](http://heroku.com)
