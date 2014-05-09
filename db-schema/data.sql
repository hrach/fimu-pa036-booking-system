-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO "public"."country" (country_id, name) VALUES (1, 'Czech Republic');
select setval('country_country_id_seq', 2, false);

-- ----------------------------
-- Records of branch_office
-- ----------------------------
INSERT INTO "public"."branch_office" (branch_office_id, name, description, address_line_1, address_line_2, city, postal_code, country_id)
  VALUES ('1', 'CINEMA Brno', null, 'Centrum 1', '', 'Brno', '600000', '1');
INSERT INTO "public"."branch_office" (branch_office_id, name, description, address_line_1, address_line_2, city, postal_code, country_id)
  VALUES ('2', 'CINEMA Praha', null, 'Václavské nám 4', '', 'Praha', '54321', '1');
select setval('branch_office_branch_office_id_seq', 3, false);

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO "public"."customer" (customer_id, first_name, last_name, phone_number, club_id, email, username, password) VALUES ('1', 'jon', 'snow', '+420123456789', null, 'jon@example.com', 'username', 'pass');
select setval('customer_customer_id_seq',2, false);

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (1, 'akční');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (2, 'drama');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (3, 'komedie');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (4, 'romantika');
INSERT INTO "public"."genre" (genre_id, genre_type) VALUES (5, 'horor');
select setval('genre_genre_id_seq',6, false);

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (1, 1, 'Sál 1');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (2, 1, 'Sál 2');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (3, 1, 'Sál 3');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (4, 2, 'Sál Praha 1');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (5, 2, 'Sál Praha 2');
INSERT INTO "public"."hall" (hall_id, branch_office_id, label) VALUES (6, 2, 'Sál Praha 3');
select setval('branch_office_branch_office_id_seq',7, false);

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
select setval('movie_movie_id_seq', 8, false);

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
select setval('booking_status_booking_status_id_seq', 4, false);

-- ----------------------------
-- Records of projection
-- ----------------------------
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (1, 1, 1, '2014-05-13 11:00:00+02', 150.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (2, 3, 1, '2014-05-13 13:40:00+02', 150.00, 't');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (3, 4, 1, '2014-05-13 16:20:00+02', 120.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (4, 2, 2, '2014-05-13 11:20:00+02', 150.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (5, 6, 2, '2014-05-13 14:20:00+02', 120.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (6, 7, 2, '2014-05-13 17:50:00+02', 150.00, 'f');
INSERT INTO "public"."projection" (projection_id, movie_id, hall_id, start, price, "is_3D") VALUES (7, 3, 3, '2014-05-13 18:50:00+02', 150.00, 't');
select setval('projection_projection_id_seq', 7, false);

-- ----------------------------
-- Records of seat_type
-- ----------------------------
INSERT INTO "public"."seat_type" (seat_type_id, seat_type, seat_type_sale_amount, seat_type_sale_percantage) VALUES ('1', 'normal', null, null);
INSERT INTO "public"."seat_type" (seat_type_id, seat_type, seat_type_sale_amount, seat_type_sale_percantage) VALUES ('2', 'love_seat', null, null);
select setval('seat_type_seat_type_id_seq', 3, false);

-- ----------------------------
-- Records of hall_seat
-- ----------------------------
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('1', '1', '1', '1', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('2', '1', '1', '1', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('3', '1', '1', '1', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('4', '1', '1', '1', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('5', '1', '1', '1', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('6', '1', '1', '1', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('7', '1', '1', '1', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('8', '1', '1', '1', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('9', '1', '1', '1', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('10', '1', '1', '1', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('11', '1', '1', '1', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('12', '1', '1', '1', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('13', '1', '1', '1', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('14', '1', '1', '1', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('15', '1', '1', '2', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('16', '1', '1', '2', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('17', '1', '1', '2', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('18', '1', '1', '2', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('19', '1', '1', '2', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('20', '1', '1', '2', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('21', '1', '1', '2', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('22', '1', '1', '2', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('23', '1', '1', '2', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('24', '1', '1', '2', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('25', '1', '1', '2', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('26', '1', '1', '2', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('27', '1', '1', '2', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('28', '1', '1', '2', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('29', '1', '1', '3', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('30', '1', '1', '3', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('31', '1', '1', '3', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('32', '1', '1', '3', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('33', '1', '1', '3', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('34', '1', '1', '3', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('35', '1', '1', '3', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('36', '1', '1', '3', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('37', '1', '1', '3', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('38', '1', '1', '3', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('39', '1', '1', '3', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('40', '1', '1', '3', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('41', '1', '1', '3', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('42', '1', '1', '3', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('43', '1', '1', '4', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('44', '1', '1', '4', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('45', '1', '1', '4', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('46', '1', '1', '4', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('47', '1', '1', '4', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('48', '1', '1', '4', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('49', '1', '1', '4', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('50', '1', '1', '4', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('51', '1', '1', '4', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('52', '1', '1', '4', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('53', '1', '1', '4', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('54', '1', '1', '4', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('55', '1', '1', '4', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('56', '1', '1', '4', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('57', '1', '1', '5', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('58', '1', '1', '5', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('59', '1', '1', '5', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('60', '1', '1', '5', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('61', '1', '1', '5', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('62', '1', '1', '5', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('63', '1', '1', '5', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('64', '1', '1', '5', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('65', '1', '1', '5', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('66', '1', '1', '5', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('67', '1', '1', '5', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('68', '1', '1', '5', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('69', '1', '1', '5', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('70', '1', '1', '5', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('71', '1', '1', '6', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('72', '1', '1', '6', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('73', '1', '1', '6', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('74', '1', '1', '6', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('75', '1', '1', '6', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('76', '1', '1', '6', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('77', '1', '1', '6', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('78', '1', '1', '6', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('79', '1', '1', '6', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('80', '1', '1', '6', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('81', '1', '1', '6', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('82', '1', '1', '6', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('83', '1', '1', '6', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('84', '1', '1', '6', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('85', '1', '1', '7', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('86', '1', '1', '7', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('87', '1', '1', '7', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('88', '1', '1', '7', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('89', '1', '1', '7', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('90', '1', '1', '7', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('91', '1', '1', '7', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('92', '1', '1', '7', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('93', '1', '1', '7', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('94', '1', '1', '7', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('95', '1', '1', '7', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('96', '1', '1', '7', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('97', '1', '1', '7', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('98', '1', '1', '7', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('99', '1', '1', '8', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('100', '1', '1', '8', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('101', '1', '1', '8', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('102', '1', '1', '8', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('103', '1', '1', '8', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('104', '1', '1', '8', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('105', '1', '1', '8', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('106', '1', '1', '8', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('107', '1', '1', '8', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('108', '1', '1', '8', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('109', '1', '1', '8', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('110', '1', '1', '8', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('111', '1', '1', '8', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('112', '1', '1', '8', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('113', '1', '1', '9', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('114', '1', '1', '9', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('115', '1', '1', '9', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('116', '1', '1', '9', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('117', '1', '1', '9', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('118', '1', '1', '9', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('119', '1', '1', '9', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('120', '1', '1', '9', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('121', '1', '1', '9', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('122', '1', '1', '9', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('123', '1', '1', '9', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('124', '1', '1', '9', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('125', '1', '1', '9', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('126', '1', '1', '9', '14');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('127', '1', '1', '10', '1');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('128', '1', '1', '10', '2');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('129', '1', '1', '10', '3');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('130', '1', '1', '10', '4');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('131', '1', '1', '10', '5');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('132', '1', '1', '10', '6');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('133', '1', '1', '10', '7');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('134', '1', '1', '10', '8');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('135', '1', '1', '10', '9');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('136', '1', '1', '10', '10');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('137', '1', '1', '10', '11');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('138', '1', '1', '10', '12');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('139', '1', '1', '10', '13');
INSERT INTO "public"."hall_seat" (seat_id, hall_id, seat_type_id, seat_row, seat_number) VALUES ('140', '1', '1', '10', '14');
select setval('hall_seat_seat_id_seq', 141, false);

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO "public"."booking" (booking_id, projection_id, customer_id, booking_status_id, price_total, time_created, employee_id)
  VALUES ('1', '1', '1', '1', '200.00', '2014-05-07 11:29:09+02', null);
INSERT INTO "public"."booking" (booking_id, projection_id, customer_id, booking_status_id, price_total, time_created, employee_id)
  VALUES ('2', '1', '1', '2', '600.00', '2014-05-07 11:30:06+02', null);
select setval('booking_booking_id_seq', 3, false);

-- ----------------------------
-- Records of booking_hall_seat
-- ----------------------------
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 94);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 16);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 130);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 66);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 10);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 5);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 45);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 92);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 110);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 59);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 32);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 79);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 20);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 21);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 7);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 90);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 86);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 33);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 136);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 58);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 48);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 111);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 53);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 88);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 50);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 34);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 76);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 15);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 81);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 112);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 71);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 65);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 3);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 118);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 99);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 95);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 2);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 134);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 115);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 98);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 113);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 119);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 128);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 27);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 126);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 129);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 54);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 68);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 102);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 1);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 137);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 108);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 29);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 78);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 11);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 73);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 18);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 19);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 42);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 46);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 43);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 52);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 44);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 84);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 124);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 31);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 72);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 55);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 106);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 64);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 104);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 4);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 63);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 107);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 89);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 24);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 87);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 135);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 51);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 49);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 14);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 93);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 91);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 25);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 47);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 127);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 85);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 100);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 6);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 77);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 36);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (1, 57);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 108);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 77);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 20);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 102);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 25);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 15);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 90);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 63);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 71);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 95);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 39);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 60);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 112);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 87);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 64);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 28);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 79);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 86);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 85);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 50);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 94);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 65);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 73);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 21);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 84);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 78);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 115);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 70);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 110);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 49);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 40);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 59);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 105);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 46);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 51);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 119);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 24);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 62);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 109);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 33);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 36);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 26);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 113);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 100);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 83);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 118);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 6);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 16);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 98);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 82);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 116);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 92);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 58);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 3);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 8);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 117);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 48);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 9);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 114);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 4);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 99);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 23);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 29);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 45);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 120);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 7);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 2);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 104);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 10);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 34);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 32);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 80);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 43);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 68);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 18);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 91);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 19);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 12);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 13);
INSERT INTO "public"."booking_hall_seat" (booking_id, seat_id) VALUES (2, 31);