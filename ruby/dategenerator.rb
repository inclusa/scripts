#!/usr/bin/env ruby -wKU
#
#
begin
  (Date.strptime('01-01-2019', '%d-%m-%Y')..Date.strptime('31-12-2019', '%d-%m-%Y')).each { |date| puts date }
rescue
  $! # => #<NameError: uninitialized constant Date>
end

require 'date'
(Date.strptime('01-01-2019', '%d-%m-%Y')..Date.strptime('31-12-2019', '%d-%m-%Y')).each { |date| puts date }
