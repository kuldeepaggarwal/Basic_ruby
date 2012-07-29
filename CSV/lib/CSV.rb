class CSV
  def initialize
  	@name = ""
  	@emp_id = ""
    @designation = ""
  	@designation_hash = Hash.new(Array.new())
  end
  def load_employees(from_file, to_file)
    File.readlines(from_file).each do |line|
      @name, @emp_id, @designation = line.split(",")
      @designation = @designation.gsub(/\s/, "")
      @emp_id = @emp_id.gsub(/\s/, "")
      @name = @name.gsub(/\s/, "")
      @designation_hash[@designation] += [@name + "(Empid: " + @emp_id + ")"]
    end
    File.open(to_file, "w") do |file|
      @designation_hash.sort.each do |key, value|
      	file.puts key + "s"
        file.puts value
        file.puts 
      end
    end
  end
end