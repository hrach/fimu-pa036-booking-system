-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO "public"."country" (country_id, name) VALUES (1, 'Czech Republic');
select setval('country_country_id_seq', 2);

-- ----------------------------
-- Records of branch_office
-- ----------------------------
INSERT INTO "public"."branch_office" (branch_office_id, name, description, address_line_1, address_line_2, city, postal_code, country_id)
  VALUES ('1', 'CINEMA Brno', null, 'Centrum 1', '', 'Brno', '600000', '1');
INSERT INTO "public"."branch_office" (branch_office_id, name, description, address_line_1, address_line_2, city, postal_code, country_id)
  VALUES ('2', 'CINEMA Praha', null, 'Václavské nám 4', '', 'Praha', '54321', '1');
select setval('branch_office_branch_office_id_seq', 3);

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO "public"."customer" (customer_id, first_name, last_name, phone_number, club_id, email, username, password) VALUES ('1', 'jon', 'snow', '+420123456789', null, 'jon@example.com', 'jon', 'pass');
select setval('customer_customer_id_seq',2);

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (1, 'akční');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (2, 'drama');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (3, 'komedie');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (4, 'romantika');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (5, 'horor');
select setval('genre_genre_id_seq',6);

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (1, 1, 'Sál 1');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (2, 1, 'Sál 2');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (3, 1, 'Sál 3');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (4, 2, 'Sál Praha 1');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (5, 2, 'Sál Praha 2');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (6, 2, 'Sál Praha 3');
select setval('branch_office_branch_office_id_seq',7);

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (1, 'Dr. No', 'Dr. No je v pořadí první film o Jamesi Bondovi z roku 1962. Jde o vcelku věrnou adaptaci šestého románu spisovatele Iana Fleminga o této postavě z roku 1958.', 105, '1962-01-01');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (2, 'Srdečné pozdravy z Ruska', 'Srdečné pozdravy z Ruska je v pořadí druhý film o Jamesi Bondovi z roku 1963, adaptací pátého románu spisovatele Iana Fleminga o této postavě z roku 1957.', 110, '1963-01-01');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (3, 'Goldfinger', 'Goldfinger je v pořadí třetí film o Jamesi Bondovi z roku 1964, adaptace sedmého románu spisovatele Iana Fleminga o této postavě z roku 1959.', 105 , '2014-05-07');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (4, 'Thunderball', 'Thunderball je v pořadí čtvrtý film o Jamesi Bondovi z roku 1965, adaptace devátého románu spisovatele Iana Fleminga o této postavě z roku 1961.', 125, '1965-01-01');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (5, 'Žiješ jenom dvakrát', 'Žiješ jenom dvakrát (v originále You Only Live Twice) je v pořadí pátý film o Jamesi Bondovi z roku 1967. Scénář napsal na základě dvanáctého románu spisovatele Iana Fleminga (1964) Roald Dahl. Je to první bondovka, u které se autor scénáře výrazně odpoutal od Flemingovy předlohy a vytvořil (při zachování některých jejích kulis) zcela nový příběh.', 112, '1967-01-01');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (6, 'V tajné službě Jejího Veličenstva', 'V tajné službě Jejího Veličenstva (také Ve službách Jejího Veličenstva) je v pořadí šestý film o Jamesi Bondovi z roku 1969, adaptace jedenáctého románu spisovatele Iana Fleminga o této postavě z roku 1963.', 140 , '1969-01-01');
INSERT INTO "public"."movie" (movie_id, title, descritption, running_time, release_date) VALUES (7, 'Diamanty jsou věčné', 'Diamanty jsou věčné je v pořadí sedmý film o Jamesi Bondovi z roku 1971, velice volná adaptace čtvrtého románu spisovatele Iana Fleminga o této postavě z roku 1956. Pro Seana Conneryho to byla šestý a poslední film v oficiální sérii, kde si zahrál Bonda, v roce 1983 si ovšem znovu 007 zahrál v neoficiální bondovce Nikdy neříkej nikdy.', 120, '1971-01-01');
select setval('movie_movie_id_seq', 8);

-- ----------------------------
-- Records of movie_genre
-- ----------------------------
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (1, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (1, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (2, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (2, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (2, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (3, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (3, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (3, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (4, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (4, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (4, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (5, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (5, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (5, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (6, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (6, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (6, 3);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (7, 1);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (7, 2);
INSERT INTO "public"."movie_genre" (movie_id, genre_id) VALUES (7, 3);

-- ----------------------------
-- Records of booking_status
-- ----------------------------
INSERT INTO "public"."booking_status" (booking_status_id, status) VALUES (1, 'SELECTED');
INSERT INTO "public"."booking_status" (booking_status_id, status) VALUES (2, 'PAID');
INSERT INTO "public"."booking_status" (booking_status_id, status) VALUES (3, 'PICKED');
select setval('booking_status_booking_status_id_seq', 4);

-- ----------------------------
-- Records of projection
-- ----------------------------
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (1, 1, 1, '2014-05-13 11:00:00+02', 150.00, 't');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (2, 1, 2, '2014-05-13 13:10:00+02', 150.00, 't');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (3, 1, 3, '2014-05-13 16:20:00+02', 120.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (4, 2, 2, '2014-05-13 11:00:00+02', 150.00, 't');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (5, 3, 3, '2014-05-13 13:10:00+02', 150.00, 't');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (6, 4, 1, '2014-05-13 16:20:00+02', 120.00, 'f');
select setval('projection_projection_id_seq', 7);

-- ----------------------------
-- Records of seat_type
-- ----------------------------
INSERT INTO "public"."seat_type" (seat_type_id, seat_type, seat_type_sale_amount, seat_type_sale_percantage) VALUES ('1', 'normal', null, null);
INSERT INTO "public"."seat_type" (seat_type_id, seat_type, seat_type_sale_amount, seat_type_sale_percantage) VALUES ('2', 'love_seat', null, null);
select setval('seat_type_seat_type_id_seq', 3);

-- ----------------------------
-- Records of hall_seat
-- ----------------------------
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('1', '1', '1', '1', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('2', '1', '1', '1', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('3', '1', '1', '1', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('4', '1', '1', '1', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('5', '1', '1', '1', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('6', '1', '1', '2', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('7', '1', '1', '2', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('8', '1', '1', '2', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('9', '1', '1', '2', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('10', '1', '1', '2', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('11', '1', '1', '3', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('12', '1', '1', '3', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('13', '1', '1', '3', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('14', '1', '1', '3', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('15', '1', '1', '3', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('16', '1', '1', '4', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('17', '1', '1', '4', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('18', '1', '1', '4', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('19', '1', '1', '4', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('20', '1', '1', '4', '5');
select setval('hall_seat_seat_id_seq', 21);

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO "public"."booking" (booking_id, projection_id, customer_id, booking_status_id, price_total, time_created, employee_id)
  VALUES ('1', '1', '1', '1', '200.00', '2014-05-07 11:29:09+02', null);
INSERT INTO "public"."booking" (booking_id, projection_id, customer_id, booking_status_id, price_total, time_created, employee_id)
  VALUES ('2', '1', '1', '2', '600.00', '2014-05-07 11:30:06+02', null);
select setval('booking_booking_id_seq', 3);

-- ----------------------------
-- Records of booking_hall_seat
-- ----------------------------
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 7);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 8);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 9);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 11);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 12);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 13);