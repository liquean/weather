class SearchController < ApplicationController
    before_action :authorize_request

    api :POST, '/search', 'Search the weather of a given city' 
    def search 
        if params[:city].blank?
        render json: { error: "City can't be blank" }, status: :not_found
        else
            begin
                @result = OpenWeatherClient.search(params[:city])
                @searchItem = SearchItem.new(:user_id => @current_user.id, :city => params[:city])
                @searchItem.save
                render json: @result, status: :created
            rescue
                render json:  { error: "City not found" }, status: :not_found
            end
        end
    end

    api :GET, '/search_history', 'Get the search history of an user' 
    def get_search_history
        @history = SearchItem.where(:user_id => @current_user.id).paginate(:page => params[:page], per_page: 10)
        render :json => {
            :current_page => @history.current_page,
            :items_per_page => @history.per_page,
            :total_entries => @history.total_entries,
            :entries => @history
        }
    end

end
