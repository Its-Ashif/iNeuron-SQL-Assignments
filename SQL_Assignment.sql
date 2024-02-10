create database LinkedIn;
use LinkedIn;
create table AI_Tools (Id int(3), Technology varchar(30));
insert into AI_Tools values (1,"DS"), (1, "Tablean"), (1,"SQL"),(2,"R"),(2,"Power BI"),(1,"Python");
select * from AI_Tools;
select Id from AI_Tools where Technology in ("DS","Tablean","SQL","Python") group by Id having count(Technology) = 4 order by Id;

create database Ecommerce;
use Ecommerce;
create table Product_Info (pr_id int(4) primary key,product_name varchar(30));
insert into Product_Info values (1001,"Blog"),(1002,"Youtube"),(1003, "Education");

create table Product_Info_Likes (user_id int(3), pr_id int(4) ,liked_date date, foreign key(pr_id) references Product_Info(pr_id));
insert into Product_Info_Likes values (1,1001,"2023-08-19"),(2,1003,"2023-01-18");

select pr_id from Product_Info where pr_id not in (select pr_id from Product_Info_Likes);