class PersonsController < ApplicationController

    def index
        @person = Person.find_by(user_id:current_user.id)
        @persons = Person.all
        @BMI = (@person.weight.to_f * 10000/ @person.height.to_f ** 2)
        @my_BMI = @BMI.round(1)
    end

    def show
        @person = Person.find(params[:id])
        @BMI = (@person.weight.to_f * 10000/ @person.height.to_f ** 2)
        @my_BMI = @BMI.round(1)
    end

    def new
        @person = Person.new
    end
    
    def create
        @person = Person.new(person_params)
        @person.user_id = current_user.id
        if @person.save
            flash[:notice] = ''
            redirect_to :action => "show", :id => @person.id
        else 
            redirect_to :action => "new"
        end
    end

    private

    def person_params
        params.require(:person).permit(:height, :weight, :name)
    end



end
