require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      # @ship_1 = Ship.new(params[:pirate][:ship][0])
      # @ship_1 = Ship.new(params[:pirate][:ship][1])
      erb :'pirates/show'
    end


    # code other routes/actions here

  end
end
