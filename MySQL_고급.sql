
#SQL 고급
CREATE TABLE city2 as select * from city;
SELECT * FROM city2; #table복사

#DB만들기
CREATE DATABASE seokmin;
USE seokmin;

SELECT * FROM test;

CREATE TABLE test2 (
	id INT NOT NULL PRIMARY KEY,
    col1 INT NULL,
    col2 FLOAT NULL,
    col3 varchar(45) NULL
);
#GUI없이 명령어로 Table 생성하는 방법 

SELECT * From test2;

ALTER Table test2
ADD col4 INT NULL;

DESC test2;

ALTER Table test2
modify col4 varchar(20) NULL;
#행을 수정해줄때 사용함

alter table test2 #alter과 꼭 같이 사용해야함
DROP col4;
#행을 삭제할때 사용함

###INDEX
#수정이 덜있는 곧에서 사용하면 좋음

CREATE INDEX col1IDX
on test (col1);

show index from test;


CREATE unique INDEX col2IDX
on test (col2); #non unique가 0 으로 되어있음

ALTER table test
ADD FULLTEXT COL3Idx(col3); #문자열을 모두 탐색할 때 사용하는 명령어 index_type의 형태가 바뀜
Show INDEX from test; 

ALTER table test
Drop index COL3Idx;
drop INDEX col2lDX;


### VIEW
## database에 존재하는 가상 Table을 보여줌
#한번 정의된 view는 바꿀 수 없음 
#view는 index를 보여줄 수 없음


CREATE view testview as
SELECT Col1, Col2
from test;

SELECT * from testview;

drop view testview;

##LAB#07
USE world;

CREATE view allVIEW as 
SELECT city.name, country.SurfaceArea, city.Population, countrylanguage.Language
FROM city
JOIN country ON city.COuntryCode = country.Code
Join countrylanguage on city.CountryCode = countrylanguage.CountryCode
where city.CountryCode = 'KOR';

SELECT * from allVIEW;


Use seokmin
Insert Into test;



DESC test;

Select * from test; #GUI로 Insert 하는 법
#apply까지 눌러주어야함

Insert Into test2 Select * From test;

Select * from test2; # table 복사

Update test
Set col1=1,col2=1.0,col3='test'
where id = 1;#where을 안쓰면 모든 행이 다 바뀌어 버림으로 주의해야함

DELETE FROm test
where id = 1;
#table 용량 자체가 지워지지 않음 왜냐하면 rollback이 가능하기 때문에
#대신에 truncate를 사용하면 복구가 불가능 하다.
#삭제후 절대 돌릴 수 없


