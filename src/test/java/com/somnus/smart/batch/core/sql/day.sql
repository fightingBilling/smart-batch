-- ----------------------------
-- Table structure for "SCOTT"."TCOR_DAY_BATCH"
-- ----------------------------
DROP TABLE "SCOTT"."TCOR_DAY_BATCH";
CREATE TABLE "SCOTT"."TCOR_DAY_BATCH" (
"ACC_DATE" VARCHAR2(10 BYTE) NOT NULL ,
"CREATE_TIME" VARCHAR2(30 BYTE) NULL ,
"CREATE_BY" VARCHAR2(40 BYTE) NULL ,
"MODIFY_TIME" VARCHAR2(30 BYTE) NULL ,
"MODIFY_BY" VARCHAR2(40 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SCOTT"."TCOR_DAY_BATCH" IS '日终状态表';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_BATCH"."ACC_DATE" IS '账户日期_YYYY-MM-DD';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_BATCH"."CREATE_TIME" IS '创建时间_yyyy-MM-dd HH24:MI:SS';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_BATCH"."CREATE_BY" IS '创建人';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_BATCH"."MODIFY_TIME" IS '更新时间_yyyy-MM-dd HH24:MI:SS';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_BATCH"."MODIFY_BY" IS '更新人';

-- ----------------------------
-- Records of TCOR_DAY_BATCH
-- ----------------------------
INSERT INTO "SCOTT"."TCOR_DAY_BATCH" VALUES ('2015-07-22', '2014-09-24 11:17:20', 'SYSTEM', '2014-09-24 11:17:20', 'SYSTEM');

-- ----------------------------
-- Indexes structure for table TCOR_DAY_BATCH
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SCOTT"."TCOR_DAY_BATCH"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_BATCH" ADD CHECK ("ACC_DATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TCOR_DAY_BATCH"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_BATCH" ADD PRIMARY KEY ("ACC_DATE");

-- ----------------------------
-- Table structure for "SCOTT"."TCOR_DAY_DAYLIST"
-- ----------------------------
DROP TABLE "SCOTT"."TCOR_DAY_DAYLIST";
CREATE TABLE "SCOTT"."TCOR_DAY_DAYLIST" (
"DATE_CODE" VARCHAR2(10 BYTE) NOT NULL ,
"YEAR_CODE" VARCHAR2(4 BYTE) NULL ,
"MONTH_CODE" VARCHAR2(2 BYTE) NULL ,
"DAY_CODE" VARCHAR2(2 BYTE) NULL ,
"IS_HOLIDAY" CHAR(1 BYTE) NULL ,
"IS_WEEKEND" CHAR(1 BYTE) NULL ,
"IS_TENDAY" CHAR(1 BYTE) NULL ,
"IS_MONTHEND" CHAR(1 BYTE) NULL ,
"IS_QUARTEREND" CHAR(1 BYTE) NULL ,
"IS_YEAREND" CHAR(1 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(30 BYTE) NULL ,
"CREATE_BY" VARCHAR2(40 BYTE) NULL ,
"MODIFY_TIME" VARCHAR2(30 BYTE) NULL ,
"MODIFY_BY" VARCHAR2(40 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SCOTT"."TCOR_DAY_DAYLIST" IS '核心工作历';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."DATE_CODE" IS '年月日_YYYY-MM-DD';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."YEAR_CODE" IS '年份_yyyy';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."MONTH_CODE" IS '月份_mm';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."DAY_CODE" IS '日_dd';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_HOLIDAY" IS '是否节假日_0 工作日 1 节假日';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_WEEKEND" IS '是否周末_0 不是 1 是';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_TENDAY" IS '是否旬末_0 不是 1 是';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_MONTHEND" IS '是否月末_0 不是 1 是';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_QUARTEREND" IS '是否季末_0 不是 1 是';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."IS_YEAREND" IS '是否年末_0 不是 1 是';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."CREATE_BY" IS '创建人';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."MODIFY_TIME" IS '更新时间';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_DAYLIST"."MODIFY_BY" IS '更新人';

-- ----------------------------
-- Records of TCOR_DAY_DAYLIST
-- ----------------------------
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-01', '2015', '01', '01', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-02', '2015', '01', '02', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-03', '2015', '01', '03', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-04', '2015', '01', '04', '0', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-05', '2015', '01', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-06', '2015', '01', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-07', '2015', '01', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-08', '2015', '01', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-09', '2015', '01', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-10', '2015', '01', '10', '1', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-11', '2015', '01', '11', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-12', '2015', '01', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-13', '2015', '01', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-14', '2015', '01', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-15', '2015', '01', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-16', '2015', '01', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-17', '2015', '01', '17', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-18', '2015', '01', '18', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-19', '2015', '01', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-20', '2015', '01', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-21', '2015', '01', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-22', '2015', '01', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-23', '2015', '01', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-24', '2015', '01', '24', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-25', '2015', '01', '25', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-14', '2015', '04', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-15', '2015', '04', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-16', '2015', '04', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-17', '2015', '04', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-18', '2015', '04', '18', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-19', '2015', '04', '19', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-20', '2015', '04', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-21', '2015', '04', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-22', '2015', '04', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-23', '2015', '04', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-24', '2015', '04', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-25', '2015', '04', '25', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-26', '2015', '04', '26', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-27', '2015', '04', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-28', '2015', '04', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-29', '2015', '04', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-30', '2015', '04', '30', '0', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-01', '2015', '05', '01', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-02', '2015', '05', '02', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-03', '2015', '05', '03', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-04', '2015', '05', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-05', '2015', '05', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-06', '2015', '05', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-07', '2015', '05', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-08', '2015', '05', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-09', '2015', '05', '09', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-10', '2015', '05', '10', '1', '1', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-11', '2015', '05', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-12', '2015', '05', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-13', '2015', '05', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-14', '2015', '05', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-15', '2015', '05', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-16', '2015', '05', '16', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-17', '2015', '05', '17', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-18', '2015', '05', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-19', '2015', '05', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-20', '2015', '05', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-21', '2015', '05', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-22', '2015', '05', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-23', '2015', '05', '23', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-24', '2015', '05', '24', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-25', '2015', '05', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-26', '2015', '05', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-27', '2015', '05', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-28', '2015', '05', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-29', '2015', '05', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-30', '2015', '05', '30', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-05-31', '2015', '05', '31', '1', '1', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-01', '2015', '06', '01', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-02', '2015', '06', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-03', '2015', '06', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-04', '2015', '06', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-05', '2015', '06', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-06', '2015', '06', '06', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-07', '2015', '06', '07', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-08', '2015', '06', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-09', '2015', '06', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-10', '2015', '06', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-11', '2015', '06', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-12', '2015', '06', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-13', '2015', '06', '13', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-14', '2015', '06', '14', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-15', '2015', '06', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-16', '2015', '06', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-17', '2015', '06', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-18', '2015', '06', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-19', '2015', '06', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-20', '2015', '06', '20', '1', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-21', '2015', '06', '21', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-22', '2015', '06', '22', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-23', '2015', '06', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-24', '2015', '06', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-25', '2015', '06', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-26', '2015', '06', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-27', '2015', '06', '27', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-28', '2015', '06', '28', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-29', '2015', '06', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-06-30', '2015', '06', '30', '0', '0', '1', '1', '1', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-01', '2015', '07', '01', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-02', '2015', '07', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-03', '2015', '07', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-04', '2015', '07', '04', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-05', '2015', '07', '05', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-06', '2015', '07', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-07', '2015', '07', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-08', '2015', '07', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-09', '2015', '07', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-10', '2015', '07', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-11', '2015', '07', '11', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-12', '2015', '07', '12', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-13', '2015', '07', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-14', '2015', '07', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-15', '2015', '07', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-16', '2015', '07', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-17', '2015', '07', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-18', '2015', '07', '18', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-19', '2015', '07', '19', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-20', '2015', '07', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-21', '2015', '07', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-22', '2015', '07', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-23', '2015', '07', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-24', '2015', '07', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-25', '2015', '07', '25', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-26', '2015', '07', '26', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-27', '2015', '07', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-28', '2015', '07', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-29', '2015', '07', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-30', '2015', '07', '30', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-07-31', '2015', '07', '31', '0', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-01', '2015', '08', '01', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-02', '2015', '08', '02', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-03', '2015', '08', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-04', '2015', '08', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-05', '2015', '08', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-06', '2015', '08', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-07', '2015', '08', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-08', '2015', '08', '08', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-09', '2015', '08', '09', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-10', '2015', '08', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-11', '2015', '08', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-12', '2015', '08', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-13', '2015', '08', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-14', '2015', '08', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-15', '2015', '08', '15', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-16', '2015', '08', '16', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-17', '2015', '08', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-18', '2015', '08', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-19', '2015', '08', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-20', '2015', '08', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-21', '2015', '08', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-22', '2015', '08', '22', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-23', '2015', '08', '23', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-24', '2015', '08', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-25', '2015', '08', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-26', '2015', '08', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-27', '2015', '08', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-28', '2015', '08', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-29', '2015', '08', '29', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-30', '2015', '08', '30', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-08-31', '2015', '08', '31', '0', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-01', '2015', '09', '01', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-02', '2015', '09', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-03', '2015', '09', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-04', '2015', '09', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-05', '2015', '09', '05', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-06', '2015', '09', '06', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-07', '2015', '09', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-08', '2015', '09', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-09', '2015', '09', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-10', '2015', '09', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-11', '2015', '09', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-12', '2015', '09', '12', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-13', '2015', '09', '13', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-14', '2015', '09', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-15', '2015', '09', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-16', '2015', '09', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-17', '2015', '09', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-18', '2015', '09', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-19', '2015', '09', '19', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-20', '2015', '09', '20', '1', '1', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-21', '2015', '09', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-22', '2015', '09', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-23', '2015', '09', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-24', '2015', '09', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-25', '2015', '09', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-26', '2015', '09', '26', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-27', '2015', '09', '27', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-28', '2015', '09', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-29', '2015', '09', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-09-30', '2015', '09', '30', '0', '0', '1', '1', '1', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-01', '2015', '10', '01', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-02', '2015', '10', '02', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-03', '2015', '10', '03', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-04', '2015', '10', '04', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-05', '2015', '10', '05', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-06', '2015', '10', '06', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-07', '2015', '10', '07', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-08', '2015', '10', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-09', '2015', '10', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-10', '2015', '10', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-11', '2015', '10', '11', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-12', '2015', '10', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-13', '2015', '10', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-14', '2015', '10', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-15', '2015', '10', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-16', '2015', '10', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-17', '2015', '10', '17', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-18', '2015', '10', '18', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-19', '2015', '10', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-20', '2015', '10', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-21', '2015', '10', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-22', '2015', '10', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-23', '2015', '10', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-24', '2015', '10', '24', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-25', '2015', '10', '25', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-26', '2015', '10', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-27', '2015', '10', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-28', '2015', '10', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-29', '2015', '10', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-30', '2015', '10', '30', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-10-31', '2015', '10', '31', '1', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-01', '2015', '11', '01', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-02', '2015', '11', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-03', '2015', '11', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-04', '2015', '11', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-05', '2015', '11', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-06', '2015', '11', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-07', '2015', '11', '07', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-08', '2015', '11', '08', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-09', '2015', '11', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-10', '2015', '11', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-11', '2015', '11', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-12', '2015', '11', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-13', '2015', '11', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-14', '2015', '11', '14', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-15', '2015', '11', '15', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-16', '2015', '11', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-17', '2015', '11', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-18', '2015', '11', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-19', '2015', '11', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-20', '2015', '11', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-21', '2015', '11', '21', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-22', '2015', '11', '22', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-23', '2015', '11', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-24', '2015', '11', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-25', '2015', '11', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-26', '2015', '11', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-27', '2015', '11', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-28', '2015', '11', '28', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-29', '2015', '11', '29', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-11-30', '2015', '11', '30', '0', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-01', '2015', '12', '01', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-02', '2015', '12', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-03', '2015', '12', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-04', '2015', '12', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-05', '2015', '12', '05', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-06', '2015', '12', '06', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-07', '2015', '12', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-08', '2015', '12', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-09', '2015', '12', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-10', '2015', '12', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-11', '2015', '12', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-12', '2015', '12', '12', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-13', '2015', '12', '13', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-14', '2015', '12', '14', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-15', '2015', '12', '15', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-16', '2015', '12', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-17', '2015', '12', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-18', '2015', '12', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-19', '2015', '12', '19', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-20', '2015', '12', '20', '1', '1', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-21', '2015', '12', '21', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-22', '2015', '12', '22', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-23', '2015', '12', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-24', '2015', '12', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-25', '2015', '12', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-26', '2015', '12', '26', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-27', '2015', '12', '27', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-28', '2015', '12', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-29', '2015', '12', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-30', '2015', '12', '30', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-12-31', '2015', '12', '31', '0', '0', '1', '1', '1', '1', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-26', '2015', '01', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-27', '2015', '01', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-28', '2015', '01', '28', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-29', '2015', '01', '29', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-30', '2015', '01', '30', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-01-31', '2015', '01', '31', '1', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-01', '2015', '02', '01', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-02', '2015', '02', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-03', '2015', '02', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-04', '2015', '02', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-05', '2015', '02', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-06', '2015', '02', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-07', '2015', '02', '07', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-08', '2015', '02', '08', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-09', '2015', '02', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-10', '2015', '02', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-11', '2015', '02', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-12', '2015', '02', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-13', '2015', '02', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-14', '2015', '02', '14', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-15', '2015', '02', '15', '0', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-16', '2015', '02', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-17', '2015', '02', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-18', '2015', '02', '18', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-19', '2015', '02', '19', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-20', '2015', '02', '20', '1', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-21', '2015', '02', '21', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-22', '2015', '02', '22', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-23', '2015', '02', '23', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-24', '2015', '02', '24', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-25', '2015', '02', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-26', '2015', '02', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-27', '2015', '02', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-02-28', '2015', '02', '28', '0', '0', '1', '1', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-01', '2015', '03', '01', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-02', '2015', '03', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-03', '2015', '03', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-04', '2015', '03', '04', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-05', '2015', '03', '05', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-06', '2015', '03', '06', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-07', '2015', '03', '07', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-08', '2015', '03', '08', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-09', '2015', '03', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-10', '2015', '03', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-11', '2015', '03', '11', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-12', '2015', '03', '12', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-13', '2015', '03', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-14', '2015', '03', '14', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-15', '2015', '03', '15', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-16', '2015', '03', '16', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-17', '2015', '03', '17', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-18', '2015', '03', '18', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-19', '2015', '03', '19', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-20', '2015', '03', '20', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-21', '2015', '03', '21', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-22', '2015', '03', '22', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-23', '2015', '03', '23', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-24', '2015', '03', '24', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-25', '2015', '03', '25', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-26', '2015', '03', '26', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-27', '2015', '03', '27', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-28', '2015', '03', '28', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-29', '2015', '03', '29', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-30', '2015', '03', '30', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-03-31', '2015', '03', '31', '0', '0', '1', '1', '1', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-01', '2015', '04', '01', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-02', '2015', '04', '02', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-03', '2015', '04', '03', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-04', '2015', '04', '04', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-05', '2015', '04', '05', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-06', '2015', '04', '06', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-07', '2015', '04', '07', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-08', '2015', '04', '08', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-09', '2015', '04', '09', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-10', '2015', '04', '10', '0', '0', '1', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-11', '2015', '04', '11', '1', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-12', '2015', '04', '12', '1', '1', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');
INSERT INTO "SCOTT"."TCOR_DAY_DAYLIST" VALUES ('2015-04-13', '2015', '04', '13', '0', '0', '0', '0', '0', '0', '2014-12-31 23:59:59', 'system', '2014-12-31 23:59:59', 'system');

-- ----------------------------
-- Indexes structure for table TCOR_DAY_DAYLIST
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SCOTT"."TCOR_DAY_DAYLIST"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_DAYLIST" ADD UNIQUE ("YEAR_CODE", "MONTH_CODE", "DAY_CODE");

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TCOR_DAY_DAYLIST"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_DAYLIST" ADD PRIMARY KEY ("DATE_CODE");

-- ----------------------------
-- Table structure for "SCOTT"."TCOR_DAY_SYSTEM"
-- ----------------------------
DROP TABLE "SCOTT"."TCOR_DAY_SYSTEM";
CREATE TABLE "SCOTT"."TCOR_DAY_SYSTEM" (
"DAY_ID" VARCHAR2(40 BYTE) NOT NULL ,
"CUT_CODE" VARCHAR2(40 BYTE) NULL ,
"CORE_DATE" VARCHAR2(10 BYTE) NULL ,
"L_CORE_DATE" VARCHAR2(10 BYTE) NULL ,
"BL_CORE_DATE" VARCHAR2(10 BYTE) NULL ,
"N_CORE_DATE" VARCHAR2(10 BYTE) NULL ,
"YEAR_END_DATE" VARCHAR2(10 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(30 BYTE) NULL ,
"CREATE_BY" VARCHAR2(40 BYTE) NULL ,
"MODIFY_TIME" VARCHAR2(30 BYTE) NULL ,
"MODIFY_BY" VARCHAR2(40 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SCOTT"."TCOR_DAY_SYSTEM" IS '核心工作日';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."DAY_ID" IS '日期编号_自增长 ';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."CUT_CODE" IS '日切编号';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."CORE_DATE" IS '当前工作日期';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."L_CORE_DATE" IS '上一工作日期';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."BL_CORE_DATE" IS '上上工作日期';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."N_CORE_DATE" IS '下一工作日期';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."YEAR_END_DATE" IS '年终决算日期';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."CREATE_BY" IS '创建人';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."MODIFY_TIME" IS '更新时间';
COMMENT ON COLUMN "SCOTT"."TCOR_DAY_SYSTEM"."MODIFY_BY" IS '更新人';

-- ----------------------------
-- Records of TCOR_DAY_SYSTEM
-- ----------------------------
INSERT INTO "SCOTT"."TCOR_DAY_SYSTEM" VALUES ('1', 'SCOTT', '2015-07-25', '2015-07-22', '2015-07-23', '2015-07-26', '2015-12-31', '2014-09-28 16:01:32', 'system', '2015-07-27 14:53:39', null);

-- ----------------------------
-- Indexes structure for table TCOR_DAY_SYSTEM
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SCOTT"."TCOR_DAY_SYSTEM"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_SYSTEM" ADD UNIQUE ("CUT_CODE");

-- ----------------------------
-- Primary Key structure for table "SCOTT"."TCOR_DAY_SYSTEM"
-- ----------------------------
ALTER TABLE "SCOTT"."TCOR_DAY_SYSTEM" ADD PRIMARY KEY ("DAY_ID");
