class PizzaController < ApplicationController


    get '/pizzas' do 
        Pizza.all.to_json
    end 

    post '/pizzas' do 
        pizza = Pizza.create(
            name: params[:name],
            ingredients: params[:ingredients],
            desc: params[:desc],
            order_id: params[:order_id]
        )
        binding.pry
        pizza.to_json
    end 

end 