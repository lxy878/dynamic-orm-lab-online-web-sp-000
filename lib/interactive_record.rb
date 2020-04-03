require_relative "../config/environment.rb"
require 'active_support/inflector'

require 'pry'

class InteractiveRecord

  def initialize(attributes)

  end

  def self.table_name
    self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true

    sql = "pragma table_info('#{table_name}')"

  end

  def table_name_for_insert

  end

  def col_names_for_insert

  end

  def values_for_insert

  end

  def save

  end

  def self.find_by_name

  end

  def self.find_by_name

  end

end
