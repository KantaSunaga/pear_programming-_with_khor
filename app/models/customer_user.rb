class CustomerUser < ApplicationRecord
require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers: false) do |row|
     CustomerUser.create({first_name: row[0],
                          last_name: row[1],
                          email: row[2],
                          phone: row[3]})
    end
  end
end
