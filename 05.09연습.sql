--<< 도전문제 >>
-- 인사관리 ( hr 계정 )에서 EMPLOYEES 테이블에서

--1. EMPLOYEES 테이블에서 사원 이름을 first_name과 last_name를 합쳐 full_name으로 출력
SELECT FIRST_NAME || ' ' || LAST_NAME   AS FULL_NAME FROM employees;
 
--2. 부서번호가 30(구매부서)이고 급여 10000미만인 사원의 full_name과 월급,부서번호를 출력
SELECT FIRST_NAME || ' ' || LAST_NAME   AS FULL_NAME , SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30 AND SALARY < 10000 ;

--3. 부서번호가 30이고 급여가 10000달러 이하를 받는 2006년도 이전 입사한 사원의 full_name을 출력
SELECT FIRST_NAME || ' ' || LAST_NAME   AS FULL_NAME 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30 AND SALARY <= 10000 AND HIRE_DATE < TO_DATE('2006-01-01', 'YYYY-MM-DD') ;

--4. 부서번호가 30(구매부서)이고 급여가 10000이하인 사원과 부서번호가 60(IT부서)에서 급여가 5000이상인 사원을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME   AS FULL_NAME 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30 AND SALARY <= 10000 AND HIRE_DATE  ;
--5. 사원번호가 110번에서 120번인 사원 중 급여가 5000에서 10000사이의 사원명단을 조회
 
--6. 사원번호가 110번에서 120번이 아닌 사원을 조회
 SELECT * FROM employees;
--7. 부서번호가 30(구매부서), 60(IT부서), 90(경영부서)에 속한 사원을 조회
 
--8. 부서번호가 30(구매부서), 60(IT부서), 90(경영부서) 외의 부서에 속한 사원을 조회
 
--9. 전화번호에서 590으로 시작하는 사원명과 전화번호를 조회


--1. EMPLOYEES 테이블에서 사원 이름을 first_name과 last_name를 합쳐 full_name으로 출력
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME --AS는 생략가능, 저장되는게 아니므로 일일히 사용해야함
FROM employees;

--2. 부서번호가 30(구매부서)이고 급여 10000미만인 사원의 full_name과 월급,부서번호를 출력
SELECT FIRST_NAME || ' ' || LAST_NAME as FULL_NAME , SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30 AND SALARY<10000;

--3. 부서번호가 30이고 급여가 10000달러 이하를 받는 2006년도 이전 입사한 사원의 full_name을 출력
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, DEPARTMENT_ID, SALARY, HIRE_DATE
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30 AND SALARY <= 10000 AND HIRE_DATE < '06/01/01';

--4. 부서번호가 30(구매부서)이고 급여가 10000이하인 사원과 부서번호가 60(IT부서)에서 급여가 5000이상인 사원을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE (DEPARTMENT_ID = 30 AND SALARY <= 10000) OR (DEPARTMENT_ID = 60 AND SALARY>= 5000);

--5. 사원번호가 110번에서 120번인 사원 중 급여가 5000에서 10000사이의 사원명단을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, SALARY, EMPLOYEE_ID
FROM EMPLOYEES
WHERE (EMPLOYEE_ID BETWEEN 110 AND 120) AND (SALARY BETWEEN 5000 AND 10000); 

--6. 사원번호가 110번에서 120번이 아닌 사원을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, EMPLOYEE_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID NOT BETWEEN 110 AND 120;

--7. 부서번호가 30(구매부서), 60(IT부서), 90(경영부서)에 속한 사원을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (30, 60, 90);

--8. 부서번호가 30(구매부서), 60(IT부서), 90(경영부서) 외의 부서에 속한 사원을 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (30, 60, 90);

--9. 전화번호에서 590으로 시작하는 사원명과 전화번호를 조회
SELECT FIRST_NAME || ' ' || LAST_NAME as FULLNAME, PHONE_NUMBER
FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '590%';