#require "employess_designation"
require "../lib/CSV"
default_file = File.join(File.dirname(__FILE__),'employess_designation.csv')
to_file = "result_file.text"
csv = CSV.new()
csv.load_employees(ARGV.shift ||default_file, to_file)