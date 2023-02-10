insert into roles ("id_Rol","name")
		values('1','admin'),('2','student'),('3','teacher')

insert into users (id_user,"name",email,"password",age,rol)
		values	('8ad69256-a8d2-11ed-afa1-0242ac120002','Raul Janampa','rjan@mail.com','r123','23','1'),
				('8ad695a8-a8d2-11ed-afa1-0242ac120002','Yashier Atentecio','yate@mail.com','y123','24','2'),
				('8ad69742-a8d2-11ed-afa1-0242ac120002','Juan Perez','jper@mail.com','j123','30',3)

select * from users