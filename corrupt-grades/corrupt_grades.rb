def corrupt_grades(grades, paid)
    altered_grades = grades
    altered_grades.append(paid ? 10 : 5)
    altered_grades.sum.to_f/altered_grades.size
end