require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

  def initialize(attr_hash=nil)
      attr_hash.each{|key, value| self.send("#{key.to_s}=", value) unless !self.respond_to?("#{key.to_s}=")} unless !attr_hash
  end
end
