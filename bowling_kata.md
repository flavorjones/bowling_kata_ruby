# The Bowling Kata in Ruby

First done in October, 2016 at a recruting event.

## Getting Started

    $ bundle install --path .bundle
    $ rspec # or run in RubyMine


## The Exercise

### First Run

The first attempt at running specs should fail as `Game` is not defined.

Add the `Game` class to the source file, but no methods. With this you should have all tests pending, but RSpec working.

### 1. 20 Gutters

"The simplest game is 20 gutter balls. So let's roll 20 of them and then ensure we have a score of zero."

- loop in the test to roll
- test for the score
- method for `#roll`  
- method for `#score`

Get green with defaults.

### 2. 20 Ones

"Now it's time to score. What's the simplest full game? All one pins."

- loop in the test to roll
- test for the score of 20

#### Solve

- `#roll` needs to save off the pins that are knocked down  
- `#score` should return the score
 
#### Refactor

- extract a `@game` instance variable
- extract a `rollMany`

### 3. One Spare

"Spares are complex. When you roll a ten with two pins, the _next_ pin is counted as well."

- `roll(5)`
- `roll(5)`
- `roll(3)`
- `roll_many` for the rest
- expect score of 16

#### Solve

To make this work, `#score` should be an action, not a getter. This is a good design discussion.

Save off all rolls into an array and then walk the array to score. Spares first, then not.

#### Refactor

- extract `#is_spare?`

### 4. One Strike

"One roll, ten pins is a strike. The next _two_ rolls count to the score."

- `roll(10)`
- `roll(4)`
- `roll(3)`
- `roll_many` for the rest
- expect score of 24

#### Solve

- Check for strike first

#### Refactor

- extract `#is_strike?`
- extract `#strike_bonus`
- extract `#spare_bonus`
- extract `#pins_in_frame`

### 5. Perfect Game

- `roll_many(12,10)`
- expect score to be 300

This should just work. BOOM.

