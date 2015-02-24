# -*- encoding : utf-8 -*-
require 'data_mapper'
require  'dm-migrations'
require 'sqlite3'

# pripojenie konfiguracii spojenia
require './config.rb'

# pripojenie modelov
require './modely/zrsr.rb'
require './modely/dusr.rb'
require './modely/banka.rb'

# finalizacia modelov pred pouzivanim
DataMapper.finalize

# automigracie
DataMapper.auto_migrate!
DataMapper.repository(:dusr){Person.auto_migrate!}
DataMapper.repository(:banka){Ucet.auto_migrate!}

# seed data
Sro.create(:nazov => "Test s.r.o.")
["automatizované spracovanie dát ",
"služby databánk",
"správa sietí",
"sprostredkovateľská činnosť v rozsahu predmetu podnikania",
"školiaca a konzultačná činnosť v rozsahu predmetu podnikania",
"finančný lízing",
"uloženie vecí",
"funkciu depozitára",
"poskytovanie bankových informácií"
].each { |r| Operation.create(:popis => r, :sro_nazov => "Test s.r.o.") }

DataMapper.repository(:dusr){Person.create(:rc => "910275-6018", :dlznik => true)}
DataMapper.repository(:dusr){Person.create(:rc => "780913-7894", :dlznik => true)}
DataMapper.repository(:dusr){Person.create(:rc => "830725-6578", :dlznik => false)}

DataMapper.repository(:banka){Ucet.create(:iban => "SK1505000000000000001100", :balance => 1000)}
DataMapper.repository(:banka){Ucet.create(:iban => "SK3505000000000000001100", :balance => 3000)}
DataMapper.repository(:banka){Ucet.create(:iban => "SK5505000000000000001100", :balance => 5000)}

