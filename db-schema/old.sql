-- Table creation order:
-- hall_property
-- branch_office
-- hall
-- hall_hall_property
-- seat_type
-- hall_seat
-- genre
-- movie
-- person
-- movie_actor
-- movice_director
-- projection
-- club
-- customer
-- booking_status
-- booking
-- booking_hall_seat

-- Table: hall_property
CREATE TABLE hall_property
(
  hall_property_id serial primary key,
  hall_property character varying(255),
  CONSTRAINT hall_property_hall_property_unq UNIQUE (hall_property)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE hall_property
  OWNER TO postgres;
  
-- Table: booking_status
CREATE TABLE branch_office
(
  branch_office_id serial primary key,
  name character varying(255),
  description text,
  address_line_1 character varying(255),
  address_line_2 character varying(255),
  city character varying(255),
  postal_code character varying(5),
  country character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE branch_office
  OWNER TO postgres;
  
-- Table: hall
CREATE TABLE hall
(
  hall_id serial primary key,
  branch_office_id integer,
  CONSTRAINT hall_branch_office_id_fkey FOREIGN KEY (branch_office_id)
  REFERENCES branch_office (branch_office_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE hall
  OWNER TO postgres;
  
-- Table: hall_hall_property
CREATE TABLE hall_hall_property
(
  hall_property_id integer,
  hall_id integer,
  CONSTRAINT hall_hall_property_hall_property_id_fkey FOREIGN KEY (hall_property_id)
  REFERENCES hall_property (hall_property_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hall_hall_property_hall_id_fkey FOREIGN KEY (hall_id)
  REFERENCES hall (hall_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE hall_hall_property
  OWNER TO postgres;
 
-- Table: seat_type
CREATE TABLE seat_type
(
  seat_type_id serial primary key,
  seat_type character varying(255),
  seat_type_sale_amount integer,
  seat_type_sale_percantage numeric(3,2)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE seat_type
  OWNER TO postgres; 
  
-- Table: hall_seat
CREATE TABLE hall_seat
(
  seat_id serial primary key,
  hall_id integer,
  seat_type_id integer,
  seat_row integer,
  seat_number integer,
  CONSTRAINT hall_seat_hall_id_fkey FOREIGN KEY (hall_id)
  REFERENCES hall (hall_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hall_seat_seat_type_id_fkey FOREIGN KEY (seat_type_id)
  REFERENCES seat_type (seat_type_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE hall_seat
  OWNER TO postgres;
  
-- Table: genre
CREATE TABLE genre
(
  genre_id serial primary key,
  genre_type character varying(255),
  CONSTRAINT genre_genre_type_unq UNIQUE (genre_type)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE genre
  OWNER TO postgres; 
  
-- Table: movie
CREATE TABLE movie
(
  movie_id serial primary key,
  genre_id integer,
  title character varying(255),
  descritption text,
  running_time integer,
  release_date date,
  CONSTRAINT movie_genre_id_fkey FOREIGN KEY (genre_id)
  REFERENCES genre (genre_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE movie
  OWNER TO postgres; 
  
-- Table: person
CREATE TABLE person
(
  person_id serial primary key,
  first_name character varying(255),
  last_name character varying(255),
  description text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE person
  OWNER TO postgres;
  
-- Table: movie_actor
CREATE TABLE movie_actor
(
  movie_id integer,
  person_id integer,
  CONSTRAINT movie_actor_movie_id_fkey FOREIGN KEY (movie_id)
  REFERENCES movie (movie_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT movie_actor_person_id_fkey FOREIGN KEY (person_id)
  REFERENCES person (person_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE movie_actor
  OWNER TO postgres;
  
-- Table: movie_director
CREATE TABLE movie_director
(
  movie_id integer,
  person_id integer,
  CONSTRAINT movie_director_movie_id_fkey FOREIGN KEY (movie_id)
  REFERENCES movie (movie_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT movie_director_person_id_fkey FOREIGN KEY (person_id)
  REFERENCES person (person_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE movie_director
  OWNER TO postgres;
  
-- Table: projection
CREATE TABLE projection
(
  projection_id serial primary key,
  movie_id integer,
  hall_id integer,
  start timestamp with time zone,
  price numeric(10,2),
  CONSTRAINT projection_movie_id_fkey FOREIGN KEY (movie_id)
  REFERENCES movie (movie_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT projection_hall_id_fkey FOREIGN KEY (hall_id)
  REFERENCES hall (hall_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE projection
  OWNER TO postgres;
  
-- Table: club
CREATE TABLE club
(
  club_id serial primary key,
  name character varying(255),
  sale_amount integer,
  sale_percentage decimal(3,2)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE club
  OWNER TO postgres;
  
-- Table: customer
CREATE TABLE customer
(
  customer_id serial primary key,
  first_name character varying(128),
  last_name character varying(128),
  phone_number character varying(15),
  club_id integer,
  email character varying(255),
  CONSTRAINT customer_club_id_fkey FOREIGN KEY (club_id)
  REFERENCES club (club_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE customer
  OWNER TO postgres;
  
-- Table: booking_status
CREATE TABLE booking_status
(
  booking_status_id serial primary key,
  status character varying(255),
  CONSTRAINT booking_status_status_unq UNIQUE (status)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE booking_status
  OWNER TO postgres;
  
-- Table: booking
CREATE TABLE booking
(
  booking_id serial primary key,
  projection_id integer,
  customer_id integer,
  booking_status_id integer,
  price_total numeric(10,2),
  time_created timestamp with time zone,
  CONSTRAINT booking_projection_id_fkey FOREIGN KEY (projection_id)
  REFERENCES projection (projection_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT booking_customer_id_fkey FOREIGN KEY (customer_id)
  REFERENCES customer (customer_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT booking_booking_status_id_fkey FOREIGN KEY (booking_status_id)
  REFERENCES booking_status (booking_status_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE booking
  OWNER TO postgres;
  
-- Table: booking_hall_seat
CREATE TABLE booking_hall_seat
(
  booking_id integer,
  seat_id integer,
  CONSTRAINT booking_hall_seat_booking_id_fkey FOREIGN KEY (booking_id)
  REFERENCES booking (booking_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT booking_hall_seat_seat_id_fkey FOREIGN KEY (seat_id)
  REFERENCES hall_seat (seat_id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE booking_hall_seat
  OWNER TO postgres;
  
-- Indexes:
CREATE INDEX hall_branch_office_id_idx
  ON hall
  USING btree
  (branch_office_id);
  
CREATE INDEX hall_hall_property_hall_property_id_idx
  ON hall_hall_property 
  USING btree
  (hall_property_id);
  
CREATE INDEX hall_hall_property_hall_id_idx
  ON hall_hall_property
  USING btree
  (hall_id);
  
CREATE INDEX hall_seat_hall_id_idx
  ON hall_seat
  USING btree
  (hall_id);
  
CREATE INDEX hall_seat_seat_type_id_idx
  ON hall_seat
  USING btree
  (seat_type_id);
  
CREATE INDEX movie_genre_id_idx
  ON movie
  USING btree
  (genre_id);
  
CREATE INDEX movie_actor_movie_id_idx
  ON movie_actor
  USING btree
  (movie_id);
  
CREATE INDEX movie_actor_person_id_idx
  ON movie_actor
  USING btree
  (person_id);
  
CREATE INDEX movie_director_movie_id_idx
  ON movie_director
  USING btree
  (movie_id);
  
 CREATE INDEX movie_director_person_id_idx
  ON movie_director
  USING btree
  (person_id);
  
CREATE INDEX projection_movie_id_idx
  ON projection
  USING btree
  (movie_id);
  
CREATE INDEX projection_hall_id_idx
  ON projection
  USING btree
  (hall_id);
  
CREATE INDEX customer_club_id_idx
  ON customer
  USING btree
  (club_id);
  
CREATE INDEX booking_projection_id_idx
  ON booking
  USING btree
  (projection_id);
  
CREATE INDEX booking_customer_id_idx
  ON booking
  USING btree
  (customer_id);
  
CREATE INDEX booking_booking_status_id_idx
  ON booking
  USING btree
  (booking_status_id);
  
CREATE INDEX booking_hall_seat_booking_id_idx
  ON booking_hall_seat
  USING btree
  (booking_id);
  
CREATE INDEX booking_hall_seat_seat_id_idx
  ON booking_hall_seat
  USING btree
  (seat_id);
   
  
