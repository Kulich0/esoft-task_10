insert into "Students" (first_name, last_name, date_of_birth, email, phone_number, address, enrollment_date, gpa) values
    ('Stepan', 'Dubrovin', '2005-03-21', 'stepan.09myromec@gmail.com', '+79128256235', null, '2020-09-01', 2),
    ('Andrei', 'Pushkin', '2024-05-11', 'pushkin@mail.ru', '+79828257739', 'Tavda', '2021-03-02', 3),
    ('Egor', 'Zolotov', '2002-01-01', 'zoloto@gmail.com', '+79758656342', null, '2021-03-02', 5),
    ('Dgeki', 'Chan', '1999-02-02', 'chan@yandex.com', '+79998775544', 'Changan', '2021-03-02', null),
    ('Sergey', 'Haval', '1997-04-22', 'haval@mail.ru', '+79977774524', null, '2023-02-01', 3);

insert into "Courses" (course_name, description, credits, department) values
    ('Algebra', 'math', 2, 'Mathematics'),
    ('JS', 'learning js', 3, 'Programming'),
    ('History', 'world history', 2, 'History'),
    ('Biology ', 'world Biology ', 4, 'Biology ');

insert into "Enrollments" (student_id, course_id, enrollment_date, grade) values
    (1, 1, '2020-09-01', 85),
    (2, 2, '2020-09-01', 90),
    (3, 3, '2020-09-01', null),
    (4, 1, '2020-09-01', 88),
    (5, 2, '2020-09-01', 75);