savefile
===========

[GET/POST] http://savefile.joshmcarthur.com/:filename?content=:contents of file

Example of Use
----------

``` JavaScript
  var file_contents = "<h1>Hello, World!</h1>";
  var filename = "file.txt";
  window.open("http://savefile.joshmcarthur.com/" + filename + "?content=" +
file_contents);
```

i.e.:

```
  http://savefile.joshmcarthur.com/[The file name you want to use]?content=[The
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
Code available on [Github](https://github.com/joshmcarthur/savefile)
Hosted by [Heroku](http://heroku.com)
