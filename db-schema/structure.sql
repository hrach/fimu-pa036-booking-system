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
-- Drop views
-- ----------------------------
DROP VIEW IF EXISTS "public"."projection_seats";

-- ----------------------------
-- Drop tables
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking_hall_seat";
DROP TABLE IF EXISTS "public"."booking";
DROP TABLE IF EXISTS "public"."booking_status";
DROP TABLE IF EXISTS "public"."employee";
DROP TABLE IF EXISTS "public"."customer";
DROP TABLE IF EXISTS "public"."club";
DROP TABLE IF EXISTS "public"."projection";
DROP TABLE IF EXISTS "public"."movie_genre";
DROP TABLE IF EXISTS "public"."genre";                                     
DROP TABLE IF EXISTS "public"."movie";
DROP TABLE IF EXISTS "public"."hall_seat";
DROP TABLE IF EXISTS "public"."seat_type";
DROP TABLE IF EXISTS "public"."hall_hall_property";
DROP TABLE IF EXISTS "public"."hall";
DROP TABLE IF EXISTS "public"."branch_office";
DROP TABLE IF EXISTS "public"."country";
DROP TABLE IF EXISTS "public"."hall_property";

-- ----------------------------
-- Table structure for booking
-- ----------------------------
CREATE TABLE "public"."booking" (
"booking_id" serial primary key,
"projection_id" integer,
"customer_id" integer,
"booking_status_id" integer,
"price_total" numeric(10,2) CHECK (price_total >= 0),
"time_created" timestamp with time zone,
"employee_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for booking_hall_seat
-- ----------------------------
CREATE TABLE "public"."booking_hall_seat" (
"booking_id" integer NOT NULL,
"seat_id" integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for booking_status
-- ----------------------------
CREATE TABLE "public"."booking_status" (
"booking_status_id" serial primary key,
"status" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for branch_office
-- ----------------------------
CREATE TABLE "public"."branch_office" (
"branch_office_id" serial primary key,
"name" character varying(255),
"description" text,
"address_line_1" character varying(255),
"address_line_2" character varying(255),
"city" character varying(255),
"postal_code" character varying(10),
"country_id" integer
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for club
-- ----------------------------
CREATE TABLE "public"."club" (
"club_id" serial primary key,
"name" character varying(255),
"sale_amount" integer,
"sale_percentage" numeric(3,2)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for country
-- ----------------------------
CREATE TABLE "public"."country" (
"country_id" serial primary key,
"name" character varying(255) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
CREATE TABLE "public"."customer" (
"customer_id" serial primary key,
"first_name" character varying(128),
"last_name" character varying(128),
"phone_number" character varying(15),
"club_id" integer,
"email" character varying(255) NOT NULL,
"username" character varying(255) NOT NULL,
"password" character varying(255) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
CREATE TABLE "public"."employee" (
"employee_id" serial primary key,
"username" character varying(255) NOT NULL,
"password" character varying(255) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for genre
-- ----------------------------
CREATE TABLE "public"."genre" (
"genre_id" serial primary key,
"genre_type" character varying(255)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall
-- ----------------------------
CREATE TABLE "public"."hall" (
"hall_id" serial primary key,
"branch_office_id" integer NOT NULL,
"label" character varying(255) NOT NULL,
"is_3D" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_hall_property
-- ----------------------------
CREATE TABLE "public"."hall_hall_property" (
"hall_property_id" integer NOT NULL,
"hall_id" integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_property
-- ----------------------------
CREATE TABLE "public"."hall_property" (
"hall_property_id" serial primary key,
"key" character varying(255) NOT NULL,
"value" character varying(255) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for hall_seat
-- ----------------------------
CREATE TABLE "public"."hall_seat" (
"seat_id" serial primary key,
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
CREATE TABLE "public"."movie" (
"movie_id" serial primary key,
"title" character varying(255),
"descritption" text,
"running_time" integer,
"release_date" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for movie_genre
-- ----------------------------
CREATE TABLE "public"."movie_genre" (
"movie_id" integer NOT NULL,
"genre_id" integer NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for projection
-- ----------------------------
CREATE TABLE "public"."projection" (
"projection_id" serial primary key,
"movie_id" integer,
"hall_id" integer,
"start" timestamp with time zone,
"price" numeric(10,2) CHECK (price >= 0),
"is_3D" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for seat_type
-- ----------------------------
CREATE TABLE "public"."seat_type" (
"seat_type_id" serial primary key,
"seat_type" character varying(255) NOT NULL,
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
-- Indexes structure for table booking
-- ----------------------------
CREATE INDEX "booking_booking_status_id_idx" ON "public"."booking" USING btree (booking_status_id);
CREATE INDEX "booking_customer_id_idx" ON "public"."booking" USING btree (customer_id);
CREATE INDEX "booking_employee_id_idx" ON "public"."booking" USING btree (employee_id);
CREATE INDEX "booking_projection_id_idx" ON "public"."booking" USING btree (projection_id);

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
-- Indexes structure for table customer
-- ----------------------------
CREATE INDEX "customer_club_id_idx" ON "public"."customer" USING btree (club_id);

-- ----------------------------
-- Uniques structure for table genre
-- ----------------------------
ALTER TABLE "public"."genre" ADD UNIQUE ("genre_type");

-- ----------------------------
-- Indexes structure for table hall
-- ----------------------------
CREATE INDEX "hall_branch_office_id_idx" ON "public"."hall" USING btree (branch_office_id);

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
-- Indexes structure for table hall_seat
-- ----------------------------
CREATE INDEX "hall_seat_hall_id_idx" ON "public"."hall_seat" USING btree (hall_id);
CREATE INDEX "hall_seat_seat_type_id_idx" ON "public"."hall_seat" USING btree (seat_type_id);

-- ----------------------------
-- Indexes structure for table projection
-- ----------------------------
CREATE INDEX "projection_hall_id_idx" ON "public"."projection" USING btree (hall_id);
CREATE INDEX "projection_movie_id_idx" ON "public"."projection" USING btree (movie_id);

-- ----------------------------
-- Indexes structure for table branch_office
-- ----------------------------
CREATE INDEX "branch_office_country_id_idx" ON "public"."branch_office" USING btree (country_id);

-- ----------------------------
-- Indexes structure for table movie_genre
-- ----------------------------
CREATE INDEX "movie_genre_movie_id_idx" ON "public"."movie_genre" USING btree (movie_id);
CREATE INDEX "movie_genre_genre_id_idx" ON "public"."movie_genre" USING btree (genre_id);

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