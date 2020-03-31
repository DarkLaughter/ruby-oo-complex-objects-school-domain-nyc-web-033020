# code here!
class School
attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end


    def add_student(name, grade)
        if roster[grade] == nil
            roster[grade] = [name]
        else roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def  sort
        sorted_students = {}
        roster.each do |key, value|
            sorted_students[key] =value.sort 
        end 
        sorted_students
    end
end
