/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : localhost
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : SCOTT

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2015-07-30 22:04:09
*/


-- ----------------------------
-- Table structure for "SCOTT"."TESTA"
-- ----------------------------
DROP TABLE "SCOTT"."TESTA";
CREATE TABLE "SCOTT"."TESTA" (
"ID" NUMBER NOT NULL ,
"FIELD1" VARCHAR2(50 BYTE) NOT NULL ,
"FIELD2" VARCHAR2(50 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TESTA
-- ----------------------------

-- ----------------------------
-- Table structure for "SCOTT"."TESTB"
-- ----------------------------
DROP TABLE "SCOTT"."TESTB";
CREATE TABLE "SCOTT"."TESTB" (
"ID" NUMBER NOT NULL ,
"FIELD1" VARCHAR2(50 BYTE) NOT NULL ,
"FIELD2" VARCHAR2(50 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TESTB
-- ----------------------------

-- ----------------------------
-- Table structure for "SCOTT"."TESTC"
-- ----------------------------
DROP TABLE "SCOTT"."TESTC";
CREATE TABLE "SCOTT"."TESTC" (
"ID" NUMBER NOT NULL ,
"FIELD" VARCHAR2(256 BYTE) NOT NULL ,
"STATUS" CHAR(1 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TESTC
-- ----------------------------

-- ----------------------------
-- Indexes structure for table TESTA
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SCOTT"."TESTA"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTA" ADD UNIQUE ("FIELD1");

-- ----------------------------
-- Checks structure for table "SCOTT"."TESTA"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("FIELD1" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("FIELD2" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("FIELD1" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTA" ADD CHECK ("FIELD2" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TESTA"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTA" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TESTB
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SCOTT"."TESTB"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("FIELD1" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("FIELD2" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("FIELD1" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTB" ADD CHECK ("FIELD2" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TESTB"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTB" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TESTC
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SCOTT"."TESTC"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTC" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTC" ADD CHECK ("FIELD" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTC" ADD CHECK ("STATUS" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTC" ADD CHECK ("FIELD" IS NOT NULL);
ALTER TABLE "SCOTT"."TESTC" ADD CHECK ("STATUS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TESTC"
-- ----------------------------
ALTER TABLE "SCOTT"."TESTC" ADD PRIMARY KEY ("ID");
