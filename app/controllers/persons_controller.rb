class PersonsController < ApplicationController

    def index
        @persons = Person.all

        weight = params[:weight].to_f
        height1 = params[:height].to_f
        height2 = height1 / 100
    
        @BMI = (weight / (height2 ** 2)).round(2) 
    end

    def new
        @person = Person.new
    end
    
    def create
        person = Person.new(person_params)
        if person.save
            flash[:notice] = ''
            redirect_to :action => "index"
        else 
            redirect_to :action => "new"
        end
    end

    private

    def person_params
        params.require(:person).permit(:height, :weight, :name)
    end



end
