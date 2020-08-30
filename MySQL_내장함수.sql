
#다양한 SQL 내장 함수들alter

#1. LENGTH
SELECT length('aaaa');
#2. CONCAT: 문자열 합치기
SELECT CONCAT('MY','SQl');
#3. Locate: 해당 문자열 중에서 내가 찾고자 하는 문자열이 어디에 있는지를 반환해줌
SELECT LOCATE('abc','abababababababababc');
#mysql에서는 문자열의 시작 인덱스를 1부터 계산함

#4.LEFT(), RIGHT()
#해당 위치 시작부터 statement,N N개 까지만 보여줘!
SELECT
LEFT('AaaaaaaaaaaaaaaaaaaaaaaaaaaaaAA',5),
RIGHT('BBBBBBBBBBBBBBBBBBBBBBBbbbb',5);

#5. LOwer, Upper()
#소문자로 다 바꿔줘, 대문자로 다 바꿔줘
SELECT
lower('AaaaaaaaaaaaaaaaaaaaaaaaaaaaaAA'),
Upper('BBBBBBBBBBBBBBBBBBBBBBBbbbb');

#6. Replace
#특정문자열을 대체 문자열로 다 바꿔줘
SELECT Replace('MSSQL','MS','MY');

#7. TRIM
#특정 문자열의 앞 뒤 또는 양쪽 모두에 있는 특정 문자 제거
SELECT TRIM('                  MysQL            ');#공백 제거
SELECT TRIM(leading '#' FROM '####MYSQL##'),#앞에 있는 #제거해줘
trim(trailing '#' FROM '####MYSQL###'); #뒤에 있는 #제거해줘

#8. FORMAT()
SELECT FORMAT(123123123213123213.12321341234,3);
#3개씩 끊어서 보여주고, 소숫점은 3개까지만 보여줘!

#9. 내림(FLOOR()) 올림(CEIL()) 반올림(ROUND())
SELECT floor(3.3),ceil(3.3),round(3.3);

#10. SORT() POW() EXP() LOG()
SELECT SQRT(4),POW(2,3),EXP(3),LOG(3);
#각각의 함수들의 값 sort는 양의 제곱근 pow는 2^3, exponantial값 ,log값

#11. Sin() Cos() Tan() 값
SELECT SIN(PI()/2),COS(PI()),TAN(PI()/4);
#PI()라는 함수가 파이라고 생각하면 된다.

#12. ABS() 절대값을 보여준다. RAND() 임의의 랜덤값을 보여준다.
SELECT ABS(-3),ROUND(RAND()*100,0);
#ROUND는 0부터 1사이의 값이기 때문에 *100해서 만들 수 있다.

#13. 날짜
#Now() 지금 현재 날짜+시각 반환
#Curdate() 지금 현재 날짜 반환 YYYY-MM-DD
#Curtime() 현재 시각을 반환    HH:MM:SS

SELECT NOW(),CURDATE(),CURTIME();

#DATE(NOW()): 현재 시간에 대한 날짜만
#MONTH(NOW())
#DAY(NOW())
#HOUR(NOW())

SELECT
MONTHNAME(NOW()), #현재의 MONTRHNAME
DAYNAME(NOW()),
DAYOFWEEK(NOW()),
DAYOFMONTH(NOW()),
dayofyear(NOW()); #기준을 맞춰서 보여주기

SELECT 
DATE_FORMAT(NOW(), '%D %y %a %d %m %n %j')