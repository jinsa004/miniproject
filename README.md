# 이력관리 프로그램

### 사용DB 변경 후 권한부여
```sql
CREATE USER 'green'@'%' IDENTIFIED BY 'green1234';
CREATE DATABASE jobsite;
GRANT ALL PRIVILEGES ON jobsite.* TO 'green'@'%';
```

### 테이블 생성
```sql
create table employee(
    employee_id int primary KEY AUTO_INCREMENT,
    employee_name VARCHAR(24) NOT null,
    employee_birth VARCHAR(24) NOT NULL,
    employee_sex VARCHAR(8) NOT null,
    employee_username VARCHAR(24) NOT null,
    employee_password VARCHAR(24) NOT null,
    employee_email VARCHAR(64) NOT null,
    employee_tel VARCHAR(24) NOT NULL ,
    employee_location VARCHAR(128) NOT null,
    job_id INT
);
create table resume(
    resume_id int primary KEY auto_increment,
    resume_name VARCHAR(24) NOT null,
    employee_id INT NOT null,
    resume_image BLOB,
    highschool_name VARCHAR(24) ,
    highschool_startdate INT,
    highschool_enddate INT,
    highschool_major VARCHAR(24),
    univ_name VARCHAR(24),
    univ_startdate INT,
    univ_enddate INT,
    univ_major VARCHAR(24),
    univ_grades FLOAT,
    prev_co VARCHAR(40),
    career_period VARCHAR(40),
    career_position VARCHAR(24),
    career_department VARCHAR(24),
    career_task varchar(128),
    job_id INT NOT null,
    is_main BOOLEAN NOT null,
    created_at TIMESTAMP NOT null
);
create table company(
    company_id int primary KEY auto_increment,
    company_number INT NOT null,
    company_name VARCHAR(24) NOT null,
    company_email VARCHAR(64) NOT null,
    company_tel VARCHAR(24) NOT null,
    company_location VARCHAR(256) NOT null,
    job_id INT NOT null,
    company_username VARCHAR(24) NOT null,
    company_password VARCHAR(24) NOT null
);
create table intro(
    intro_id int primary KEY auto_increment,
    company_id INT,
    intro_title VARCHAR(24) NOT null,
    intro_birth VARCHAR(24) NOT null,
    intro_task VARCHAR(256) NOT null,
    intro_sal VARCHAR(24),
    intro_wellfare LONGTEXT,
    intro_content LONGTEXT,
    intro_location VARCHAR(256),
    intro_image BLOB,
    job_id INT
);
create TABLE notice(
    notice_id int primary KEY auto_increment,
    company_id INT,
    notice_title VARCHAR(40),
    notice_coname VARCHAR(40),
    notice_image BLOB,
    notice_period VARCHAR(40),
    notice_dept VARCHAR(24),
    notice_position VARCHAR(24),
    notice_task VARCHAR(256),
    notice_sal VARCHAR(24),
    notice_qual VARCHAR(24),
    notice_career VARCHAR(24),
    notice_wellfare LONGTEXT,
    job_id int,
    created_at TIMESTAMP NOT null
);
create table job(
    job_id int primary KEY auto_increment,
    job_name VARCHAR(24) NOT NULL,
    job_code INT NOT null
);
create table subscribe(
    subscribe_id int primary KEY auto_increment,
    employee_id INT NOT null,
    company_id INT NOT NULL
);
create table application(
    application_id int primary KEY auto_increment,
    resume_id INT NOT null,
    notice_id INT NOT null,
    created_at TIMESTAMP NOT null
);
```

### 더미데이터 추가
```sql
insert into employee(employee_name, employee_birth, employee_sex, employee_username, employee_password, employee_email, employee_tel, employee_location, job_id) 
VALUES('이성진', '19930818', '남', 'jinsa', '1234', 'jinsa004@naver.com', '01071649311', '김해', 1);
insert into employee(employee_name, employee_birth, employee_sex, employee_username, employee_password, employee_email, employee_tel, employee_location, job_id) 
VALUES('전영재', '19930805', '남', 'wjsdudwo', '1234', 'wjsdudwox@naver.com', '01011112222', '부산', 2);
insert into employee(employee_name, employee_birth, employee_sex, employee_username, employee_password, employee_email, employee_tel, employee_location, job_id) 
VALUES('정회지', '19991122', '여', 'hj12', '1234', 'hj12@naver.com', '01022223333', '부산', 1);
insert into resume(resume_name, employee_id, resume_image, highschool_name, highschool_startdate, highschool_enddate, highschool_major, 
univ_name, univ_startdate, univ_enddate, univ_major, univ_grades, prev_co, career_period, career_position, career_department, career_task, job_id, is_main, created_at) 
VALUES('완성하겠습니다.', 1, NULL, "영운고", 20090301, 20120201, "문과", NULL, NULL, NULL, NULL, NULL, "김해여객", "1년", "주임", "영업관리부", "사무업무", 1, 0, NOW());
insert into resume(resume_name, employee_id, resume_image, highschool_name, highschool_startdate, highschool_enddate, highschool_major, 
univ_name, univ_startdate, univ_enddate, univ_major, univ_grades, prev_co, career_period, career_position, career_department, career_task, job_id, is_main, created_at) 
VALUES('최선을 다하겠습니다..', 2, NULL, NULL, NULL, NULL, NULL, "서면대", 20120301, 20180201, "영어영문학과", 3.3, "보성엔진", "1년", "사원", "해외영업", "무역관리", 2, 0, NOW());
INSERT INTO company
(company_number, company_name, company_email, company_tel, company_location, job_id, company_username, company_password)
VALUES(621070, '삼성전자', 'aabb@samsung.com', '0212341234', '부산시 부산진구 어디어디', 2, 'samsungman1234', 'q1w2e3r4');
INSERT INTO company
(company_number, company_name, company_email, company_tel, company_location, job_id, company_username, company_password)
VALUES(110152, '보성엔지니어링', 'ebz2@bosung.com', '0516010864', '부산시 부산진구 초량동 어디어디', 3, 'bosung1234', 'q1w2e3r4!!');
INSERT INTO company
(company_number, company_name, company_email, company_tel, company_location, job_id, company_username, company_password)
VALUES(117242, 'LG전자', 'veda@lgelectronic.com', '0255221854', '부산시 부산진구 어디어디', 1, 'LGman1234', 'q1w2e3r4!@');
INSERT INTO intro
(company_id, intro_title, intro_birth, intro_task, intro_sal, intro_wellfare, intro_content, intro_location, job_id, intro_image)
VALUES(1, '회사소개입니다', 19980224, 'flutter 신규 앱 개발', '2600만원', '야근거의없음, 월1회 회식', '우리회사는 어쩌고저쩌고 이렇습니다', '부산시 부산진구 어디어디', 3, NULL);
INSERT INTO intro
(company_id, intro_title, intro_birth, intro_task, intro_sal, intro_wellfare, intro_content, intro_location, job_id, intro_image)
VALUES(2, '회사소개입니당', 20070701, 'DB 관리', '2400만원', '야근거의없음, 분기당 1회 회식', '우리회사는 어쩌고저쩌고 저렇습니다', '부산시 부산진구 어디어디', 2, NULL);
INSERT INTO intro
(company_id, intro_title, intro_birth, intro_task, intro_sal, intro_wellfare, intro_content, intro_location, job_id, intro_image)
VALUES(3, '회사소개요', 19951120, '웹디자인', '2800만원', '전자레인지 있음, 주5회 회식', '우리회사는 어쩌고저쩌고 그렇다', '부산시 부산진구 어디어디', 1, NULL);
INSERT INTO notice(company_id, notice_title, notice_coname, notice_image, notice_period, notice_dept, notice_position, notice_task, notice_sal, notice_qual, notice_career, notice_wellfare, job_id, created_at)
VALUES(1, '노예모집중', '삼성전자링', NULL, '20221030', '백엔드개발', '사원', 'java 코딩', '회사 내규에 따름', '대졸', '신입', '전자레인지 있음, 커피 제공', 2, now());
INSERT INTO notice(company_id, notice_title, notice_coname, notice_image, notice_period, notice_dept, notice_position, notice_task, notice_sal, notice_qual, notice_career, notice_wellfare, job_id, created_at)
VALUES(2, '프론트엔드 개발자 모집합니다.', '보성엔진' , NULL, '20221030', '프론트엔드개발', '사원', 'html 코딩', '회사 내규에 따름', '대졸', '신입', '전자레인지 있음, 커피 제공', 1, now());
INSERT INTO notice(company_id, notice_title, notice_coname, notice_image, notice_period, notice_dept, notice_position, notice_task, notice_sal, notice_qual, notice_career, notice_wellfare, job_id, created_at)
VALUES(3,'flutter 풀스택 개발자 모집합니다.', 'LG전자', NULL, '20221030', '풀스택개발', '사원', 'flutter 코딩', '3600만원', '고졸', '3년', '경조사비 제공, 분기별 보너스 지급', 3, now());
insert into job(job_name, job_code) 
VALUES("프론트엔드", 1);
insert into job(job_name, job_code) 
VALUES("백엔드", 2);
insert into job(job_name, job_code) 
VALUES("풀스택", 3);
insert into subscribe(employee_id, company_id) 
VALUES(1,1);
insert into subscribe(employee_id, company_id) 
VALUES(1,2);
insert into subscribe(employee_id, company_id) 
VALUES(2,1);
insert into application(resume_id, notice_id, created_at) 
VALUES(1,1,NOW());
insert into application(resume_id, notice_id, created_at) 
VALUES(1,2,NOW());
insert into application(resume_id, notice_id, created_at) 
VALUES(2,1,NOW());
```