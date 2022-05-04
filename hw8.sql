CREATE DATABASE school;
USE school;

create table student (
    id int auto_increment unique primary key,
    firstname varchar(20) null,
    lastname varchar(20) null,
    email varchar(20) null
);

create table student_address (
    id int auto_increment unique primary key,
    street varchar(15) not null,
    number int not null,
    studentId int not null,
    foreign key (studentId) references student(id)
);

create table class (
    id int auto_increment unique primary key,
    class_subject varchar(15) not null,
    studentId int not null,
    foreign key (studentId) references student(id)
);

Create table student_class_association (
    classId int not null,
    studentId int not null
);

insert into student (firstname, lastname, email) values ('Johnny', 'Depp', 'jdepp@gmail.com'),
 ('Johnny', 'Bravo', 'jbravo@gmail.com'),
 ('Natalie', 'Portman', 'nportman@gmail.com'),
 ('Rafael', 'Devers', 'rdevers@gmail.com'),
 ('David', 'Ortiz', 'dortiz@gmail.com'),
 ('Jayson', 'Tatum', 'jtatum@gmail.com'),
 ('Jaylen', 'Brown', 'jbrown@gmail.com'),
 ('Jennifer', 'Aniston', 'janiston@gmail.com'),
 ('Julia', 'Roberts', 'jroberts@gmail.com'),
 ('Margot', 'Robbie', 'mrobbie@gmail.com');
select * from student;

insert into student_address (street, number, studentId) VALUES ('RedSox Ave', 34, 1),
                                                               ('RedSox Ave', 34, 2),
                                                               ('RedSox Ave', 34, 3),
                                                               ('RedSox Ave', 34, 4),
                                                               ('RedSox Ave', 34, 5),
                                                               ('Celtics Ave', 7, 6),
                                                               ('Celtics Ave', 7, 7),
                                                               ('Celtics St', 7, 8),
                                                               ('Celtics St', 7, 9),
                                                               ('Celtics St', 7, 10);
select * from student_address;

insert into class (class_subject, studentId) VALUES ('Math', 1),
                                                    ('Math', 2),
                                                    ('Math', 3),
                                                    ('Math', 4),
                                                    ('Math', 5),
                                                    ('History', 6),
                                                    ('History', 7),
                                                    ('History', 8),
                                                    ('History', 9),
                                                    ('History', 10),
                                                    ('Science', 1),
                                                    ('Science', 2),
                                                    ('Science', 3),
                                                    ('Science', 4),
                                                    ('Science', 5),
                                                    ('English', 6),
                                                    ('English', 7),
                                                    ('English', 8),
                                                    ('English', 9),
                                                    ('English', 10);
select * from class;