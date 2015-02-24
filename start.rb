# -*- encoding : utf-8 -*-
require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'data_mapper'

# konfiguracia
require './config.rb'

# modely
require './modely/zrsr.rb'
require './modely/dusr.rb'
require './modely/banka.rb'

# pseudokontroler
require './api_controller.rb'

DataMapper.finalize
