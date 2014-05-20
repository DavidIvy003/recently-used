#!/usr/bin/env ruby

class InvalidInput < Exception
end

class RecentlyUsedList
  # include Enumerable

  def initialize
    @list = []
  end

  # def empty?
  #   @list.count == 0
  # end

  def <<(val)
    @list.delete val if @list.include? val
    @list.unshift val
    return @list
  end

  # def each
  #   @list.each do |item|
  #     yield item
  #   end
  # end

  # def [] index
  #   @list[index]
  # end

  def method_missing(name, *args, &block)
    puts name
    @list.send(name, *args, &block)
  end
end


if __FILE__ == $0
  # this will only run if the script was the main, not load'd or require'd
  puts 'YESSSSSSS'
end
