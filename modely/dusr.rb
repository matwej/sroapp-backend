# -*- encoding : utf-8 -*-
class Person
 include DataMapper::Resource
	
 property :id, Serial
 property :rc, String
 property :dlznik, Boolean

end
