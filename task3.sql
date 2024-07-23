update "Students"
    set address = '+79999999999',  phone_number = 'Tyumen'
    where student_id = 1;

update "Courses"
    set description = 'advanced biology '
    where course_id = 4;

update "Enrollments"
    set grade = 1
    where student_id = 1;