class PersonsController < ApplicationController

    def index
        @persons = Person.all
    end

    def new
        @person = Person.new
    end
    
    def create
        @person = Person.new(person_params)
        @person.save
    end

    private

    def person_params
        params.require(:person).permit(:height, :weight,:name)
    end



end
