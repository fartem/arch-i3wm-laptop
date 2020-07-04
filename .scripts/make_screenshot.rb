#!/bin/ruby

require 'date'

date = DateTime.parse(Time.now.to_s).strftime('%d_%m_%Y_%H_%M_%S')

`maim screenshot_#{date}.png`

