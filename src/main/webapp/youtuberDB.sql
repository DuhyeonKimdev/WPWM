create table youtuber_account(

	a_no number primary key,
	a_id varchar2(30 char) not null,
	a_puuid varchar2(150 char) not null,
	a_channelURL varchar2(150 char) not null,
	a_channelID varchar2(30 char) not null

);
create sequence youtuber_account_seq;

insert into YOUTUBER_ACCOUNT values(YOUTUBER_ACCOUNT_seq.nextval, 'youtuber', 'puuid', 'chanerURL', 'chanerID');

select * from YOUTUBER_ACCOUNT;


drop table youtuber_account cascade constraint purge;
