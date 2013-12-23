---
layout: post
title: Getting started with inuitcss
meta: A quick introduction to getting the inuitcss framework up and running in your project.
---

# {{ page.title }}

So, you wanna use inuitcss? That’s awesome, thanks!

Setting inuitcss up is surprisingly simple, but before you can go anywhere,
inuitcss assumes/requires a few things:

<ul class="numbered-list">
    <li>You have Sass set up, either via the command line or a GUI.</li>
    <li>You are comfortable with concepts like OO, abstraction, DRYness, the
        single responsibility principle and other OOCSS schools of thought.</li>
    <li>You ain’t need no design!</li>
</ul>

If the above is all good, then let’s get going!

## Getting inuitcss

There are a number of ways to get inuitcss into your project; you can
[download the zip](https://github.com/csswizardry/inuit.css/archive/master.zip)
or `git clone` it into a CSS directory in your project, thus:

    ~$ cd path/to/your/site
    ~/path/to/your/site$ git clone https://github.com/csswizardry/inuit.css.git css
    Cloning into 'css'...

## Setting up your project

Once you have inuitcss downloaded and in your `css/` directory, you need to
alter a few things.

Firstly, you can delete `README.md`, you probably won’t need that. Next up, you
need to rename `your-project.scss` to something a little more suitable, perhaps
`style.scss` or the name of the project you’re working on (e.g. `csswizardry.scss`).

Once you’ve renamed that file, you need to open up `watch.sh` and change all
instances of `your-project` to whatever name you just chose. A simple global
find and replace will sort this in a flash.

Lastly, you should pop open `_vars.scss` and alter your projects’ settings
accordingly; here you can set typographic styles, define media query breakpoints,
tell inuitcss to be responsive or not, and a whole lot more.

Once you’ve got those set up, you’re now ready to start work!

## Running inuitcss

Running inuitcss is simple, you can use a GUI like
[CodeKit](http://incident57.com/codekit/) to watch the `css/` directory or you
can run Sass from the command line via the `watch.sh` file, like so:

    ~/path/to/your-site/css$ sh watch.sh

Now Sass is watching your CSS directory and will compile inuitcss and your
theme stylesheets into your final, production file.

**N.B.** It is advised that you only ever deploy a minified stylesheet as
inuitcss contains a _lot_ of comments and whitespace.

## Extending inuitcss

inuitcss is a framework in its truest sense; it is a helping hand which you
work on top of. This means that, on its own, inuitcss won’t do much for you; it
is designed to be extended by developers who lay their theme over the top of it.

Extending inuitcss is super simple, you just import your own files into `your-project.scss`
_after_ the framework gets imported. You can find this comment in that file:

    /**
     * She’s all yours, cap’n... Begin importing your stuff here.
     */

I find the simplest way to manage this extension is to create a new directory in
`css/` called `ui/` or similar. Looking at the source for this blog, you can
[see this in action](https://github.com/csswizardry/inuit.css/blob/gh-pages/css/inuit.scss#L21-L31).

Now you are calling in your variables, then the framework which picks up and
utilises those variables, then your array of UI components that sit on top of
all of that. It’s also worth noting that, naturally, all the variables defined
in `_vars.scss` remain available to you for use in your UI component files.

The best way to see this whole process is probably to just have a poke
through [this blog’s source on GitHub](https://github.com/csswizardry/inuit.css/tree/gh-pages).

So, hopefully that should be a decent, quick guide to setting inuitcss up, but
if you think I’ve missed anything, or you’d like to know more about something in
particular, please [let me know](http://twitter.com/inuitcss) and I’ll
amend/update this post.

Cheers,  
<i>H</i>
