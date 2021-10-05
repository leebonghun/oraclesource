SELECT
    empno empno empnodeptno
EMP
    emp

--
    SELECT

*
    FROM
EMP
    emp

-- 중복 제거후 조회  distinct
    SELECT

DISTINCT DEPTNO
    deptno
EMP
    emp

--별칭을 붙여서 조회 : AS(alais)
    SELECT

EMPNO
    empno 사원번호 사원번호
EMP
    emp
--
    SELECT

ENAME
    ename 사원명 사원명JOB
    job "직   책" "직   책"SAL
    sal 월급 월급COMM
    comm 성과금 성과금SAL
    sal 12 + COMM comm 연봉 연봉
EMP
    emp

--정렬 : order by 컬럼명 기준(오름차순, 내림차순)
    SELECT

ENAME
    ename 사원명 사원명SAL
    sal "봉 급" "봉 급"
EMP
    emp
BY SAL
    sal ;
--오름차순 asc 생략 가능
    SELECT

ENAME
    ename 사원명 사원명SAL
    sal "봉 급" "봉 급"
EMP
    emp
BY SAL
    sal ;

--emp 테이블의 전체 내용을 조회하고 , 단 사원번호 내림차순 정렬
    SELECT

*
    FROM
EMP
    emp
BY EMPNO
    empno ;
--전체 내용 조회( 부서번호 오름차순 , 급여 내림차순)
    SELECT

*
    FROM
EMP
    emp
BY DEPTNO
    deptno ,SAL
    sal ;
-- 컨트롤 f7 정리해줌
    SELECT

EMPNO
    empno EMPLOYEE_NO employee_noENAME
    ename EMPLOYEE_NAME employee_nameMGR
    mgr MANAGER managerSAL
    sal SALARY salaryCOMM
    comm COMMISSION commissionDEPTNO
    deptno DEPARTMENT_NO department_noJOB
    jobHIREDATE
    hiredate
EMP
    emp
BY DEPTNO
    deptno ,ENAME
    ename ;

--특정 조건을 기준으로 원하는 데이터를 조회 : where
--전체 데이터 조회 , 단 , 부서번호가 30번인 데이터 조회
    SELECT

*
    FROM
EMP
    emp
DEPTNO
    deptno 30 ;

--사원번호가 7782인 사원 조회
    SELECT

*
    FROM
EMP
    emp
EMPNO
    empno 7782 ;

--부서번호가 30번이고 , 사원 직책인 salesman
--대소문자 구별 안함(쿼리문), 비밀번호만 대소문자를 구별
--문자열 표현할 때 홑따옴표 사용
    SELECT

*
    FROM
EMP
    emp
DEPTNO
        deptno 30 AND
    JOB job 'SALESMAN' ;
--사원번호가 7499이고, 부서번호가 30인 사원 조회
    SELECT

*
    FROM
EMP
    emp
EMPNO
        empno 7499 AND
    DEPTNO deptno =30 ;
--
    SELECT

*
    FROM
EMP
    emp
DEPTNO
    deptno 30 OR
    JOB job 'CLERK' ;


-- 산술 연산자를 사용한 where 절 
    SELECT

*
    FROM
EMP
    emp
SAL
    sal 12 = 36000 ;

--월급이 3000보다 큰
    SELECT

*
    FROM
EMP
    emp
SAL
    sal =3000 ;
--이름의첫글자
    SELECT

*
    FROM
EMP
    emp
ENAME
    ename 'F' ;
--급여가 2500이상이고, 직업이 analyist
    SELECT

*
    FROM
EMP
    emp
SAL
        sal =2500 AND
    JOB job 'ANALYST' ;
--직무가 
    SELECT

*
    FROM
EMP
    emp
JOB
    job 'SALESMAN' OR
    JOB job 'CLERK' OR
    JOB job 'MANAGER' ;
--
    SELECT

*
    FROM
EMP
    emp
JOB
    job IN ( 'ANALYST' ,'CLERK' ,'MANAGER' ) ;
--부서번호가 10,20번 사원 조회
    SELECT

*
    FROM
EMP
    emp
DEPTNO
    deptno ( 10 ,20 ) ORDER
BY DEPTNO
    deptno ;
-- BETWEEN A AND B 
    SELECT

*
    FROM
EMP
    emp
SAL
    sal 2000 AND 3000 ;
-- NOT BETWEEN A AND B
    SELECT

*
    FROM
EMP
    emp
SAL
    sal BETWEEN 2000 AND 3000 ;
-- LIKE 연산자와 와일드 카드
-- % : 길이와상관없이 모든 문자 데이터를 의미
-- _ : 어떤 값이던 상관없이 한 개의 문자 데이터를 의미
    SELECT

*
    FROM
EMP
    emp
ENAME
    ename 'S%' ;
-- 사원명의 두번째 글자가 L 인 사원 조회
    SELECT

*
    FROM
EMP
    emp
ENAME
    ename '_L%' ;
-- 사원명의 AM 문자가 포함되어 있는 사원 조회
    SELECT

*
    FROM
EMP
    emp
ENAME
    ename '%AM%' ;
-- 사원명의 AM 문자가 포함되어 있지 않는 사원 조회
    SELECT

*
    FROM
EMP
    emp
ENAME
    ename LIKE '%AM%' ;
--
    SELECT

*
    FROM
EMP
    emp
COMM
    comm NULL ;
--
    SELECT

*
    FROM
EMP
    emp
MGR
    mgr NULL ;
-- <집합 연산자>  
-- 합집합 -> UNION(중복값을 제거해줌) , UNION ALL (중복값을 제거하지 않음)
-- 교집합 -> INTERSECT
-- 차집합 -> MINUS

-- EMPNO,ENAME,SAL,DEPNO 조회 (부서번호가 10번이거나 20번인 )
    SELECT

EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 10 UNION
SELECT
EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 20 ;
--
    SELECT

EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 10 UNION
ALL SELECT
EMPNO
    empnoJOB
    jobSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 20 ;
--전체부서에서 10번 부서를 뺸거임 전체에서 - DEPTNO =10;
    SELECT

EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
SELECT
EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 10 ;
--
    SELECT

EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
SELECT
EMPNO
    empnoENAME
    enameSAL
    salDEPTNO
    deptno
EMP
    emp
DEPTNO
    deptno 10 ;

--
    SELECT

'['
    | |TRIM trim
'_' FROM '__Oracle__')
    || ']'   AS trim,
    '['
    || TRIM(LEADING '_' FROM '__Oracle__')
    || ']'   AS trim_leading,
    '['
    || TRIM(TRAILING '_' FROM '__Oracle__')
    || ']'   AS trim_training,
    '['
    || TRIM(BOTH '_' FROM '__Oracle__')
    || ']'   AS trim_both
FROM
    dual;
--
SELECT
    ename,
    hiredate,
    add_months(hiredate, 240) AS "20주년"
FROM
    emp;

-- 현재 날짜 기준으로 입사 38년 미만
SELECT
    ename,
    hiredate
FROM
    emp
WHERE
    add_months(hiredate, 480) > sysdate;
-- MONTHS_BETWEEN : 두 날짜 간의 개월 수 차이 구하기
SELECT
    empno,
    ename,
    hiredate,
    sysdate,
    months_between(sysdate, hiredate)                AS month1,
    months_between(hiredate, sysdate)                AS month2,
    trunc(months_between(hiredate, sysdate))         AS month3
FROM
    emp;
-- next_day(날짜,요일문자
-- last_day(날짜)
SELECT
    sysdate,
    next_day(sysdate, '월요일'),
    last_day(sysdate)
FROM
    dual;



-- 형변환 함수
-- TO.CHAR() : 숫자 또는 날짜 데이터를 문자 데이터로 변환
-- TO.NUMBER() : 문자 데이터를 숫자 데이터로 변환
-- TO_DATE() : 문자 데이터를 날짜 데이터로 변환
SELECT
    sysdate,
    to_char(sysdate, 'YYYY/MM/DD') AS 현재날짜
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'MM') AS 현재월
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'MON') AS 몇월
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'HH:MI:SS') AS 현재시간
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'HH12:MI:SS AM') AS 현재시간
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'HH24:MI:SS') AS 현재시간
FROM
    dual;

SELECT
    sal,
    to_char(sal, '$999,999')      AS sal_$,
    to_char(sal, 'L999,999')      AS sal_l
FROM
    emp;

SELECT
    to_number('1300')
FROM
    dual;

SELECT
    TO_DATE('2021-09-12', 'YYYY-MM-DD')       AS todate1,
    TO_DATE('20210912', 'YYYY-MM-DD')         AS todate2
FROM
    dual;

-- 날짜 데이터는 연산이 가능함
-- 1981-06-01 이후 입사자
SELECT
    *
FROM
    emp
WHERE
    hiredate > TO_DATE('1981/06/01', 'YYYY-MM-DD');

--L(LOCALE) : 지역화페단위를 붙여서 출력
-- 9,0 : 숫자의 한 자리를 의미함( 9는 빈자리를 채우지 않음, 0 빈자리를 채우는 개념)




--널처리 함수
--nvl(데이터,널이면 처리해야 반환할 값)
SELECT
    empno,
    ename,
    sal,
    sal + comm,
    nvl(comm, 0),
    sal + nvl(comm, 0)
FROM
    emp;
--nv2(데이터, 널이 아닐경우 반환할 값, 널이면 반환할 값)
SELECT
    empno,
    ename,
    sal,
    nvl2(comm, 'O', 'X'),
    nvl2(comm, sal * 12 + comm, sal * 12)
FROM
    emp;


--
SELECT
    *
FROM
    emp
WHERE
    empno = 7369;


-- DECODE 함수 
-- DECODE([검사 대상이 될 열 또는 데이터],[조건1],[데이터가 조건 1과 일치할 때 반환할 결과],
-- [조건2],[데이터가 조건 2가 일치할 때 반환할 결과],
-- [위 조건들 중에서 일치한 경우가 없을 때 반환할 결과])

-- JOB_ID 에 따라 급여의 비율 결정
SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 'MANAGER', sal * 1.1, 'SALESMAN', sal * 1.05,
           'ANALYST', sal, sal * 1.03) AS upsal
FROM
    emp;

-- CASE : DECODE 문을 작성할 수 있는 것들은 모두 변환 가능 
-- = 의 의미로 사용되지만 다른 조건도 가능하다.

-- COMM 이 널이면 '해당사항 없음' , 0 이면 '수당없음', 0보다 크면 '수당 : 2500'
SELECT EMPNO, ENAME,COMM CASE
    WHEN comm IS NULL THEN
        '해당사항없음'
    WHEN comm = 0  THEN
        '수당없음'
    WHEN comm > 0  THEN
        '수당 : ' || comm
END AS comm_text 
FROM
emp;

-- 실습 1번
SELECT
    empno,
    ename,
    sal,
    trunc(sal / 21.5, 3)               AS day_pay,
    round(sal / 21.5 / 8, 1)             AS time_pay
FROM
    emp;

-- 실습 2번
SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3),'월요일')       AS r_job,
    NVL(TO_CHAR(COMM),'N/A') AS COMM
    
FROM
    emp;
-- TO_CHAR 숫자에서 문자열로 변환   위에서는 COMM 을 CHAR 형태로 변환시킴
   

-- 실습 3번
SELECT
    empno,
    ename,
    mgr,
    CASE
        WHEN LTRIM(mgr) IS NULL THEN
            0000
        WHEN LTRIM(MGR) LIKE '75%' THEN
            5555
        WHEN LTRIM(mgr) LIKE '76%' THEN
            6666
        WHEN LTRIM(mgr) LIKE '77%' THEN
            7777
        WHEN LTRIM(mgr) LIKE '78%' THEN
            8888
        ELSE
         MGR
   END AS SUBSTR(TO_CHAR(CHG_MAR)1,2)
FROM
    emp;
--강사님 버전
SELECT EMPNO, ENAME,MGR,DECODE(SUBSTR(TO_CHAR(MGR) 1,
2 ),
NULL,
'0000',
'75',
'5555',
'76',
'6666',
'77',
'7777',
'78',
'8888',
substr(to_char(mgr), 1) ) AS chg_mgr FROM emp ;
--
-- 다중행 함수 : SUM(),COUNT(),AVG(),MAX(),MIN()
 SELECT SUM ( SAL ) FROM EMP ;
--SELECT SUM(SAL),ENAME FROM EMP; -- 단일 그룹의 그룹 함수가 아닙니다
-- EMP 테이블의 데이터 개수 COUNT()
 SELECT COUNT ( SAL ) FROM EMP ;
-- 부서번호가 10번 인 사원의 최대 급여 MAX()
 SELECT MAX ( SAL ) FROM
EMP WHERE DEPTNO = 10 ;
-- 부서번호가 10번인 사원의 최소 급여 MIN()
 SELECT MIN ( SAL ) FROM EMP WHERE DEPTNO = 10 ;
-- 중복제거 COUNT()
 SELECT COUNT ( DISTINCT SAL ) FROM EMP ;
-- 부서번호가 20번인 사원중에서 제일 오래된 입사일
 SELECT MIN ( HIREDATE )
FROM EMP WHERE DEPTNO = 20 ;
--부서번호가 30번인 사우너들의ㅍ 평균 급여 조회
 SELECT TRUNC ( AVG ( SAL ) , 1 ) FROM EMP WHERE DEPTNO = 30 ;

-- GROUP BY : 그룹화할 열 지정(여러개 지정 가능) 

-- 부서별 사원들의 급여 합계 조회
 SELECT DEPTNO , SUM ( SAL ) FROM EMP GROUP
BY DEPTNO ORDER BY DEPTNO ;
-- 부서별 사원들의 급여 평균
 SELECT DEPTNO , TRUNC ( AVG ( SAL ) , 1 ) AS AVG FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO ;
-- 부서별, 직무별 급여 평균 조회
 SELECT TRUNC (
AVG ( SAL ) , 1 ) AS AVG , DEPTNO , JOB FROM EMP GROUP BY DEPTNO , JOB ORDER BY DEPTNO , JOB ;

-- GROUP BY ~ HAVING : WHERE 은 그룹함수를 허가하지 않기 때문에 그룹함수의 조건을 걸려면 GROUP BY 옆에 HAVING 을 쓰면된다.
-- 부서별, 직무별 급여의 평균
SELECT DEPTNO , JOB , AVG ( SAL ) FROM
EMP GROUP BY DEPTNO , JOB HAVING AVG ( SAL ) > = 2000 ORDER BY DEPTNO , JOB ;
-- 주석 : CTRL + / 
SELECT DEPTNO , JOB , AVG ( SAL ) FROM
EMP WHERE SAL <= 3000 -- 1) 출력 대상이 되는 행 제한
GROUP BY DEPTNO , JOB HAVING AVG(SAL) >=2000 -- 2) 그룹화한 행 제한
ORDER BY DEPTNO , JOB ;
-- 실습 1번
SELECT TRUNC(AVG(SAL),0) AS AVG_SAL , MAX(sAL) AS MAX_SAL, MIN(SAL) AS MIN_SAL FROM EMP GROUP BY DEPTNO;
-- 실습 2번
SELECT JOB, COUNT(*) FROM EMP GROUP BY JOB HAVING COUNT(*)>=3;
-- 실습 3번
SELECT TO_CHAR(HIREDATE,'YYYY')AS HIRE_YEAR , DEPTNO , COUNT(*) AS CNT FROM EMP GROUP BY TO_CHAR(HIREDATE,'YYYY'), DEPTNO ;

-- 데이터 삽입, 삭제 , 수정
-- 실습용 테이블 생성
CREATE TABLE dept_temp as select * from dept;

SELECT * FROM dept_temp;

--insert : 데이터 삽입
--insert into 테이블명(필드명 ....) values(값, 값2..)
--insert into 테이블명 values(값1,값2...)
insert into dept_temp(deptno,dname,loc) values(50,'DATABASE','SEOUL');
SELECT * FROM dept_temp;

insert into dept_temp values(60,'NETWORK','BUSAN');
-- NULL 삽입하는 방법( 테이블 생성시 널이 가능하도록 열이 설정되어 있는 경우만 사용 가능)
insert into dept_temp(deptno,dname) values(90,'DATABASE');
SELECT * FROM dept_temp;
insert into dept_temp(deptno,dname,loc) values(91,'WEB',NULL);
SELECT * FROM dept_temp;
insert into dept_temp(deptno,dname,loc) values(92,'WEB232','');
SELECT * FROM dept_temp;
COMMIT;

-- 실습용 테이블 생성
-- 테이블 구조는 복사하되, 데이터는 복사하고 싶지 않을 때
CREATE TABLE emp_temp as select * from emp where 1<>1;

SELECT * FROM emp_temp;

desc emp_temp;

insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (1111,'홍길동','manager',null,'2021-09-27',4000,null,10);


insert into emp_temp
values (2222,'성춘향','analyst',null,'2021/09/27',5000,null,10);

insert into emp_temp
values (3333,'박보검','analyst',null,sysdate,5000,null,10);
select * from emp_temp;

commit;

-- UPDATE : 수정
-- UPDATE 테이블명 SET 변경할 열 = 변경할 값.....WHERE 수정 할 조건 ;

SELECT * FROM dept_temp;

UPDATE dept_temp SET LOC = 'SEOUL' WHERE DEPTNO = 90;
SELECT * FROM DEPT_TEMP;

UPDATE DEPT_TEMP SET LOC = 'BUSAN' WHERE DEPTNO = 91;
SELECT * FROM DEPT_TEMP;

COMMIT;

SELECT * FROM EMP_TEMP;

UPDATE EMP_TEMP SET COMM = 50 WHERE SAL <= 4000;

SELECT * FROM EMP_TEMP;

UPDATE EMP_TEMP SET COMM = 100;

SELECT * FROM EMP_TEMP;

--ROLLBACK;  수정한 내용 되돌리는것
SELECT * FROM EMP_TEMP;

COMMIT;
SELECT * FROM EMP_TEMP;

-- 삭제 DELETE :
-- DELETE (FROM) 테이블명 WHERE 삭제 할 데이터 조건

CREATE TABLE EMP_TEMP2 AS SELECT * FROM EMP;
SELECT * FROM EMP_TEMP2;
DELETE EMP_TEMP2 WHERE JOB = 'MANAGER';
SELECT * FROM EMP_TEMP2;

-- 전체 사원 삭제
DELETE EMP_TEMP2 ;
SELECT * FROM EMP_TEMP2;
ROLLBACK;
SELECT * FROM EMP_TEMP2;


-- 조인 <면접에서 가장 많이 물어봄>
select count(*) from emp;
select count(*) from dept;

-- 카테시안조인 : 나올 수 있는 모든 조합  ( 14행 * 4행 = 56행)
SELECT * FROM EMP,DEPT;

-- 내부 조인(INNER 조인)
-- 등가 조인 : 일치하는 데이터 추출
-- 비등가 조인 : 특정 범위에 있는 데이터 추출

SELECT * FROM EMP , DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- 00918. 00000 -> "column ambiguously defined" 열의 정의가 애매합니다
SELECT EMPNO,ENAME,EMP.DEPTNO,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

SELECT EMPNO,ENAME,EMP.DEPTNO,DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
ORDER BY DNAME;

SELECT EMPNO,ENAME,e.DEPTNO,DNAME
FROM EMP e,DEPT d
WHERE e.DEPTNO = d.DEPTNO
ORDER BY DNAME;

-- sal 3000 이상인 사원들의 사번, 이름, 부서번호 , 부서명, 급여 
select empno,ename,d.deptno,dname,sal
from emp e , dept d
where e.deptno = d.deptno and sal >=3000;

-- 급여가 2500 이하이고 사원번호가 9999이하인 사원의 사번 이름 급여 부서명 부서위치
select  EMPNO, ENAME, SAL, DNAME,LOC
FROM EMP E,DEPT D
WHERE E.DEPTNO = D.DEPTNO AND SAL <= 2500 AND EMPNO <=9999;

-- emp 테이블의 급여가 salgrade 특정 범위에 속하면 grade 값 조회
SELECT * FROM salgrade;
select * from emp;

-- 비등가 조인
SELECT * 
FROM emp e , salgrade s
where e.sal BETWEEN S.losal and s.hisal;

-- 자체 조인(셀프 조인) : 본인 테이블과 조인
select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno;

-- 외부 조인(outer join)
-- 왼쪽외부조인(left outer join)
-- 오른쪽외부조인(right outer join)

-- 왼쪽외부조인
select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1, emp e2
where e1.mgr = e2.empno(+);

-- 오른쪽 외부조인
select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1, emp e2
where e1.mgr(+) = e2.empno;

-- 양쪽외부조인(+ 기호는 제공안함)
-- outer join된 테이블은 1개만 지정할 수 있습니다
-- 모든 데이터 베이스에서 사용가능한  표준 조인 구문
-- join~on
SELECT EMPNO,ENAME,emp.DEPTNO,DNAME
FROM EMP join dept on emp.DEPTNO = emp.DEPTNO
ORDER BY DNAME;

select empno,ename,d.deptno,dname,sal
from emp e join dept d on e.deptno = d.deptno where sal >=3000;

select  EMPNO, ENAME, SAL, DNAME,LOC
FROM EMP E join DEPT D on E.DEPTNO = D.DEPTNO 
where SAL <= 2500 AND EMPNO <=9999;

select * 
from emp e join salgrade s
on e.sal BETWEEN s.losal and s.hisal;

-- outer 표준 구문
select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1 left outer join emp e2 on e1.mgr = e2.empno;

select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1 right outer join emp e2 on e1.mgr = e2.empno;

select e1.empno , e1.ename, e1.mgr,e2.empno,e2.ename
from emp e1 full outer join emp e2 on e1.mgr = e2.empno;

-- 조인 실습 1번
-- 급여가 2000초과인 사원들의 부서 정보 , 사원 정보를 
-- 출력
--deptno, dname,empno,ename,sal

SELECT d.deptno,dname,empno,ename,sal
from dept d,emp e
where d.deptno = e.deptno and sal > 2000;

SELECT d.deptno,dname,empno,ename,sal
from dept d join emp e on d.deptno = e.deptno 
where sal > 2000 order by d.deptno;

-- 조인 실습 2번
-- 각 부서별 평균 급여, 최대 급여, 최소 급여, 사원수를 출력하는 sql 문을 작성하시오
SELECT d.DEPTNO,DNAME,TRUNC(AVG(SAL),0) ,MAX(SAL),MIN(SAL),COUNT(*) 
FROM EMP e, dept d
where e.deptno = d.deptno
GROUP BY d.DEPTNO,DNAME 
ORDER BY d.DEPTNO;
-- 위 ,아래 동일 join on 을 쓰자 더 짧아진다.
SELECT d.DEPTNO,DNAME,TRUNC(AVG(SAL),0) ,MAX(SAL),MIN(SAL),COUNT(*) 
FROM EMP e join dept d on e.deptno = d.deptno
GROUP BY d.DEPTNO,DNAME 
ORDER BY d.DEPTNO;
--
select d.deptno,dname,empno,ename,job,sal
from dept d left outer join emp e on  d.deptno = e.deptno
order by d.deptno, e.empno;


-- 세 개 테이블 조인
select * from emp e1 join emp e2 on e1.empno = e2.empno
                     join emp e3 on e2.empno=e3.empno;
-- 실습 4번
select d.deptno,dname,empno,ename,mgr,sal,losal,hisal,grade
from emp e, dept d, salgrade s
where e.deptno = d.deptno and e.sal between s.losal and s.hisal;

SELECT
    d.deptno,
    dname,
    e1.empno,
    e1.ename,
    e1.mgr,
    e1.sal,
    losal,
    hisal,
    grade,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp      e1,
    dept     d,
    salgrade s,
    emp      e2
WHERE
        e1.deptno(+) = d.deptno
    AND e1.sal BETWEEN s.losal(+) AND s.hisal(+)
    AND e1.mgr = e2.mgr(+) order by d.deptno,e1.empno;

select * from HR.employees e1 
join HR.employees e2 on e1.employee_id = e2.manager_id
where e1.hire_date<e2.hire_date;

select last_name,employee_id,d.department_id 
from 
HR.employees e join hr.departments d on e.department_id=d.department_id
               join hr.locations l on l.location_id =d.location_id 
               where l.city like 'T%';

select last_name,d.department_id, salary from
HR.departments d join hr.employees e on d.department_id=e.department_id
where d.location_id=1700;

select d.department_id,last_name,job_id from
HR.employees e join HR.departments d on e.department_id=d.department_id 
where d.department_name='Executive';


-- 서브쿼리 : sql 문을 실행하는데 필요한 데이터를 추가로 조회하기 위해 sql 문 
--          내부에서 사용하는 select 문을 말함
--          연산자와 같은 비교 또는 조회 대상을 오른쪽에 놓여서 괄호로 묶어서 사용
--          서브쿼리의 SELECT 절에 명시한 열은 메인 쿼리의 비교 대상과 같은 자료형과
--          같은 개수로 지정


-- JONES 사원의 급여보다 높은 급여를 받는 사원 조회

-- JONES 사원의 급여 조회
SELECT SAL FROM EMP WHERE ENAME = 'JONES'; -- 2975
-- 2975보다 큰 사원 조회
SELECT * FROM EMP WHERE SAL > 2975;

-- 단일 행 서브쿼리
-- 서브쿼리의 결과가 단 하나의 행으로 나온 상황
-- > , >= , =, <=  < , <> ^= != 
SELECT * FROM EMP WHERE SAL > ( SELECT SAL FROM EMP WHERE ENAME = 'JONES');
--
SELECT * FROM EMP WHERE COMM > (SELECT COMM FROM EMP WHERE ENAME = 'ALLEN');
--
SELECT * FROM EMP WHERE hiredate < (SELECT hiredate FROM EMP WHERE ENAME = 'WARD');

select hiredate from emp where ename = 'WARD';

-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원정보(사원번호, 사원명
-- 직업 ,급여) 와 소속 부서정보(부서번호, 부서명,부서위치) 를조회

SELECT EMPNO,ENAME,JOB,SAL,d.deptno,dname,loc
from emp e , dept d
where e.deptno = d.deptno and d.deptno = 20 and e.sal>(select avg(sal) from emp);

-- 다중행 서브쿼리 in
-- 서브쿼리 실행결과가 여러 개로 나오는 걸 의미
-- IN : 메인 쿼리의 데이터가 서브쿼리의 결과 중 하나라도 일치하면 true 
-- ANY(SOME) : 메인쿼리의 조건식을 만족하는 서브쿼리의 결과가 하나 이상이면 true
-- ALL : 메인쿼리의 조건식을 서브쿼리의 결과 모두가 만족하면 true
-- EXISTS : 서브쿼리의 결과가 존재하면( 행 1개이상 존재하면) true
-- 부서별 최고급여와 같은  사원 조회
select * from emp 
where sal in
    (select max(sal) from emp group by deptno);

-- ANT(SOME) 은 연산자랑 같이 와야함
select * from emp 
where sal  = ANY (select max(sal) from emp group by deptno);

--
SELECT * FROM EMP
WHERE SAL < ANY (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30);
--
SELECT * FROM EMP
WHERE SAL < ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);
-- 30번 부서 사원들의 최저 급여보다 많은 사원 조회
SELECT * FROM EMP
WHERE SAL > ANY (SELECT MIN(SAL)FROM EMP WHERE DEPTNO = 30);

-- ALL 
-- 30번 부서 사원들의 급여보다 적은 사원 조회
SELECT * FROM EMP
WHERE SAL < ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30);

SELECT * FROM EMP
WHERE SAL > ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30);

-- EXISTS
SELECT * FROM EMP WHERE EXISTS(SELECT DNAME FROM DEPT WHERE DEPTNO = 10);

SELECT * FROM EMP WHERE EXISTS(SELECT DNAME FROM DEPT WHERE DEPTNO = 50);

-- 문제] 
SELECT ename,empno,job,sal d.deptno,d.name FROM emp e , dept d WHERE e.deptno = d.deptno and e.job in(select job from emp where ename = 'ALLEN');

-- 문제2]
select * from emp;
select empno,ename,job,d.deptno,sal,d.dname 
from emp e, dept d , salgrade s
where e.deptno = d.deptno and e. sal between s.losal and s.hisal and e.sal > any (select avg(sal) from emp)order by e.sal desc, e.empno asc ;


-- 비교할 열이 여러 개인 다중열 서브쿼리
select * from emp 
where (deptno,sal)in
(select (deptno,max(sal) from emp group by deptno);

-- FROM 서브쿼리 (인라인 뷰)
SELECT EMPNO, ENAME, D.DEPTNO, DNAME,LOC
FROM (SELECT * FROM EMP WHERE DEPTNO = 10) E10, (SELECT * FROM DEPT) D
WHERE E10.DEPTNO = D.DEPTNO;

--INSERT 사용하는 서브쿼리
-- VALUES 절은 사용하지 않음
-- 데이터가 추가되는 테이블의 열 개수와 서브쿼리의 열 개수가 일치해야 한다
-- 데이터가 추가되는 테이블의 자료형과 서브쿼리의 자료형이 일치해야 한다.
-- EMP 테이블에서 SALGRADE 테이블을 참종하여 급여 등급이 1인 사원만을 EMP_TEMP 에 추가

SELECT * FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE = 1;
--
INSERT INTO EMP_TEMP(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
SELECT E.EMPNO,E.ENAME,E.JOB,E.MGR,E.HIREDATE,E.SAL,E.COMM,E.DEPTNO FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE = 1;

SELECT * FROM EMP_TEMP;

-- UPDATE 서브쿼리
SELECT * FROM DEPT_TEMP;

-- 40번 부서의 부서 이름과 지역 수정

SELECT DNAME,LOC
FROM DEPT
WHERE DEPTNO = 30;

UPDATE DEPT_TEMP
SET (DNAME,LOC) = (SELECT DNAME,LOC
FROM DEPT
WHERE DEPTNO = 30)
WHERE DEPTNO = 40;
--
UPDATE DEPT_TEMP
SET LOC='CHICAGO'
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT_TEMP WHERE DNAME = 'SALES');

--DELETE 서브쿼리
-- 급여 등급이 3등급이고 30번 부서인 사원들만 삭제
DELETE EMP_TEMP
WHERE EMPNO IN (SELECT EMPNO FROM EMP_TEMP E , SALGRADE S 
                            WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE =3 AND DEPTNO = 30);


SELECT * FROM EMP_TEMP;

CREATE table exam_emp as select * from emp;
create table exam_dept as select * from dept;
create table exam_salgrade as select * from salgrade;

--
INSERT INTO EXAM_EMP VALUES(7201,'TEST_USER1','MANAGER',7788,'2016-01-02',4500,NULL,50);
SELECT * FROM EXAM_EMP;
--
INSERT INTO EXAM_EMP VALUES(7202,'TEST_USER2','CLERK',7201,'2016-02-21',1800,NULL,50);

INSERT INTO EXAM_EMP VALUES(7203,'TEST_USER3','ANALYST',7201,'2016-04-11',3400,NULL,60);

INSERT INTO EXAM_EMP VALUES(7204,'TEST_USER4','SALESMAN',7201,'2016-05-31',2700,300,60);

INSERT INTO EXAM_EMP VALUES(7205,'TEST_USER5','CLERK',7201,'2016-07-20',2600,NULL,70);

INSERT INTO EXAM_EMP VALUES(7206,'TEST_USER6','CLERK',7201,'2016-09-08',2600,NULL,70);

INSERT INTO EXAM_EMP VALUES(7207,'TEST_USER7','LECTURER',7201,'2016-10-28',2300,NULL,80);

INSERT INTO EXAM_EMP VALUES(7208,'TEST_USER7','STUDENT',7201,'2018-03-09',1200,NULL,80);
SELECT * FROM EXAM_EMP;


--3번

UPDATE EXAM_EMP
SET DEPTNO = 70
WHERE SAL > (SELECT AVG(SAL) FROM EXAM_EMP WHERE DEPTNO = 50);



--4번
UPDATE EXAM_EMP
SET SAL = SAL * 1.1 ,DEPTNO=80
WHERE HIREDATE > (SELECT MIN(HIREDATE) FROM EXAM_EMP WHERE DEPTNO = 60 );

--5번
DELETE EXAM_EMP
WHERE EMPNO IN (SELECT EMPNO FROM EXAM_EMP E , EXAM_SALGRADE S 
                            WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND S.GRADE =5 );
COMMIT;

--트랜잭션
-- 하나의 단위로 데이터를 처리
CREATE TABLE DEPT_TCL AS SELECT * FROM DEPT;
SELECT * FROM DEPT_TCL;
-- 트랜잭션과 관련있는 명령어 실행

INSERT INTO DEPT_TCL VALUES(50,'DATABASE','SEOUL');
UPDATE DEPT_TCL SET LOC = 'BUSAN' WHERE DEPTNO = 40;
DELETE FROM DEPT_TCL WHERE DNAME = 'RESEARCH';

------------------------------------------------

-- 수행된 명령 취소 
ROLLBACK;
-- 수행된 명령 최종 반영
COMMIT;

SELECT * FROM DEPT_TCL;
-- 세션 : 어떤 활동을 위한 시간이나 기간 
-- 데이터베이스 접속을 시작으로 여러 데이터베이스에서 관련 작업을 수행한 후
-- 접속을 종료하기까지 전체 기간

DELETE FROM DEPT_TCL WHERE DEPTNO = 50;

SELECT * FROM DEPT_TCL;
COMMIT;

UPDATE DEPT_TCL 
SET LOC='SEOUL'
WHERE DEPTNO = 30;

COMMIT;

----------------------------------------------------
-- DDL(데이터 정의어)
-- 객체를 생성, 변경, 삭제 
-- 실행하면 바로 반영됨

-- CREATE(생성), alter(변경), drop(삭제)

-- create table 테이블이름(
--      필드명1 자료형,
--      필드명2 자료형,
--)

-- 테이블 이름 규칙
-- 문자로 시작
-- 같은 사용자 안에서 동일한 테이블 명 사용불가
-- sql 키워드는 테이블 이름으로 사용할 수 없음

-- 필드명 생성 규칙
-- 문자로 시작
-- 열 이름은 중복되면 안됨
-- sql 키워드 사용불가ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ

-- 자료형 : 숫자 NUMBER, 문자 varchar2, 날짜 date
create table EMP_DDL(
      EMPNO     NUMBER(4), -- 숫자로 4자리 허용
      Ename     VARCHAR2(10),
      Job       VARCHAR2(9),
      Mgr       NUMBER(4),
      Hiredate  DATE,
      Sal       NUMBER(7,2), -- 숫자로 7자리 허용(소수점 2자리 허용)
      Comm      NUMBER(7,2),
      Deptno    NUMBER(2)

);

DESC EMP_DDL;


drop table EMP_DDL;

create table dept_ddl2 as select * from dept where 1<>1;
select * from dept_ddl2;

-- ALTER
-- 이미 생성된 객체를 변경

create table emp_alter as select * from emp;

select * from emp_alter;

-- 새로운 컬럼(열) 추가 : ADD
DESC EMP_ALTER;

ALTER TABLE EMP_ALTER ADD HP VARCHAR2(20);
DESC EMP_ALTER;

SELECT* FROM EMP_ALTER;

-- RENAME : 열 이름을 변경
ALTER TABLE EMP_ALTER RENAME COLUMN HP TO TEL;
DESC EMP_ALTER;

-- MODIFY : 열의 자료형을 변경
ALTER TABLE EMP_ALTER MODIFY EMPNO NUMBER(5);

-- DROP : 열삭제
ALTER TABLE EMP_ALTER DROP COLUMN TEL;
DESC EMP_ALTER;

-- 테이블 이름 변경
RENAME EMP_ALTER TO EMP_RENAME;
DESC EMP_RENAME; trunc TABLE emp_rename ; SELECT * FROM VM_EMPALL ; CREATE TABLE MEMBER ( ID CHAR ( 8 ) , NAME VARCHAR2 ( 10 ) , ADDR
    VARCHAR2 ( 50 ) , NATION CHAR ( 4 ) , EMAIL VARCHAR2 ( 50 ) , AGE NUMBER ( 7 , 2 ) ) ; DESC MEMBER ; ALTER TABLE EMP_ALTER ADD
    HP VARCHAR2 ( 20 ) ;

--실습 2번
     ALTER TABLE MEMBER ADD BIGO VARCHAR2 ( 20 ) ; ALTER TABLE MEMBER MODIFY BIGO VARCHAR2 ( 30 ) ; ALTER TABLE
    MEMBER RENAME COLUMN BIGO TO REMARK ;

--실습 3번

-- 뷰(view) : 가상 테이블
-- 목적 : 편리성(select 문의 복잡도를 완화)
--       보안성(테이블의 특정 열을 노출하고 싶지 않을 경우)
-- 뷰 생성
     CREATE VIEW VM_EMP20 AS ( SELECT EMPNO , ENAME , JOB , DEPTNO FROM EMP WHERE DEPTNO = 20 ) ;
    SELECT * FROM VM_EMP20 ;

-- CREATE [OR REPLACE] VIEW 뷰이름 (열이름1,열이름2...) 
-- AS (저장할 SELECT 구문)

--EMP 테이블의 전체 내용 VIEW 생성
     CREATE VIEW VM_EMPALL AS ( SELECT * FROM EMP ) ;
     SELECT * FROM VM_EMPALL ;
     UPDATE VM_EMPALL 
     SET JOB = 'SALESMAN'
     WHERE EMPNO = 7369 ; 
     SELECT * FROM VM_EMPALL ; 
     INSERT INTO VM_EMPALL VALUES ( 6666 , 'KIM' , 'MANAGER' , NULL , '20/10/05' ,2650 , NULL , 20 ) ; 
    SELECT * FROM EMP ; 
    DELETE FROM VM_EMPALL WHERE EMPNO = 6666 ; SELECT * FROM EMP ;
    
CREATE VIEW VM_EMP25READ AS SELECT EMPNO,ENAME FROM EMP WHERE DEPTNO = 30 WITH READ ONLY;

SELECT * FROM VM_EMP25READ;

-- 뷰 삭제(DROP을 쓴다)
DROP VIEW VM_EMPALL;

SELECT * FROM VM_EMPALL;

-- 시퀀스(수업에서 자주 사용)
-- 오라클 데이터베이스에서 특정 규칙에 맞는 연속 숫자 생성

CREATE SEQUENCE SEQ_DEPT_SEQUENCE 
INCREMENT BY 10 -- 옵션(기본값은 1) 
START WITH 10 -- 옵션(기본값은 1)
MAXVALUE 90 -- 옵션(기본값은 10의 27승)
MINVALUE 0 -- 옵션(기본값은 1)
NOCYCLE CACHE 2; -- 옵션(CYCLE OR NOCYCLE, CACHE 는 미리 발급해 놓을 수)

-- DEPT 테이블에서 부서번호를 10으로 시작해서 90까지 넣고 싶을 때

CREATE TABLE DEPT_SEQUENCE AS SELECT * FROM DEPT WHERE 1<>1;

INSERT INTO DEPT_SEQUENCE(DEPTNO,DNAME,LOC)
VALUES(SEQ_DEPT_SEQUENCE.nextval, 'DATABASE','SEOUL');

ALTER SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT BY 3
MAXVALUE 99
CYCLE;

SELECT * FROM DEPT_SEQUENCE;
DROP SEQUENCE SEQ_DEPT_SEQUENCE;

-- 인덱스 : 빠른 검색
-- 데이터 검색 : Table Full Scan, Index Scan

create index idx_emp_sal on emp(sal);

-- 제약조건을 사용한 테이블 생성
CREATE TABLE userTBL(
userid char(8) not null primary key,
username varchar(10) not null);


DROP INDEX IDX_EMP_SAL ;



-- 문)1
create table EMPIDX1 AS SELECT * FROM EMP ;
CREATE INDEX IDX_EMPIDX_EMPNO1 ON EMPIDX1(EMPNO);


-- 문)2
CREATE VIEW EMPIDX_OVER14K AS SELECT * FROM EMPIDX1 WHERE SAL > 1500;

SELECT * FROM EMPIDX_OVER14K;

-- 문)3

CREATE TABLE DEPTSEQ AS SELECT * FROM DEPT WHERE 1<>1;
SELECT * FROM DEPTSEQ;

CREATE SEQUENCE DEPTSEQ2
INCREMENT BY 1 -- 증가값 1
START WITH 1 -- 시작값 1
MAXVALUE 99 -- 최댓값 99
MINVALUE 1; -- 최소값 1
            -- 캐시 없음
            
            
-- 세개의 부서를 차례대로 추가
INSERT INTO DEPTSEQ(DEPTNO,DNAME,LOC)
VALUES(DEPTSEQ2.nextval, 'MOBILE','ILSAN');

SELECT * FROM DEPTSEQ;
