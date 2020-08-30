# study_sql


## SQL의 분류

### DML

* 데이터 조작 언어
* 데이터를 조작(선택, 삽입, 수정,삭제)하는데 사용되는 언어
* DML 구문이 사용되는 대상은 테이블의 행
* DML 사용하기 위해서는 꼭 그 이전에 테이블이 정의되어 있어야함
* **SELECT/INSERT/UPDATE/DELETE**가 이 구문에 해당
* Transaction이 발생하는 SQL도 이 DML에 속함
> Transaction: 테이블의 데이터를 변경할 때 실제 테이블에 완전히 적용하지 않고, "임시"로 적용시키는 것(취소가능)

### DDL

* 데이터 정의 언어
* 데이터베이스,테이블,뷰,인덱스 등의 데이터베이스 개체를 생성/삭제/변경하는 역할
* **CREATE,DROP,ALTER** 구문
* DDL은 트랜잭션 발생시키지 않음
* ROLLBACK이나 COMMIT 사용 불가
* DDL문은 사용 즉시 MySQL에 적용

### DCL

* 데이터 제어언어
* 사용자들에게 어떤 권한을 부여하거나 빼앗을 때 주로 사용하는 구문
* **GRANT/REVOKE** 구문