PixelScript Commands
====================

This is a list of all available PixelScript commands for creating animations.

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
