class CatsController < ApplicationController

    get '/cats' do
         Cat.all.to_json
    end

    get "/cats/:cat_id" do
        begin 
            cat = Cat.find(params[:cat_id])
        rescue ActiveRecord::RecordNotFound
            redirect '/cats'
        end 
        if !!cat 
            cat.to_json 
        end 
    end 



end 