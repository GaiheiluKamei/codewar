current_dir = File.dirname(__FILE__)

code_files = Dir[File.join(current_dir, "..", "*.rb")]
code_files.each { |f| require_relative f }
