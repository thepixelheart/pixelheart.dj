PixelScript Commands
====================

This is a list of all available PixelScript commands for creating animations.

Renderer
--------

The renderer object is what allows you to draw to the Pixel Heart. You access it using `renderer`.

    renderer <cmd>

Rectangles
----------

To draw rectangles use the fill- or strokeRect commands. These both receive a rect value
specifying the outlining of the rectangle.

    renderer fillRect:rect.
    renderer strokeRect:rect.

<div class="code-image">
![fillRect](gfx/fillrect.png "fillRect")
</div>

    NSColor redColor set.
    renderer fillRect:(kWallHeight / 4<>0 extent:kWallHeight<>kWallHeight).

<div class="code-image">
![strokeRect](gfx/strokerect.png "strokeRect")
</div>

    NSColor redColor set.
    renderer strokeRect:(kWallHeight / 4<>0 extent:kWallHeight<>kWallHeight).

Ellipses
--------

To draw ellipses use the fill- or strokeEllipse commands. These both receive a rect value
specifying the outlining box of the ellipse.

    renderer fillEllipse:rect.
    renderer strokeEllipse:rect.

<div class="code-image">
![fillEllipse](gfx/fillellipse.png "fillEllipse")
</div>

    NSColor redColor set.
    renderer fillEllipse:(kWallHeight / 4<>0 extent:kWallHeight<>kWallHeight).

<div class="code-image">
![strokeEllipse](gfx/strokeellipse.png "strokeEllipse")
</div>

    NSColor redColor set.
    renderer strokeEllipse:(kWallHeight / 4<>0 extent:kWallHeight<>kWallHeight).

Transformations
---------------

It's possible to easily scale, translate, and rotate your shapes in 2d space using these translation
methods.

    renderer scale:x<>y
    renderer translate:x<>y
    renderer rotateByRadians:radians

Math
----

You may call standard math functions using the `PHMath` object.

    PHMath sin:radians
    PHMath cos:radians
    PHMath tan:radians
    PHMath sqrt:positive number

Pixel Heart Dimensions
----------------------

Though the size of the Pixel Heart is unlikely to change at any point in the near future, it's best
to use the provided wall dimensions so that your animations will survive any changes in wall
dimensions.

    kWallWidth (48)
    kWallHeight (32)

Time
----

When building real-time animations it's important to know how much time has passed since the last
time we ran our animation. This allows us to provide some semblance of visual continuity as we move
objects at specific velocities.

    secondsSinceLastTick
    
    Valid Range: 0...
    Type: floating point

Degraders
---------

A degrader works like those little bars on old amplifier displays that get pushed up and then slowly
fall back down.

In our case we have four degraders: one each for bass, hi hats, vocals, and snares. The value of
these degraders is a floating point number from 0...1 that represents the amplitude of the
respective instrument. The degraders' values fall back to zero at a velocity of one unit per second.

    bassDegrader value
    hihatDegrader value
    vocalDegrader value
    snareDegrader value

    Valid Range: 0...1
    Type: floating point
