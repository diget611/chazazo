
DROP TABLE PAYMENT;
DROP TABLE RECOMMEND;
DROP TABLE REVIEW;
DROP TABLE RESERVATION;
DROP TABLE INSURANCE;
DROP TABLE RATING;
DROP TABLE VEHICLE;
DROP TABLE LOCATION;
DROP TABLE FUELTYPE;
DROP TABLE CARTYPE;
DROP TABLE REPORT;
DROP TABLE COUPON;
DROP TABLE MEMBER_INFO;
DROP TABLE MEMBER;
DROP TABLE NOTICE;
DROP TABLE COUPON_MANAGE;
DROP TABLE INQUIRY;

CREATE TABLE INQUIRY (
       IDX NUMBER CONSTRAINT INQUIRY_IDX_PK PRIMARY KEY NOT NULL
     , TITLE VARCHAR2(100) NOT NULL 
     , CONTENT CLOB NOT NULL
);

CREATE TABLE COUPON_MANAGE (
       IDX NUMBER CONSTRAINT COUPON_MANAGE_IDX_PK PRIMARY KEY NOT NULL 
     , RATE NUMBER NOT NULL 
     , PEROID NUMBER NOT NULL 
     , NAME VARCHAR2(30) NOT NULL
);

CREATE TABLE NOTICE (
       IDX NUMBER CONSTRAINT NOTICE_IDX_PK PRIMARY KEY NOT NULL 
     , TITLE VARCHAR2(100) NOT NULL 
     , CONTENT CLOB NOT NULL 
     , CREATE_DATE DATE DEFAULT SYSTIMESTAMP NOT NULL
     , READ_COUNT NUMBER DEFAULT 0 NOT NULL
     , UPDATE_DATE DATE NOT NULL 
     , DELETE_DATE DATE NOT NULL
);

CREATE TABLE MEMBER (
       IDX NUMBER CONSTRAINT MEMBER_IDX_PK PRIMARY KEY NOT NULL 
     , USERNAME VARCHAR2(20) NOT NULL 
     , PASSWORD VARCHAR2(30) NOT NULL 
     , ENABLED NUMBER DEFAULT 1 CONSTRAINT MEMBER_ENABLED_CK CHECK (ENABLED IN (0, 1)) NOT NULL
     , AUTH VARCHAR2(50) DEFAULT 'ROLE_USER' NOT NULL
);

CREATE TABLE MEMBER_INFO (
       IDX NUMBER CONSTRAINT MEMBER_INFO_IDX_FK REFERENCES MEMBER(IDX) NOT NULL
     , NAME VARCHAR2(30) NOT NULL 
     , GENDER NUMBER NOT NULL
     , BIRTH VARCHAR2(10) NOT NULL 
     , PHONE_NUMBER VARCHAR2(20) NOT NULL 
     , LICENSE VARCHAR2(20) NOT NULL 
     , EMAIL VARCHAR2(50) NOT NULL
);

CREATE TABLE COUPON (
       IDX NUMBER CONSTRAINT COUPON_IDX_PK PRIMARY KEY NOT NULL 
     , START_DATE DATE NOT NULL 
     , EXPIRE_DATE DATE NOT NULL 
     , COUPON_IDX NUMBER CONSTRAINT COUPON_IDX_FK REFERENCES COUPON_MANAGE(IDX) NOT NULL
     , MEMBER_IDX NUMBER CONSTRAINT COUPON_MEMBER_FK REFERENCES MEMBER(IDX) NOT NULL
);

CREATE TABLE REPORT (
       IDX NUMBER CONSTRAINT REPORT_IDX_PK PRIMARY KEY NOT NULL 
     , REVIEW_IDX NUMBER NOT NULL 
     , MEMBER_IDX NUMBER CONSTRAINT REPORT_MEMBER_FK REFERENCES MEMBER(IDX) NOT NULL
);

CREATE TABLE CARTYPE (
       IDX NUMBER CONSTRAINT CARTYPE_IDX_PK PRIMARY KEY NOT NULL 
     , TYPE NUMBER NOT NULL
);

CREATE TABLE FUELTYPE (
       IDX NUMBER CONSTRAINT FUELTYPE_IDX_PK PRIMARY KEY NOT NULL 
     , TYPE VARCHAR2(20) NOT NULL
);

CREATE TABLE LOCATION (
       IDX NUMBER CONSTRAINT LOCATION_IDX_PK PRIMARY KEY NOT NULL 
     , NAME VARCHAR2 (30) NOT NULL 
     , LATITUDE NUMBER NOT NULL 
     , LONGITUDE NUMBER NOT NULL 
     , PHONE_NUMBER VARCHAR2(15) NOT NULL 
     , BUSINESS_HOURS VARCHAR2(15) NOT NULL 
     , ADDRESS VARCHAR2(100) NOT NULL
);

CREATE TABLE VEHICLE (
       IDX NUMBER CONSTRAINT VEHICLE_IDX_PK PRIMARY KEY NOT NULL 
     , MODEL VARCHAR2(50) NOT NULL 
     , YEAR NUMBER NOT NULL 
     , PRICE NUMBER NOT NULL 
     , IMAGE VARCHAR2(300) NOT NULL 
     , MAKER VARCHAR2(20) NOT NULL 
     , LOCATION_IDX NUMBER CONSTRAINT VEHICLE_LOCATION_FK REFERENCES LOCATION(IDX) NOT NULL
     , FUELTYPE_IDX NUMBER CONSTRAINT VEHICLE_FUELTYPE_FK REFERENCES FUELTYPE(IDX) NOT NULL
     , CARTYPE_IDX NUMBER CONSTRAINT VEHICLE_CARTYPE_FK REFERENCES CARTYPE(IDX) NOT NULL
);

CREATE TABLE RATING (
       RATING_AVG NUMBER NOT NULL 
     , VEHICLE_IDX NUMBER CONSTRAINT RATING_VEHICLE_FK REFERENCES VEHICLE(IDX) NOT NULL 
);

CREATE TABLE INSURANCE (
       IDX NUMBER CONSTRAINT INSURANCE_IDX_PK PRIMARY KEY NOT NULL 
     , NAME VARCHAR2(30) NOT NULL 
     , PRICE NUMBER NOT NULL
);

CREATE TABLE RESERVATION (
       IDX NUMBER CONSTRAINT RESERVATION_IDX_PK PRIMARY KEY NOT NULL 
     , RESERV_START DATE DEFAULT SYSTIMESTAMP NOT NULL
     , RESERV_END DATE NOT NULL
     , RESERV_STATE NUMBER DEFAULT 1 CONSTRAINT RESERVATION_STATE_CK CHECK(RESERV_STATE IN (0, 1, 2)) NOT NULL
     , IS_MEMBER NUMBER DEFAULT 1 CONSTRAINT RESERVATION_IS_MEMBER_CK CHECK(IS_MEMBER IN (0, 1)) NOT NULL
     , INSURANCE_IDX NUMBER CONSTRAINT RESERVATION_INSURANCE_FK REFERENCES INSURANCE(IDX) NOT NULL
     , VEHICLE_IDX NUMBER CONSTRAINT RESERVATION_VEHICLE_FK REFERENCES VEHICLE(IDX) NOT NULL 
     , MEMBER_IDX NUMBER CONSTRAINT RESERVATION_MEMBER_FK REFERENCES MEMBER(IDX) NOT NULL
);

CREATE TABLE REVIEW (
       IDX NUMBER CONSTRAINT REVIEW_IDX_PK PRIMARY KEY NOT NULL 
     , CONTENT VARCHAR2(300) NOT NULL 
     , CREATE_DATE DATE NOT NULL 
     , RECOMMEND NUMBER NOT NULL 
     , SCORE NUMBER NOT NULL 
     , VEHICLE_IDX NUMBER CONSTRAINT REVIEW_VEHICLE_FK REFERENCES VEHICLE(IDX) NOT NULL
);

CREATE TABLE RECOMMEND (
       IDX NUMBER CONSTRAINT RECOMMEND_IDX_PK PRIMARY KEY NOT NULL 
     , REVIEW_IDX NUMBER CONSTRAINT RECOMMEND_REVIEW_FK REFERENCES REVIEW(IDX) NOT NULL 
     , MEMBER_IDX NUMBER CONSTRAINT RECOMMEND_MEMBER_FK REFERENCES MEMBER(IDX) NOT NULL
);

CREATE TABLE PAYMENT (
       PAY_CODE NUMBER CONSTRAINT PAYMENT_IDX_PK PRIMARY KEY NOT NULL 
     , PAY_DATE DATE DEFAULT SYSTIMESTAMP NOT NULL 
     , PAY_METHOD VARCHAR2(15) NOT NULL 
     , RESERV_IDX NUMBER CONSTRAINT PAYMENT_RESERVATION_FK REFERENCES RESERVATION(IDX) NOT NULL 
     , RESERV_CANCEL NUMBER DEFAULT 0 CONSTRAINT PAYMENT_RESERV_CANCEL_CK CHECK(RESERV_CANCEL IN(0, 1)) NOT NULL
     , CANCEL_DATE DATE DEFAULT NULL 
);