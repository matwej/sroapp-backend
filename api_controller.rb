# -*- encoding : utf-8 -*-
use Rack::Auth::Basic, "Zabezpečný prístup" do |username, password|
  username == 'frontend' && password == 'frontend'
end

# skontroluje cinnost zaregistrovanu v ziv. registry
get "/checkop/:nazov/:op" do
  out = Operation.first(:popis => params[:op], :sro_nazov => params[:nazov])
  if out
   "1"
  else
   "0"
  end
end

# kontrola danovej podlznosti
get "/checktax/:rc" do
  out = DataMapper.repository(:dusr){Person.first(:rc => params[:rc])}
  if !out
   "false"
  else
   out.dlznik.to_s
  end
end

# kontrola stavu bankoveho uctu
get "/getStatus/:iban" do
  out = DataMapper.repository(:banka){Ucet.first(:iban => params[:iban])}
  if !out
   "0"
  else
   out.balance.to_s
  end
end
