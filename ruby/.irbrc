#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 10000000
IRB.conf[:BACK_TRACE_LIMIT] = 100
