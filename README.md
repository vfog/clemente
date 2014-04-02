# Clemente

Clemente is Ruby client providing easy access to MLBAM Pitch F/X and related data. All XML data is converted to Ruby hashes for convenient access.

## Usage

```ruby
# today's scoreboard
scoreboard = Clemente.scoreboard
scoreboard[:date]

# scoreboard for August 18, 2013
Clemente.scoreboard Date.new(2013, 8, 18)

# today's mini scoreboard
mini_scoreboard = Clemente.mini_scoreboard
mini_scoreboard[:date]

# mini scoreboard for August 18, 2013
Clemente.mini_scoreboard Data.new(2013, 8, 18)

# boxscore for game id gid_2014_03_31_chnmlb_pitmlb_1 occuring today
boxscore = Clemente.boxscore "gid_2014_03_31_chnmlb_pitmlb_1"
boxscore[:game_id]

# boxscore for game id gid_2013_08_18_arimlb_pitmlb_1 occuring August 18, 2013
boxscore = Clemente.boxscore "gid_2013_08_18_arimlb_pitmlb_1", Date.new(2013, 8, 18)
```

## Dependencies

Clemente depends upon the following libraries

- [Nokogiri](http://nokogiri.org)
- [Faraday](https://github.com/lostisland/faraday)


## Copyright

Copyright (c) 2013-2014 Richard McGuire. See [LICENSE](https://github.com/vfog/clemente/blob/master/LICENSE.md) for details.
