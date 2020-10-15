# BorisBikes

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

bike = bike object
dock bike = dock_bike method

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

object              methods
bike                working
DockingStation      release, docks, has_bike?
user


As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.


USER

DOCKING STATION > release bike only if bike



As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

DOCKING STATION > attribute has bikes 20 bikes



### New feature

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

OBJECT:
BIKE -----> broken?


As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.


DOCKING STATION -----> release good bike only

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

DOCKING STATION -----> accept ALALLALLALL


```







