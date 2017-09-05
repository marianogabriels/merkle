# [WIP] Merkle

Merkle tree implementation in ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'merkle_tree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install merkle_tree

## Usage

``` 
data = ["hello","world","foo","bar"]
tree = Merkle.new(data) 
tree.root # => ...
```
