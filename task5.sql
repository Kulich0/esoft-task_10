select s.student_id, s.first_name, s.last_name, s.email
    from "Students" s
    join Enrollments e on s.student_id = e.student_id
    where e.course_id = 2
    order by s.last_name; 
    
select c.course_id, c.course_name, count(e.student_id) as student_count
    from "Courses" c
    left join "Enrollments" e on c.course_id = e.course_id
    group by c.course_id, c.course_name;

select student_id, first_name, last_name, gpa
    from "Students"
    where gpa > 3;

select s.student_id, s.first_name, s.last_name, c.course_id, c.course_name, e.enrollment_date
    from "Enrollments" e 
    join "Students" s on e.student_id = s.student_id
    join "Courses" c on e.course_id = c.course_id
    where e.enrollment_date >= current_date - interval '1 month';

select student_id, first_name, last_name, enrollment_date
    from "Students"
    where phone_number is null
    order by enrollment_date

select course_id, course_name, credits
    from "Courses"
    where department = 'History'
    order by credits;

select s.student_id, s.first_name, s.last_name, c.course_id, c.course_name, e.grade
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" c on e.course_id = c.course_id;

select  s.student_id, s.first_name, s.last_name, count(e.course_id) as course_count
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    group by s.student_id, s.first_name, s.last_name
    having count(e.course_id) > 1;

select s.student_id, s.first_name, s.last_name
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" c on e.course_id = c.course_id
    group by s.student_id, s.first_name, s.last_name
    having count(distinct c.department) != 2;

select c.course_id, c.course_name
    from "Courses" c
    left join "Enrollments" e on c.course_id = e.course_id
    where e.course_id is null

select s.*
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" c on e.course_id = c.course_id
    where c.department = 'Programming';

select s.*, c.credits
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" c on e.course_id = c.course_id
    order by c.credits desc;

select s.* 
    from "Students" s 
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" c on e.course_id = c.course_id
    order by s.gpa desc;

select s.* 
    from "Students" s 
    join "Enrollments" e on s.student_id = e.student_id
    where e.enrollment_date >= current_date - interval '1 year';

select s.*, count(e.course_id) as course_count
    from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    group by s.student_id, s.first_name, s.last_name
    order by course_count desc;