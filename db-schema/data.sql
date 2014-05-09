-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO "public"."country" VALUES ('1', 'Czech Republic');

-- ----------------------------
-- Records of branch_office
-- ----------------------------
INSERT INTO "public"."branch_office" VALUES ('1', 'CINEMA Brno', null, 'Centrum 1', '', 'Brno', '600000', '1');

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO "public"."customer" VALUES ('1', 'jon', 'snow', '+420123456789', null, 'jon@example.com', 'pass');

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO "public"."genre" VALUES ('1', 'akční');

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO "public"."hall" VALUES ('1', '1', 'Sál 1');
INSERT INTO "public"."hall" VALUES ('3', '1', 'Sál 2');
INSERT INTO "public"."hall" VALUES ('4', '1', 'Sál 3');

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO "public"."movie" VALUES ('1', 'James Bond', 'popisek', '120', '2014-05-07');

-- ----------------------------
-- Records of movie_genre
-- ----------------------------
INSERT INTO "public"."movie_genre" VALUES ('1', '1');

-- ----------------------------
-- Records of booking_status
-- ----------------------------
INSERT INTO "public"."booking_status" VALUES ('1', 'selected');
INSERT INTO "public"."booking_status" VALUES ('2', 'paid');
INSERT INTO "public"."booking_status" VALUES ('3', 'picked');

-- ----------------------------
-- Records of projection
-- ----------------------------
INSERT INTO "public"."projection" VALUES ('1', '1', '1', '2014-05-13 11:00:00+02', '150.00', 't');

-- ----------------------------
-- Records of seat_type
-- ----------------------------
INSERT INTO "public"."seat_type" VALUES ('1', 'normal', null, null);
INSERT INTO "public"."seat_type" VALUES ('2', 'love_seat', null, null);

-- ----------------------------
-- Records of hall_seat
-- ----------------------------
INSERT INTO "public"."hall_seat" VALUES ('1', '1', '1', '1', '1');
INSERT INTO "public"."hall_seat" VALUES ('2', '1', '1', '1', '2');
INSERT INTO "public"."hall_seat" VALUES ('3', '1', '1', '1', '3');
INSERT INTO "public"."hall_seat" VALUES ('4', '1', '1', '1', '4');
INSERT INTO "public"."hall_seat" VALUES ('5', '1', '1', '1', '5');
INSERT INTO "public"."hall_seat" VALUES ('6', '1', '1', '2', '1');
INSERT INTO "public"."hall_seat" VALUES ('7', '1', '1', '2', '2');
INSERT INTO "public"."hall_seat" VALUES ('8', '1', '1', '2', '3');
INSERT INTO "public"."hall_seat" VALUES ('9', '1', '1', '2', '4');
INSERT INTO "public"."hall_seat" VALUES ('10', '1', '1', '2', '5');
INSERT INTO "public"."hall_seat" VALUES ('11', '1', '1', '3', '1');
INSERT INTO "public"."hall_seat" VALUES ('12', '1', '1', '3', '2');
INSERT INTO "public"."hall_seat" VALUES ('13', '1', '1', '3', '3');
INSERT INTO "public"."hall_seat" VALUES ('14', '1', '1', '3', '4');
INSERT INTO "public"."hall_seat" VALUES ('15', '1', '1', '3', '5');
INSERT INTO "public"."hall_seat" VALUES ('16', '1', '1', '4', '1');
INSERT INTO "public"."hall_seat" VALUES ('17', '1', '1', '4', '2');
INSERT INTO "public"."hall_seat" VALUES ('18', '1', '1', '4', '3');
INSERT INTO "public"."hall_seat" VALUES ('19', '1', '1', '4', '4');
INSERT INTO "public"."hall_seat" VALUES ('20', '1', '1', '4', '5');

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO "public"."booking" VALUES ('1', '1', '1', '1', '200.00', '2014-05-07 11:29:09+02', null);
INSERT INTO "public"."booking" VALUES ('2', '1', '1', '2', '600.00', '2014-05-07 11:30:06+02', null);

-- ----------------------------
-- Records of booking_hall_seat
-- ----------------------------
INSERT INTO "public"."booking_hall_seat" VALUES ('1', '7');
INSERT INTO "public"."booking_hall_seat" VALUES ('1', '8');
INSERT INTO "public"."booking_hall_seat" VALUES ('1', '9');
INSERT INTO "public"."booking_hall_seat" VALUES ('2', '11');
INSERT INTO "public"."booking_hall_seat" VALUES ('2', '12');
INSERT INTO "public"."booking_hall_seat" VALUES ('2', '13');




