def corrupt_grades(grades, paid)
    copy_of_grades = grades
    copy_of_grades.append(paid ? 10 : 5)
    sum = 0
    
    grades.each do |grade|
        sum += grade
    end

    sum.to_f/copy_of_grades.size
end