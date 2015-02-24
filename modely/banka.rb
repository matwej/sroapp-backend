# -*- encoding : utf-8 -*-
class Ucet
 include DataMapper::Resource
	
 property :id, Serial
 property :iban, String
 property :balance, Integer

end
