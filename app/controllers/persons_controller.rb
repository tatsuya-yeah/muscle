class PersonsController < ApplicationController

    def index

        @person = User.find(current_user.id)
        @BMI = (@person.weight / @person.height ** 2)

    end

    def show
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
