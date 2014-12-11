# imgcat

It's like `cat` but for images.

# Build

You must have [scons](http://www.scons.org/).

```sh
scons production=true
```

# Usage

```sh
imgcat some_image.jpg
```

# Acknowledgements

 - Uses `stb_image` and `stb_image_resize` from [Sean T. Barrett's collection
   of public domain C libraries][stb].
 - 256 Color chart and data from Jason Milkin's [public domain chart][256svg].

[stb]: https://github.com/nothings/stb
[256svg]: https://gist.github.com/jasonm23/2868981

# License

2014 © Eddie Antonio Santos. See `LICENSE`.
