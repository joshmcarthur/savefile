savefile
===========

### https://savefile.herokuapp.com


Example of Use
----------

``` JavaScript
  var file_contents = "<h1>Hello, World!</h1>";
  var filename = "file.txt";
  window.open("https://savefile.herokuapp.com/" + filename + "?content=" +
file_contents);
```

i.e.:

```
  https://savefile.herokuapp.com/[The file name you want to use]?content=[The
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
