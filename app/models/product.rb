class Product < ActiveRecord::Base
  def self.index(search)
    select(:id)
  end
end
