create table guestbook_message(
	message_id int not null auto_increment primary key,
    guest_name varchar(50) not null,
    password varchar(10) not null,
    message text not null
    ) engine=InnoDB default character set = utf8mb4;
    
    /*auto_increment -> 이거 오라클 때 했던 시퀀스랑 같은 맥락임!!*/	