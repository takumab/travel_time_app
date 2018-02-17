# Travel Time App


## The Problem

- Need to predict arrival time of negotiators at each location they visit

## The solution

- Build a web interface, using city mapper's API, which allows negotiators to:
  - set_addresses (create) :: (Point A(Int/String), Point B(Int/String)) --> travel_time_minutes
  - set_starttime_and_date (create):: String --> travel_time_minutes
  - see_arrival_time (read):: --> travel_time_minutes
