DESCRIBE city;
DESC country;		  
DESC countrylanguage; #Field,Type,NULL,Key등을 알 수 있다.
SELECT * FROM city; #city에 대한 전체 열들의 값들을 볼 수 있다. 
					#*(ALL)의 의미 
SELECT Name, Population From city; # Name과 population만 보겠다.
SELECT * 
From city
WHERE Population < 8000000 #8000000만 이상의 사람들만 보고 싶을 때 Where은 조건을 걸 수 있다.
AND Population > 7000000;	#관계연산자: NOT,AND,OR등을 써서
							#700000만 이상인데 80000000만 이하인 사람들을 찾아 낼 수 있다.
							#조건과 관계연산자를 이용해 내가 원하는 Data들을 뽑아낼 수 있다

#한국에서 인구가 1000000만 이상의 도시만 출력하기
DESC city;
SELECT *
FROM city
WHERE CountryCode = 'KOR'
AND Population >= 1000000;

#Between 사용하기 (범위 지정에 간단해짐)
SELECT *
from city
Where Population Between 7000000 AND 8000000;

#IN 사용하기 Name안에서 값이 있는 것만 뽑아서 출력할 수 있다.
SELECT * 
FROM city
WHERE CountryCode IN('KOR','USA','JPN');

SELECT *
FROM city;

#LIKE: 문자열 검색할 떄 사용
SELECT * 
FROM city
WHERE District LIKE 'Ka%'; #문자뒤에 %는 무엇이든 사용가능하고 _는 한 글자와 매치할때만 사용가능함



#SubQurey
#특정 qurey안에 하나의 qurey가 더 있는 것
SELECT *
FROM city
Where CountryCode = ( 	SELECT CountryCode
						FROM city
						where Name = 'Seoul' );

#ALL: 가장 높은 값을 만족하는 것을 출력함alter
#SOME or ANY는 상관없이 아무거나 가능하다.
SELECT * 
FROM city
WHERE Population > ALL ( SELECT Population
						 FROM city
						 where District = 'New York' );

#인구수를 Descending해서 보여주는 것이다.
#Default값은 ASC이다.
SELECT *
FROM city
order by Population DESC, CountryCode;	

#LAB#04
#인구수로 내림차순하여 한국에 있는 도시 보기
SELECT *
FROM city
WHERE CountryCode = 'KOR'
order by Population DESC;

#국가 면적 크기로 내림차순하기
SELECT *
from country
order by SurfaceArea DESC

