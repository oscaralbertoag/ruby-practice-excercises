# Corrupt Teacher Grade Average
## Requirements
Create `corrupt_average(grades, paid)`, which will be used by a corrupt teacher to calculate the grades of a student based on whether they paid the teacher or not. If a student has paid the teacher, said teacher will help the student by adding another grade of `10` to inflate the overall average. If the student hasn't paid, the teacher will add another grade of `5` to bring down the final average of the student. This is one evil teacher  :smiling_imp: !!
### Parameters
* `grades`: is a list of a student's grades (**integers**)
* `paid`: is a **boolean** variable that tells you if the student paid the teacher to get help with his/her grades.
### Business logic
This method should return a student's average (as a **float**).
If `paid` is true, then as a corrupt teacher you will help the student by adding an additional grade of `10` to their list of grades and then calculating the average (this will help them by inflating their average).
If `paid` is false, then as an evil, corrupt teacher you will punish the student by adding a new grade of `5` to their list of grades and then calculating the average (this will hurt them by reducing their average).
### Examples 
1)
```bash
// command:
corrupt_average([7,8,9], true)
// returns: 
8.5
```
2)
```bash
// command: 
corrupt_average([7,8,9], false)
// returns: 
7.25
```