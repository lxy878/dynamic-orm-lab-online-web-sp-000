require_relative "../config/environment.rb"
require 'active_support/inflector'

require 'pry'

class InteractiveRecord

  def self.table_name
    self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true

    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    table_info.collect {|hash| hash["name"]}.compact
  end

  def initialize(attributes={})
    attributes.each do |key, value|
      self.send("#{key.to_s}=", value)
    end
  end

  def table_name_for_insert
    self.class.table_name
  end

  def col_names_for_insert
    self.class.column_names.delete_if {|name| name == 'id'}.join(', ')
  end

  def values_for_insert
    a = self.class.column_names.first
    binding.pry
  end

  def save

  end

  def self.find_by_name

  end

  def self.find_by_name

  end

end
