module Api
  def self.resources
    ActiveRecord::Base.connection.tables.map{|i| i.to_sym }
  end
end
