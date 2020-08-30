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
                            
