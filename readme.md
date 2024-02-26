# Lightday length calculator

![Lightday UI](images/Lightday%20screen.png)

GUI to quickly determine light day length depending of latitude and
date.

Status: **done**

## Installation

### Requirements:

- [x] OS: Linux
- [x] Lua 5.4
- [x] [TekUI](https://gist.github.com/martin-eden/e721436788994e5b183e94fb2f84b30b)

Clone repo. `$ lua run.lua`.

## Background and details

In 2020-03 I was doing growbox Arduino project. I wanted to get
real length of lightday.

So did some research, found that paper, implemented all algorithms from
there, chose one (CBM) and wrote bare framework over TekUI to represent
it as slidebar with feedback.

Of course, it's not possible to emulate daylight with growlamp. You can't change intensity. You can't move over arc like Sun. You can't
emulate wind. And anyway, my tomatoes grew great at just 12h-on mode.

But it was fun. I knew and learned something new.

Maybe one day I'll return and add UI block to select algorithm. Maybe
I'll plot lightday over the year. (Calculating sunrise and sunset is
another big can of worms.)

Code is tangled. I was writing wrappers over TekUI to get the job done.
Same for algorithms implementation: bottom-up design. Next stage is
rethink and rewrite it.

But for now, I'm putting this project on shelve in stable state.

Reference paper: [Ecological Modelling - A model comparison for daylength as function of latitude and day of the year](doc/Ecological%20Modelling%20-%20A%20model%20comparison%20for%20daylength%20as%20function%20of%20latitude%20and%20day%20of%20the%20year.pdf)

Last mod.: _2024-02-26_

See also [my other repositories](https://github.com/martin-eden/contents).
