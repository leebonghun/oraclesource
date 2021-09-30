SELECT
    *
FROM
    employees;
-- 사원번호가 176인 사람의 LAST_NAME 과 DEPARTMENT_ DI 조회

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;

-- SALARY 가 12000이상 되는 직원들의 LAST_NAME, SALARY 조회


--SALARY 가 5000~12000 범위 이외인 사원들의 LAST_NAME , SALARY 조회
SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 12000
ORDER BY
    salary DESC;
--
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 20, 50 );
--
SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
        hire_date <= '08/05/01'
    AND hire_date >= '08/02/20'
ORDER BY
    hire_date DESC;
--
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
        hire_date >= '04/01/01'
    AND hire_date <= '04/12/31'
ORDER BY
    hire_date ASC;
--
SELECT
    last_name
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLERK' );
-- BETWEEN
SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary NOT BETWEEN 5000 AND 12000;
--
SELECT
    last_name,
    department_id,
    salary
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 12000
    AND department_id IN ( 20, 50 );
--
SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '08/02/20' AND '08/05/01';
--
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%'
ORDER BY
    hire_date ASC;
--
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    last_name LIKE '%U%'; 
--
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '___a%';
--
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    OR last_name LIKE '%e%'
ORDER BY
    last_name ASC;
--연습문제
SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL; 
--
SELECT
    department_id
FROM
    employees
WHERE
    department_id IS NOT NULL
    AND job_id = 'ST_CLERK';
--
SELECT
    employee_id,
    first_name,
    job_id,
    salary * commission_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
--오라클 함수 

-- 내장함수 -1) 문자함수 
--             대소문자 변경 
--             UPPER (문자열) : 괄호 안 문자를 모두 대문자로 변환
--             LOWER (문자열) : 괄호 안 문자를 모두 소문자로 변환
--             INICAP (문자열) : 괄호 안 문자 중 첫글자만 대문자로 변환

SELECT
    ename,
    upper(ename),
    lower(ename),
    initcap(ename)
FROM
    emp;
-- ENAME이 SCOTT인 찾기
SELECT
    *
FROM
    emp
WHERE
    lower(ename) = 'scott';

SELECT
    *
FROM
    emp
WHERE
    lower(ename) LIKE lower('%scott%');

-- 문자 길이 구하기
-- LENGTH(문자열) : 해당 문자열의 길이 돌려줌
-- LENGTHB(문자열) : 해당 문자열의 바이트 수 돌려줌
SELECT
    ename,
    length(ename)
FROM
    emp;
--한글 한자당 3바이트씩 사용
--DUAL : 데이터베이스 관리자가 소유한 테이블 / 임시 연산이나 함수의 결과 값 확인 용도
SELECT
    length('한글'),
    lengthb('한글')
FROM
    dual;

SELECT
    *
FROM
    emp
WHERE
    length(job) >= 6;

-- 문자열 일부 길이 구하기
-- SUBSTR(문자열데이터, 시작위치, 추출길이)
-- SUBSTR(문자열데이터, 시작위치)

SELECT
    job,
    substr(job, 1, 2),
    substr(job, 3, 2),
    substr(job, 5)
FROM
    emp;  

--
SELECT
    substr(ename, 3)
FROM
    emp;

-- 문자열 데이터 안에서 특정 문자를 찾기
-- INSTR(문자열, 찾을 문자열, 시작위치, 몇번째에 있는걸 찾을 것인지)

SELECT
    instr('HELLO, ORACLE!', 'L'),
    instr('HELLO, ORACLE!', 'L', 5),
    instr('HELLO, ORACLE!', 'L', 2, 2)
FROM
    dual;

-- 원본 문자열 : 이것이 Oracle이다. 이것도 오라클이다
-- 찾을 문자열 : 이것
-- 제일 처음에 나오는 이것의 위치를 찾기
SELECT
    instr('이것이 Oracle이다. 이것도 오라클이다', '이것')
FROM
    dual;

SELECT
    instr('이것이 Oracle이다. 이것도 오라클이다', '이것', 3)
FROM
    dual;

SELECT
    instr('이것이 Oracle이다. 이것도 오라클이다', '이것', 1, 2)
FROM
    dual;

-- 사원 이름에 문자 S가 있는 행 구하기
SELECT
    *
FROM
    emp
WHERE
    instr(ename, 'S') > 0;

SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S%';

-- 특정 문자를 다른 문자로 바꾸는 함수
-- REPLACE(문자열 데이터 또는 열이름 , 찾는문자, 바꿀문자)
-- 010-1234-5678
SELECT
    replace('010-1234-5678', '-', ' '),
    replace('010-1234-5678', '-', '')
FROM
    dual;
-- 두 문자열 데이터를 합치는 함수
-- CONCAT(문자열1, 문자열2)
SELECT
    empno,
    ename,
    concat(empno, ename)
FROM
    emp
WHERE
    ename = 'SCOTT';
--
SELECT
    empno,
    ename,
    concat(empno, concat(':', ename))
FROM
    emp
WHERE
    ename = 'SCOTT';
-- || : 문자열 데이터 연결 연산자
SELECT
    empno || ename,
    empno
    || ' : '
    || ename
FROM
    emp
WHERE
    ename = 'SCOTT';
--
SELECT
    first_name,
    email,
    phone_number,
    lower(job_id)
FROM
    employees
WHERE
    first_name = 'Curtis';
--
SELECT
    employee_id,
    concat(first_name, last_name),
    department_id,
    job_id
FROM
    employees
WHERE
    job_id = 'AD_PRES'
    OR job_id = 'PU_CUERK';
--
SELECT
    employee_id,
    concat(first_name, concat(' ', last_name)),
    department_id,
    job_id
FROM
    employees
WHERE
    job_id = 'AD_PRES'
    OR job_id = 'PU_CUERK';
    
-- 숫자함수 : ROUND(숫자,반올림 위치)
--         : TRUNC(숫자,버림,위치(선택))
--         : CEIL(숫자) : 입력된 숫자와 가장 가까운 큰 정수
--         : FLOOR(숫자) : 입력된 숫자와 가장 가까운 작은 정수
--         : MOD(숫자,나눌숫자) : 나머지 값

SELECT
    round(1234.5678)             AS round,
    round(1234.5678, 0)          AS round0,
    round(1234.5678, 1)          AS round1,
    round(1234.5678, 2)          AS round2,
    round(1234.5678, - 1)         AS round_minus1,
    round(1234.5678, - 2)         AS round_minus2
FROM
    dual;
--
SELECT
    trunc(1234.5678)             AS trunc,
    trunc(1234.5678, 0)          AS trunc0,
    trunc(1234.5678, 1)          AS trunc1,
    trunc(1234.5678, 2)          AS trunc2,
    trunc(1234.5678, - 1)         AS trunc_minus1,
    trunc(1234.5678, - 2)         AS trunc_minus2
FROM
    dual;
--
SELECT
    ceil(3.14),
    floor(3.14),
    ceil(- 3.14),
    floor(- 3.14)
FROM
    dual;
--
SELECT
    mod(15, 6),
    mod(10, 2),
    mod(11, 2)
FROM
    dual;
-- 날짜 함수
-- SYSDATE : 오라클 데이터베이스 서버가 설치된 OS와 현재 날짜와 시간
-- ADD_MONTHS : 몇 개월 이후 날짜를 구하는 함수
SELECT
    sysdate      AS now,
    sysdate - 1    AS yesterday,
    sysdate + 1    AS tomorrow
FROM
    dual;
--
SELECT
    sysdate,
    add_months(sysdate, 3)
FROM
    dual;
-- 입사 20주년 되는 사원들
SELECT
    as "입사일",
    add_months(sysdate, 240)
FROM
    dual;
--
SELECT
    last_name,
    salary,
    CASE
        WHEN ( salary < 2000 ) THEN
            '0%'
        WHEN ( salary > 2000
               AND salary <= 3999 ) THEN
            '0.09%'
        WHEN ( salary > 3999
               AND salary < 6000 ) THEN
            '0.2%'
        WHEN ( salary > 5999
               AND salary < 8000 ) THEN
            '0.3%'
        WHEN ( salary > 7999
               AND salary < 10000 ) THEN
            '0.4%'
        WHEN ( salary > 9999
               AND salary < 12000 ) THEN
            '0.42%'
        WHEN ( salary > 11999
               AND salary < 14000 ) THEN
            '0.44%'
        WHEN ( salary >= 14000 ) THEN
            '0.45%'
    END AS tax_rate
FROM
    employees
WHERE
    department_id = 80;
-- 사원들의 최대 급여와 최소 급여의 차이를 구해라
SELECT
    MAX(salary) - MIN(salary) AS gap
FROM
    employees;

--매니저로 근무하는 사원들이 총 수 조회 ( 단 , MANAGER_ID 중복 제거)
SELECT
    COUNT(DISTINCT manager_id) AS bong
FROM
    employees;



-- 문제 1번
SELECT
    *
FROM
         employees e1
    JOIN employees e2 ON e1.manager_id = e2.employee_id
                         AND e1.hire_date < e2.hire_date;
                         
-- 문제 2번
select employee_id, last_name,e1.department_id 
from employees e1 ,departmentS d1,locations l1
where e1.department_id = d1.department_id and d1.location_id = l1.location_id and city like 'T%';

-- 문제 3번
SELECT LAST_NAME , e.department_id,e.salary 
from employees e,departments d
where e.department_id = d.department_id and location_id = 1700;

-- 문제 4번
SELECT e.department_id, LAST_NAME,e.job_id
from employees e,departments d
where e.department_id = d.department_id and d.department_name = 'Executive';

--
SELECT employee_id,last_name from employees
where department_id in 
(select distinct department_id from employees where last_name like '%u%');