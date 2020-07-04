#!/bin/ruby

require 'date'

date = DateTime.parse(Time.now.to_s).strftime('%d_%m_%Y_%H_%M_%S')

dest = './Pictures/Screenshots'
if !Dir.exists?(dest)
  Dir.mkdir(dest)
end

`maim #{dest}/screenshot_#{date}.png`

