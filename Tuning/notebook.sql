--Optimizer (����ȭ��)
--CBO(�����)
--RBO(���ı��) ����� �������ʰ� �ε����� ������ ������ �ε��� ����Ѵ�

SELECT * From EMP WHERE empno=7369;

SELECT empno, ROWID from EMP ORDER BY empno; --�ε���

�ε��� ����� ��ɾ�
CREATE INDEX i_emp_job ON EMP(job);
CREATE INDEX I_EMP_deptno ON EMP(deptno);
CREATE INDEX I_EMP_deptno_job ON EMP(deptno,job); --����Į�� �ε���

--------------RBO------------------
--1���� rowid�� ã�°� ���� ������ (��������ȣ �˾Ƽ� �ٷ� ��ġ�°�) ������ �˻�
SELECT * From EMP WHERE rowid='AAAE5eAAEAAAAFcAAA';

--4���� unique index�� ���� equal�˻�

--8���� �����ε����� equal�˻�
------�̱�Į���ε������� ������ ������
--------�����߿����� �����ͷ��� ������ �տ� �˻��ϰ� �ϴ°� �� ������
SELECT * FROM EMP WHERE job='SALESMAN' AND deptno=30
--9���� �����ε����� equal�˻�

--10���� �ε����� ����� Į���� ���� ���ѵ� ���� �˻�
------�����˻��ϸ� �����ε��� �������ε��� �������

--11���� �ε����� ����� Į���� ���� ������ ���� �˻�







