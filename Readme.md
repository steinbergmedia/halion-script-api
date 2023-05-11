# This is the source of the HALion Script API

The source is written in [Markdown](https://www.markdownguide.org/getting-started/) and then build with [mdbook](https://github.com/rust-lang/mdBook) to generate HTML pages.

## Requirements

* [mdbook](https://github.com/rust-lang/mdBook)
* [mdbook-toc](https://github.com/badboy/mdbook-toc)
* [mdbook-linkcheck](https://github.com/Michael-F-Bryan/mdbook-linkcheck)

Download the precompiled binaries and install them, so that the executables are in your environments path variable.

## Build

To build the HTML pages use the command line to run mdbook from the checkout folder of this repository.

```
mdbook build
```

Alternatively, you can build and serve the HTML pages locally as follows.

```
mdbook serve -o
```

When using ``mdbook serve -o``, the HTML pages will be updated automatically, if you change the source files.

You can also use just ``mdbook serve``. In this case, you can enter http://localhost:3000/ as adress in your browser to open the book.
