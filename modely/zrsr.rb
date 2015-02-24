# -*- encoding : utf-8 -*-
class Sro
  include DataMapper::Resource
  
  property :nazov, String, :key => true
  has n, :operations
end

class Operation
  include DataMapper::Resource
  
  property :id, Serial
  property :popis, String
  belongs_to :sro

end
