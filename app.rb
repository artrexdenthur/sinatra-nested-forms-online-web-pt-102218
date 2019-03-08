require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
<<<<<<< HEAD
      # binding.pry
      @pirate = Pirate.create(params["pirate"])
      
      params["pirate"]["ships"].each do |ship|
=======
      binding.pry
      @pirate = Pirate.create(params)
      
      params[:pirates][:ships].each do |ship|
>>>>>>> b591cd6b1287c94861a0994710ad6fc200e37646
        @pirate.add_ship(ship)
      end
      
      erb :'pirates/show'
    end
    
  end
end
