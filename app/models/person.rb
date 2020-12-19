class Person < ApplicationRecord

    def bmi
        weight / height * 2
    end

end
