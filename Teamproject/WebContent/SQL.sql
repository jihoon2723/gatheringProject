DROP TABLE GATHERING_MEMBER;

CREATE TABLE GATHERING_MEMBER(
ID VARCHAR2(300) PRIMARY KEY,
PW VARCHAR2(300),
TEL VARCHAR2(300),
ADDR VARCHAR2(300),
EMAIL VARCHAR2(300)
)
SELECT * FROM GATHERING_MEMBER;

delete from GATHERING_MEMBER where id='lee'