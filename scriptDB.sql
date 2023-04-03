create table User(
	user_id int auto_increment primary key,
    name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50) not null,
    password varchar(50) not null
);


create table Task(
	task_id int auto_increment primary key,
    name varchar(50) not null,
    finished bool default false,
    user_id int references User(user_id),
    created_at timestamp default current_timestamp
);
