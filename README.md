# ![inuit.css](http://csswizardry.com/inuitcss/img/logo.jpg)

inuit.css is a powerful little framework designed for _serious_ developers.

It is a Sass based, Object Oriented framework that is full of objects and
abstractions. inuit.css provides little-to-no design which means no undoing
things, no deleting CSS and no adhering to other peoples’ design decisions.

inuit.css is built on a [BEM](http://bem.info/)-style naming convention and
honed based on [work done by Nicolas Gallagher](https://gist.github.com/1309546).

inuit.css is ideally suited to designers who want to focus on the creative and
not code, and developers who understand the need for abstraction and an OO
approach.

inuit.css gives you design patterns, not design decisions. It features nestable,
fluid grids; a double-stranded heading hierarchy; sprites; buttons and a lot,
_lot_ more.


**Use inuit.css if:**

* You need a powerful library of objects and abstractions.
* You understand/appreciate the value of OO code and the need for scalability
  and reuse.
* You are a confident/competent developer comfortable with OOCSS and Sass, as
  well as familiarity with OO principles in general.

**Do not use inuit.css if:**

* You need a framework that supplies design (I’d recommend
  [Bootstrap](http://twitter.github.com/bootstrap/) for that).

## The developer

There are a million-and-one different CSS frameworks out there so this rather
cringeworthy section is an attempt to validate inuit.css and give it some
credibility…

I am [Harry Roberts](http://hry.rbrts.me), I am a 22 year old developer and
front-end architect from the UK. I work as a Senior UI Developer for
[BSkyB](http://en.wikipedia.org/wiki/BSkyB) where it is my job to build scalable
front-ends, write internally used CSS frameworks and libraries, and to architect
CSS and front-end builds.

I [write](http://csswizardry.com), [tweet](http://twitter.com/csswizardry) and
[speak](http://speakerdeck.com/u/csswizardry/) about OOCSS, scalable CSS,
maintainability, working in large teams, CSS performance, CSS architecture and a
whole lot more.

inuit.css is the result of years of my specialism in CSS (as CSS is all I do).
It is a collection of design patterns, objects, and abstractions that have been
refined and bulletproofed over hours of development across an array of projects
of varying sizes. inuit.css is the result of hundreds of hours of work all
condensed into one powerful little framework.

## Installation

inuit.css is incredibly easy to get up and running (provided you’re all set for
Sass). Simply [download the latest version](https://github.com/csswizardry/inuit.css/zipball/master)
of inuit.css from right here on GitHub, unpack the zip file, rename
`your-project.scss` to whatever your project is called and then watch that file
to a minified version with:

    sass --watch [your-project].scss:[your-project].min.css --style compressed

…where `[your-project]` is the name you have chosen for your build.

That’s it, your project is now set up on inuit.css.

To begin adding your styles on top of inuit.css just begin including things in
[`[your-project].scss`](https://github.com/csswizardry/inuit.css/blob/master/your-project.scss#L22)
_after_ you’ve called in your variables and the inuit.css framework.

If there are any  objects and abstractions you _don’t_ use in your project, it
is advisable that you comment out their inclusion in
[`inuit.scss`](https://github.com/csswizardry/inuit.css/blob/master/inuit.css/inuit.scss).
For example, if your project doesn’t require any pagination, text columns or
flyouts, you’d have:

       @import "partials/objects/grids";
       @import "partials/objects/flexbox";
    // @import "partials/objects/columns";
       @import "partials/objects/nav";
    // @import "partials/objects/pagination";
       @import "partials/objects/media";
       @import "partials/objects/island";
       @import "partials/objects/block-list";
       @import "partials/objects/matrix";
       @import "partials/objects/split";
       @import "partials/objects/this-or-this";
       @import "partials/objects/complex-link";
    // @import "partials/objects/flyout";
       @import "partials/objects/sprite";
       @import "partials/objects/icon-text";
       @import "partials/objects/buttons";
       @import "partials/objects/lozenges";
       @import "partials/objects/greybox";

This ensures that you aren’t packaging more than you need to.

## Footprint

**inuit.css is tiny.** The full framework – _including_ debug mode – once minified
and gzipped weighs **less than 3.6kB**

It is essential to **compile to a minified file** because inuit.css is packed
full of comments and whitespace; so much so that it would be detrimental to
your website’s performance to serve the unminified version.

## Documentation

There are no official docs for inuit.css because the code _is_ the
documentation. Everything is heavily commented with example HTML. If you
struggle with anything please tweet at [@inuitcss](http://twitter.com/inuitcss)
and/or [open an issue](https://github.com/csswizardry/inuit.css/issues) and I’ll
try help out and use your feedback to improve the documentation.

### Demos

Although there are no docs as such, there is [a dedicated inuit.css jsFiddle
account](http://jsfiddle.net/user/inuitcss/fiddles/) which houses plenty of
demos of various aspects of the framework.

## Looking for a little LESS?

[Peter Wilson](http://twitter.com/pwcc) is maintaining a LESS port of inuit.css:
check the [GitHub repo](https://github.com/peterwilsoncc/inuit.css).

## Test-drive

If you would like to try inuit.css out before you download anything there is a
compiled version [on jsFiddle](http://jsfiddle.net/inuitcss/a6yS3/) that you
are encouraged to fork and play with. Refer back to
[the source here on GitHub](https://github.com/csswizardry/inuit.css/blob/master/inuit.css/inuit.scss)
for documentation.

## As used by

* [BSkyB](http://en.wikipedia.org/wiki/BSkyB)
* [pr.ofile.me](http://pr.ofile.me)
* [Lukas Bestle](http://lu-x.me)
* [Matthew Tyas](http://matthewtyas.com/)

### Using inuit.css?

If you use inuit.css on a live project then [tweet at me](http://twitter.com/inuitcss)
and I’ll send you some inuit.css stickers!

## Support inuit.css

If you use and/or like inuit.css, perhaps you might consider [supporting it
through Gumroad](http://gum.co/nOoht).

## Credits

inuit.css, although produced and maintained by one developer, could not have
been possible without inspiration and work from an array of other people.

* **[Nicole Sullivan](https://twitter.com/stubbornella)** for her work on OOCSS
* **[Jonathan Snook](https://twitter.com/snookca)** for his work on SMACSS
* **[Nicolas Gallagher](https://twitter.com/necolas)** for his work on numerous
  CSS things
* **[Bryan James](https://twitter.com/WengersToyBus)** for the inuit.css logo

And probably more…

---

**inuit.css is the most powerful little framework out there, and it’s ready to
go!**
