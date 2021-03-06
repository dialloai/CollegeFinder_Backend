#CollegesController

class CollegesController < ApplicationController

    def index

        colleges = College.all       
        render json: colleges.to_json(serialize_data)
          # college = College.all
          # render json: college
          # ({except: [:created_at, :updated_at]})  
        end
  
      #   def index
      #     @colleges = College.order(:name)
      #     render json: @colleges.to_json(:except => [:created_at, :updated_at])
      #   end
  
        def show
          @college = College.find(params[:id])
          render json: @college.to_json(serialize_data)
        end
  
        def create
          @college = College.create(college_params)
          render json: @college
        end
  
      #   def search
      #     @college = College.where(name: params[:name])
      #     render json: @college.to_json
      #   end
  
      def search
      
          @college = College.search_by_term(params[:query])
  
          render json: @college
      end
  
        private
  
        def college_params
          params.require(:college).permit(:image, :name, :location, :tuition, :overview, :website)
        end
  
        def serialize_data        
        {:except => [:created_at,:updated_at]}
        end
end
