#!/usr/bin/env ruby

class InvalidInput < Exception
end

class RecentlyUsedList
  include Enumerable

  def initialize options = {}
    @size = options.fetch(:size) { nil }
    @list = options.fetch(:list) { [] }
  end

  def << val
    @list.delete val if @list.include? val
    @list.unshift val

    @list.pop if over_capacity?

    return @list
  end

  def push val
    self.<< val
  end

  def over_capacity?
    @size and @size < @list.length
  end

  def method_missing(name, *args, &block)
    @list.send(name, *args, &block)
  end
end

def print_list list
  puts ""
  puts "Output:"
  list.each do |item|
    puts item
  end
  puts ""
end

def input_output size = nil
  options = size.nil? ? {} : {size: size.to_i}
  list = RecentlyUsedList.new options

  begin
    puts "Input (type 'quit' to end)"
    STDOUT.flush()
    input = STDIN.gets.chomp
    exit if 'quit' == input
    list << input

    print_list list
  end while true
end


if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts input_output(*ARGV)
end
