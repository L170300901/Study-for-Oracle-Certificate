--Optimizer (최적화기)
--CBO(비용기반)
--RBO(공식기반) 비용을 따지지않고 인덱스가 있으면 무조건 인덱스 사용한다

SELECT * From EMP WHERE empno=7369;

SELECT empno, ROWID from EMP ORDER BY empno; --인덱스

인덱스 만드는 명령어
CREATE INDEX i_emp_job ON EMP(job);
CREATE INDEX I_EMP_deptno ON EMP(deptno);
CREATE INDEX I_EMP_deptno_job ON EMP(deptno,job); --복합칼럼 인덱스

--------------RBO------------------
--1순위 rowid로 찾는게 가장 빠르다 (페이지번호 알아서 바로 펼치는것) 단일행 검색
SELECT * From EMP WHERE rowid='AAAE5eAAEAAAAFcAAA';

--4순위 unique index에 대한 equal검색

--8순위 복합인덱스로 equal검색
------싱글칼럼인덱스보다 복합이 빠르고
--------복합중에서도 데이터량이 적은걸 앞에 검색하게 하는게 더 빠르다
SELECT * FROM EMP WHERE job='SALESMAN' AND deptno=30
--9순위 단일인덱스로 equal검색

--10순위 인덱스가 구축된 칼럼에 대한 제한된 범위 검색
------범위검색하면 유닉인덱스 난유닉인덱스 상관없음

--11순위 인덱스가 구축된 칼럼에 대한 무제한 범위 검색







