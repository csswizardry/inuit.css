---
layout: post
title: Building grid systems with inuitcss
meta: Look at how inuitcss’ grid system work and how to implement and use it.
---

# {{ page.title }}

Hey there! The first proper tutorial on this site is gonna be a real simple one,
covering inuitcss’ grid system, what it can do, and how best to use it.  For
starters, you’ll probably want to have the files
[`_grids.scss`](https://github.com/csswizardry/inuit.css/blob/master/objects/_grids.scss)
and [`_widths.css`](https://github.com/csswizardry/inuit.css/blob/master/generic/_widths.scss)
open.

inuitcss’ grid system has a few things worth noting:

* It will not work in IE7 and below.
* It doesn’t use columns, but _proportions_.
* It is fully fluid with fixed-width gutters.
* It is fully nestable.

## A note on grid systems in general

Grid systems are often frowned upon as being insemantic; this, unfortunately, is
a complete fallacy… Classes and `div`s are both totally devoid of semantics,
that’s their point, so they have absolutely **zero** impact on the semantics of
your document.

A lot of people also shy away from grid systems because they bloat code. This,
again, is not true. A sensibly constructed page abstracts layout _away_ from
components, meaning `.content` would not have any floats or widths on it as it
would be governed by a grid system.

You can compare grid systems to a set of
shelves; you put your shelves (grids) up at certain dimensions and then you let
your belongings (content/components) fill the space. Your layout (shelves) and
your content (books, DVDs etc) are managed totally separately.

I spoke recently at [Front-Trends](http://2012.front-trends.com/) where I had an
entire section on grid systems. For a more detailed explanation, the fun starts
at [20:25](http://vimeo.com/44773888).

## No columns

As above, inuitcss’ grid system doesn’t work on the concept of columns, but on
the concept of proportions. In this age of responsive design, fluidity and
device uncertainty, it makes little sense to build grid systems to finite
and absolute numbers like ‘twelve columns’. It is much friendlier and more
sensible to think of fluid grids in terms of fractions; one half, two thirds,
five eighths and so on.

As such, inuitcss’ `_widths.scss` is full of classes like these, making it
really nice and easy to rapidly build grid systems by thinking in human-format
terms. It also allows for nesting; `.span-6` might be `width:50%` in a twelve
column grid system, but if you were to put that `.span-6` in a `.span-10` you
wouldn’t get quite what you expect. <strong>inuitcss’ grids are friendly and
nestable!</strong>

## How it works

Using inuitcss’ grid system is super simple stuff! Each set of grids comprises
of a wrapper to place the grid items in, and then the grid items themselves. The
syntax looks a little like this:

    <div class="grid-wrapper">
        
        <div class="grid  two-thirds">
            ...
        </div>
        
        <div class="grid  one-third">
            ...
        </div>
        
    </div>

This creates a simple two-column grid system where one column (`.two-thirds`) is
twice as big as the other (`.one-third`).

<div class="islet  note">
    <p><strong>N.B.</strong> <code>.grid-wrapper</code> and <code>.grid</code>
    also have short aliases <code>.gw</code> and <code>.g</code> respectively.
    Use these if you want to type less.</p>
</div>

### Nesting

Nesting is as simple as this:

    <div class="grid-wrapper">
        
        <div class="grid  two-thirds">
            
            <div class="grid-wrapper">
                
                <div class="grid  one-half">
                    ...
                </div>
                
                <div class="grid  one-half">
                    ...
                </div>
                
            </div>
            
        </div>
        
        <div class="grid  one-third">
            ...
        </div>
        
    </div>

### Reversing grids

You can reverse the appearance of grids without having to alter the source order
(see it in action on this very page’s content and sub-content areas). This helps
with screenreaders and responsive design. To reverse the order of a series of
grids simply use the `.grid-wrapper--rev` class:

    <div class="grid-wrapper  grid-wrapper--rev">
        
        <div class="grid  two-thirds">
            ...
        </div>
        
        <div class="grid  one-third">
            ...
        </div>
        
    </div>

### Push and pull

inuitcss also has a series of push and pull classes that you can use to
manipulate grids’ positions, for example:

    <div class="grid-wrapper">
        
        <div class="grid  two-thirds  push--one-third">
            ...
        </div>
        
    </div>

The above will create a grid item that is two-thirds the available width but
starts one-third of the way in.

## Responsive grids

inuitcss prides itself on how few design decisions it makes, but even so, it
still has some responsive grids in there! You can define your breakpoints in
[`_vars.scss`](https://github.com/csswizardry/inuit.css/blob/e666615d9f4348700382ee6f827069296c8e8d9e/_vars.scss#L38-L44)
and inuitcss will pick them up and make you some media queries which allow you
to have your grids behave in certain ways at your custom widths.

The widths are _very_ loosely based on devices, but only kind of… We don’t guess
at things like `320px` assuming that all phones have this width in portrait
mode; what we do is tie your personally defined widths to the following
breakpoints:

* `palm` for handheld devices.
* `lap` for tablets and netbooks and the like.
* `portable` for both of the above.
* `desk` for anything big enough to be deemed stationary.

These names were born from the following by [Luke Wroblewski](http://lukew.com):

![Device diagram](https://a248.e.akamai.net/camo.github.com/25e9301f3467146dd759144c85e253bf410d2c12/687474703a2f2f7374617469632e6c756b65772e636f6d2f756e69666965645f6465766963655f64657369676e2e706e67)


These states give us more human-formatted classes such as `.palm-one-half` or
`.lap-two-fifths` and so on. This means that, if we take the following:

    <div class="one-whole  lap-one-half  desk-one-quarter">
        ...
    </div>

Then this grid item will have three different states. Its normal (in this case
‘mobile first’) state it will be full width. When it is on a ‘lap’ device it
will occupy half of the available width and on a stationary ‘desk’ device it
will take up a quarter. These classes can be combined to make all manner of
[crazy-cool layouts!](http://jsfiddle.net/inuitcss/WS4Ge/embedded/result,html,css)

### Responsive push and pull

Currently there are no responsive push and pull classes purely because of the
sheer amount of code they’d produce. I may well add them, but only if a variable
is explicitly set to enable them.

## Rules

With grid systems there are a few rules you **need** to stick to. The main one
is **do not add any other styling to a grid item ever**.

It may be tempting to use something like this:

<pre><code>&lt;div class="g  one-quarter"&gt;
    [sub content here]
&lt;/div&gt;

.one-quarter{
    color:#666; <span class="code-comment">/* Mute sub-content color. */</span>
}</code></pre>

This is _not_ how you should use grids; you should place another `div` _inside_
that grid item with a more explicit class, for example:

<pre><code>&lt;div class="g  one-quarter"&gt;
    &lt;div class="sub-content"&gt;
        [sub content here]
    &lt;/div&gt;
&lt;/div&gt;

.sub-content{
    color:#666; <span class="code-comment">/* Mute sub-content color. */</span>
}</code></pre>

You should never apply any styling _whatsoever_ to a grid item; they are for
structural purposes **only**. Furthermore, you should never, _ever_, **ever**
apply new box-model rules to a grid item under any circumstances, be it inuitcss
or something else.

## Final word

So, hopefully that explains a little more about what you can do with inuitcss’
grid system, and how you should go about doing it. If I missed anything out, or
you’d like to know something more, please do [let me know](http://twitter.com/inuitcss)
and I’ll update the article.

Cheers,  
<i>H</i>
