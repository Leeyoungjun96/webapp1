drop table members;
drop table board;


create table members(
    mid     varchar(20)     primary key,
    mname   varchar(20)     not null,
    mpassword   varchar(20) not null
);

create table board(
    bno                         number(5)       primary key,
    btitle                      varchar(1000)   not null,
    bcontent                    clob            not null,
    bwriter                     varchar(20)     references members(mid) on delete cascade,
    bdate                       date            not null,
    bhitcount                   number(5)       not null,
    battachsavefilename         varchar(100)    null,
    battachoriginalfilename     varchar(100)    null,
    battachcontenttype          varchar(50)     null
);

create sequence bno_seq;

create table accounts(
    ano         varchar(50)     primary key,
    abalance    number(10)      not null,
    aowner      varchar(10)     not null
);

