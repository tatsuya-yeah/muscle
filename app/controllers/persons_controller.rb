class PersonsController < ApplicationController

    def index

        @person = Person.find_by(user_id:current_user.id)
        @BMI = (@person.weight.to_f / @person.height.to_f ** 2)

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
