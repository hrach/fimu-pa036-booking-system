/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90203
Source Host           : localhost:5432
Source Database       : pa036
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90203
File Encoding         : 65001

Date: 2014-05-07 11:45:50
*/


-- ----------------------------
-- Sequence structure for booking_booking_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."booking_booking_id_seq";
CREATE SEQUENCE "public"."booking_booking_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."booking_booking_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for booking_status_booking_status_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."booking_status_booking_status_id_seq";
CREATE SEQUENCE "public"."booking_status_booking_status_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."booking_status_booking_status_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for branch_office_branch_office_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."branch_office_branch_office_id_seq";
CREATE SEQUENCE "public"."branch_office_branch_office_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."branch_office_branch_office_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for club_club_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."club_club_id_seq";
CREATE SEQUENCE "public"."club_club_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for country_country_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."country_country_id_seq";
CREATE SEQUENCE "public"."country_country_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."country_country_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for customer_customer_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customer_customer_id_seq";
CREATE SEQUENCE "public"."customer_customer_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."customer_customer_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for employee_eymploee_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."employee_eymploee_id_seq";
CREATE SEQUENCE "public"."employee_eymploee_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for genre_genre_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."genre_genre_id_seq";
CREATE SEQUENCE "public"."genre_genre_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."genre_genre_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for hall_hall_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hall_hall_id_seq";
CREATE SEQUENCE "public"."hall_hall_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."hall_hall_id_seq"', 4, true);

-- ----------------------------
-- Sequence structure for hall_property_hall_property_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hall_property_hall_property_id_seq";
CREATE SEQUENCE "public"."hall_property_hall_property_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for hall_seat_seat_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hall_seat_seat_id_seq";
CREATE SEQUENCE "public"."hall_seat_seat_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."hall_seat_seat_id_seq"', 20, true);

-- ----------------------------
-- Sequence structure for movie_movie_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."movie_movie_id_seq";
CREATE SEQUENCE "public"."movie_movie_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."movie_movie_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for projection_projection_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."projection_projection_id_seq";
CREATE SEQUENCE "public"."projection_projection_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."projection_projection_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for seat_type_seat_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seat_type_seat_type_id_seq";
CREATE SEQUENCE "public"."seat_type_seat_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."seat_type_seat_type_id_seq"', 2, true);

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking";
CREATE TABLE "public"."booking" (
"booking_id" integer DEFAULT nextval('booking_booking_id_seq'::regclass) NOT NULL,
"projection_id" integer,
"customer_id" integer,
"booking_status_id" integer,
"price_total" numeric(10,2),
"time_created" timestamp with time zone,
"employee_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for booking_hall_seat
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking_hall_seat";
CREATE TABLE "public"."booking_hall_seat" (
"booking_id" integer,
"seat_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for booking_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking_status";
CREATE TABLE "public"."booking_status" (
"booking_status_id" integer DEFAULT nextval('booking_status_booking_status_id_seq'::regclass) NOT NULL,
"status" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for branch_office
-- ----------------------------
DROP TABLE IF EXISTS "public"."branch_office";
CREATE TABLE "public"."branch_office" (
"branch_office_id" integer DEFAULT nextval('branch_office_branch_office_id_seq'::regclass) NOT NULL,
"name" character varying(255) COLLATE "default",
"description" text COLLATE "default",
"address_line_1" character varying(255) COLLATE "default",
"address_line_2" character varying(255) COLLATE "default",
"city" character varying(255) COLLATE "default",
"postal_code" character varying(10) COLLATE "default",
"country_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS "public"."club";
CREATE TABLE "public"."club" (
"club_id" integer DEFAULT nextval('club_club_id_seq'::regclass) NOT NULL,
"name" character varying(255) COLLATE "default",
"sale_amount" integer,
"sale_percentage" numeric(3,2)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS "public"."country";
CREATE TABLE "public"."country" (
"country_id" integer DEFAULT nextval('country_country_id_seq'::regclass) NOT NULL,
"name" character varying(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer";
CREATE TABLE "public"."customer" (
"customer_id" integer DEFAULT nextval('customer_customer_id_seq'::regclass) NOT NULL,
"first_name" character varying(128) COLLATE "default",
"last_name" character varying(128) COLLATE "default",
"phone_number" character varying(15) COLLATE "default",
"club_id" integer,
"email" character varying(255) COLLATE "default" NOT NULL,
"password" character varying(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS "public"."employee";
CREATE TABLE "public"."employee" (
"employee_id" integer DEFAULT nextval('employee_eymploee_id_seq'::regclass) NOT NULL,
"username" character varying(255) COLLATE "default" NOT NULL,
"password" character varying(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS "public"."genre";
CREATE TABLE "public"."genre" (
"genre_id" integer DEFAULT nextval('genre_genre_id_seq'::regclass) NOT NULL,
"genre_type" character varying(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS "public"."hall";
CREATE TABLE "public"."hall" (
"hall_id" integer DEFAULT nextval('hall_hall_id_seq'::regclass) NOT NULL,
"branch_office_id" integer NOT NULL,
"label" character varying(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_hall_property
-- ----------------------------
DROP TABLE IF EXISTS "public"."hall_hall_property";
CREATE TABLE "public"."hall_hall_property" (
"hall_property_id" integer,
"hall_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_property
-- ----------------------------
DROP TABLE IF EXISTS "public"."hall_property";
CREATE TABLE "public"."hall_property" (
"hall_property_id" integer DEFAULT nextval('hall_property_hall_property_id_seq'::regclass) NOT NULL,
"key" character varying(255) COLLATE "default" NOT NULL,
"value" character varying(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_seat
-- ----------------------------
DROP TABLE IF EXISTS "public"."hall_seat";
CREATE TABLE "public"."hall_seat" (
"seat_id" integer DEFAULT nextval('hall_seat_seat_id_seq'::regclass) NOT NULL,
"hall_id" integer,
"seat_type_id" integer,
"seat_row" integer,
"seat_number" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie";
CREATE TABLE "public"."movie" (
"movie_id" integer DEFAULT nextval('movie_movie_id_seq'::regclass) NOT NULL,
"title" character varying(255) COLLATE "default",
"descritption" text COLLATE "default",
"running_time" integer,
"release_date" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for movie_genre
-- ----------------------------
DROP TABLE IF EXISTS "public"."movie_genre";
CREATE TABLE "public"."movie_genre" (
"movie_id" integer NOT NULL,
"genre_id" integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for projection
-- ----------------------------
DROP TABLE IF EXISTS "public"."projection";
CREATE TABLE "public"."projection" (
"projection_id" integer DEFAULT nextval('projection_projection_id_seq'::regclass) NOT NULL,
"movie_id" integer,
"hall_id" integer,
"start" timestamp with time zone,
"price" numeric(10,2),
"is_3D" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for seat_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."seat_type";
CREATE TABLE "public"."seat_type" (
"seat_type_id" integer DEFAULT nextval('seat_type_seat_type_id_seq'::regclass) NOT NULL,
"seat_type" character varying(255) COLLATE "default" NOT NULL,
"seat_type_sale_amount" integer,
"seat_type_sale_percantage" numeric(3,2)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- View structure for projection_seats
-- ----------------------------
CREATE OR REPLACE VIEW "public"."projection_seats" AS 
SELECT hs.seat_id, hs.seat_type_id, hs.seat_row, hs.seat_number, CASE WHEN (b.booking_id IS NULL) THEN 'free'::text ELSE 'booked'::text END AS state FROM ((hall_seat hs LEFT JOIN projection p USING (hall_id)) LEFT JOIN (SELECT bhs.booking_id, bhs.seat_id FROM (booking_hall_seat bhs JOIN booking ON (((booking.booking_id = bhs.booking_id) AND (booking.booking_status_id <> 1))))) b USING (seat_id)) ORDER BY hs.seat_row, hs.seat_number;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."booking_booking_id_seq" OWNED BY "booking"."booking_id";
ALTER SEQUENCE "public"."booking_status_booking_status_id_seq" OWNED BY "booking_status"."booking_status_id";
ALTER SEQUENCE "public"."branch_office_branch_office_id_seq" OWNED BY "branch_office"."branch_office_id";
ALTER SEQUENCE "public"."club_club_id_seq" OWNED BY "club"."club_id";
ALTER SEQUENCE "public"."country_country_id_seq" OWNED BY "country"."country_id";
ALTER SEQUENCE "public"."customer_customer_id_seq" OWNED BY "customer"."customer_id";
ALTER SEQUENCE "public"."employee_eymploee_id_seq" OWNED BY "employee"."employee_id";
ALTER SEQUENCE "public"."genre_genre_id_seq" OWNED BY "genre"."genre_id";
ALTER SEQUENCE "public"."hall_hall_id_seq" OWNED BY "hall"."hall_id";
ALTER SEQUENCE "public"."hall_property_hall_property_id_seq" OWNED BY "hall_property"."hall_property_id";
ALTER SEQUENCE "public"."hall_seat_seat_id_seq" OWNED BY "hall_seat"."seat_id";
ALTER SEQUENCE "public"."movie_movie_id_seq" OWNED BY "movie"."movie_id";
ALTER SEQUENCE "public"."projection_projection_id_seq" OWNED BY "projection"."projection_id";
ALTER SEQUENCE "public"."seat_type_seat_type_id_seq" OWNED BY "seat_type"."seat_type_id";

-- ----------------------------
-- Indexes structure for table booking
-- ----------------------------
CREATE INDEX "booking_booking_status_id_idx" ON "public"."booking" USING btree (booking_status_id);
CREATE INDEX "booking_customer_id_idx" ON "public"."booking" USING btree (customer_id);
CREATE INDEX "booking_projection_id_idx" ON "public"."booking" USING btree (projection_id);

-- ----------------------------
-- Primary Key structure for table booking
-- ----------------------------
ALTER TABLE "public"."booking" ADD PRIMARY KEY ("booking_id");

-- ----------------------------
-- Indexes structure for table booking_hall_seat
-- ----------------------------
CREATE INDEX "booking_hall_seat_booking_id_idx" ON "public"."booking_hall_seat" USING btree (booking_id);
CREATE INDEX "booking_hall_seat_seat_id_idx" ON "public"."booking_hall_seat" USING btree (seat_id);

-- ----------------------------
-- Uniques structure for table booking_status
-- ----------------------------
ALTER TABLE "public"."booking_status" ADD UNIQUE ("status");

-- ----------------------------
-- Primary Key structure for table booking_status
-- ----------------------------
ALTER TABLE "public"."booking_status" ADD PRIMARY KEY ("booking_status_id");

-- ----------------------------
-- Primary Key structure for table branch_office
-- ----------------------------
ALTER TABLE "public"."branch_office" ADD PRIMARY KEY ("branch_office_id");

-- ----------------------------
-- Primary Key structure for table club
-- ----------------------------
ALTER TABLE "public"."club" ADD PRIMARY KEY ("club_id");

-- ----------------------------
-- Primary Key structure for table country
-- ----------------------------
ALTER TABLE "public"."country" ADD PRIMARY KEY ("country_id");

-- ----------------------------
-- Indexes structure for table customer
-- ----------------------------
CREATE INDEX "customer_club_id_idx" ON "public"."customer" USING btree (club_id);

-- ----------------------------
-- Primary Key structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD PRIMARY KEY ("customer_id");

-- ----------------------------
-- Primary Key structure for table employee
-- ----------------------------
ALTER TABLE "public"."employee" ADD PRIMARY KEY ("employee_id");

-- ----------------------------
-- Uniques structure for table genre
-- ----------------------------
ALTER TABLE "public"."genre" ADD UNIQUE ("genre_type");

-- ----------------------------
-- Primary Key structure for table genre
-- ----------------------------
ALTER TABLE "public"."genre" ADD PRIMARY KEY ("genre_id");

-- ----------------------------
-- Indexes structure for table hall
-- ----------------------------
CREATE INDEX "hall_branch_office_id_idx" ON "public"."hall" USING btree (branch_office_id);

-- ----------------------------
-- Primary Key structure for table hall
-- ----------------------------
ALTER TABLE "public"."hall" ADD PRIMARY KEY ("hall_id");

-- ----------------------------
-- Indexes structure for table hall_hall_property
-- ----------------------------
CREATE INDEX "hall_hall_property_hall_id_idx" ON "public"."hall_hall_property" USING btree (hall_id);
CREATE INDEX "hall_hall_property_hall_property_id_idx" ON "public"."hall_hall_property" USING btree (hall_property_id);

-- ----------------------------
-- Uniques structure for table hall_property
-- ----------------------------
ALTER TABLE "public"."hall_property" ADD UNIQUE ("key");

-- ----------------------------
-- Primary Key structure for table hall_property
-- ----------------------------
ALTER TABLE "public"."hall_property" ADD PRIMARY KEY ("hall_property_id");

-- ----------------------------
-- Indexes structure for table hall_seat
-- ----------------------------
CREATE INDEX "hall_seat_hall_id_idx" ON "public"."hall_seat" USING btree (hall_id);
CREATE INDEX "hall_seat_seat_type_id_idx" ON "public"."hall_seat" USING btree (seat_type_id);

-- ----------------------------
-- Primary Key structure for table hall_seat
-- ----------------------------
ALTER TABLE "public"."hall_seat" ADD PRIMARY KEY ("seat_id");

-- ----------------------------
-- Primary Key structure for table movie
-- ----------------------------
ALTER TABLE "public"."movie" ADD PRIMARY KEY ("movie_id");

-- ----------------------------
-- Primary Key structure for table movie_genre
-- ----------------------------
ALTER TABLE "public"."movie_genre" ADD PRIMARY KEY ("movie_id", "genre_id");

-- ----------------------------
-- Indexes structure for table projection
-- ----------------------------
CREATE INDEX "projection_hall_id_idx" ON "public"."projection" USING btree (hall_id);
CREATE INDEX "projection_movie_id_idx" ON "public"."projection" USING btree (movie_id);

-- ----------------------------
-- Primary Key structure for table projection
-- ----------------------------
ALTER TABLE "public"."projection" ADD PRIMARY KEY ("projection_id");

-- ----------------------------
-- Primary Key structure for table seat_type
-- ----------------------------
ALTER TABLE "public"."seat_type" ADD PRIMARY KEY ("seat_type_id");

-- ----------------------------
-- Foreign Key structure for table "public"."booking"
-- ----------------------------
ALTER TABLE "public"."booking" ADD FOREIGN KEY ("employee_id") REFERENCES "public"."employee" ("employee_id") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."booking" ADD FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("customer_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."booking" ADD FOREIGN KEY ("projection_id") REFERENCES "public"."projection" ("projection_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."booking" ADD FOREIGN KEY ("booking_status_id") REFERENCES "public"."booking_status" ("booking_status_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."booking_hall_seat"
-- ----------------------------
ALTER TABLE "public"."booking_hall_seat" ADD FOREIGN KEY ("booking_id") REFERENCES "public"."booking" ("booking_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."booking_hall_seat" ADD FOREIGN KEY ("seat_id") REFERENCES "public"."hall_seat" ("seat_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."branch_office"
-- ----------------------------
ALTER TABLE "public"."branch_office" ADD FOREIGN KEY ("country_id") REFERENCES "public"."country" ("country_id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Key structure for table "public"."customer"
-- ----------------------------
ALTER TABLE "public"."customer" ADD FOREIGN KEY ("club_id") REFERENCES "public"."club" ("club_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."hall"
-- ----------------------------
ALTER TABLE "public"."hall" ADD FOREIGN KEY ("branch_office_id") REFERENCES "public"."branch_office" ("branch_office_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."hall_hall_property"
-- ----------------------------
ALTER TABLE "public"."hall_hall_property" ADD FOREIGN KEY ("hall_id") REFERENCES "public"."hall" ("hall_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."hall_hall_property" ADD FOREIGN KEY ("hall_property_id") REFERENCES "public"."hall_property" ("hall_property_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."hall_seat"
-- ----------------------------
ALTER TABLE "public"."hall_seat" ADD FOREIGN KEY ("hall_id") REFERENCES "public"."hall" ("hall_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."hall_seat" ADD FOREIGN KEY ("seat_type_id") REFERENCES "public"."seat_type" ("seat_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."movie_genre"
-- ----------------------------
ALTER TABLE "public"."movie_genre" ADD FOREIGN KEY ("movie_id") REFERENCES "public"."movie" ("movie_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."movie_genre" ADD FOREIGN KEY ("genre_id") REFERENCES "public"."genre" ("genre_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."projection"
-- ----------------------------
ALTER TABLE "public"."projection" ADD FOREIGN KEY ("hall_id") REFERENCES "public"."hall" ("hall_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."projection" ADD FOREIGN KEY ("movie_id") REFERENCES "public"."movie" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
-- chybna definice FK
--ALTER TABLE "public"."projection" ADD FOREIGN KEY ("movie_id") REFERENCES "public"."projection_type" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION;