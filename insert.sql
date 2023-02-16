
insert into events (event_id, event_name, event_location)
values ('11','Laliga','Spain');
insert into events (event_id, event_name, event_location)
values ('12','Primer League','England');
insert into events (event_id, event_name, event_location)
values ('13','Champion_League','France');
insert into events (event_id, event_name, event_location)
values ('14','Serie A','Italy');

insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('21','Red','Nike','35');
insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('22','Blue','Nike','30');
insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('23','Green','Adidas','25');
insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('24','White','Adidas','20');
insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('25','Black','Puma','15');
insert into goal (goal_id, ball_colour, ball_company, number_of_goals)
values ('26','Red','Puma','10');

insert into Venue (venue_id, venue_name, venue_space, venue_location)
values ('31','Camp Nou','8000','Barcelona');
insert into Venue (venue_id, venue_name, venue_space, venue_location)
values ('32','Golf City','7000','India');
insert into Venue (venue_id, venue_name, venue_space, venue_location)
values ('33','Sparta','5000','Prague');
insert into Venue (venue_id, venue_name, venue_space, venue_location)
values ('34','Flying Beast','6000','India');

insert into Prizes (prizes_id, description, prizes_colour)
values ('41','Ballon Dor','Gold');
insert into Prizes (prizes_id, description, prizes_colour)
values ('42','Golden_Boot','Yellow');
insert into Prizes (prizes_id, description, prizes_colour)
values ('43','Golden_Gloves','Yellow');
insert into Prizes (prizes_id, description, prizes_colour)
values ('44','Golden_Foot','Gold');

insert into teams (team_id, team_name, team_country)
values ('61','Barcelona','Spain');
insert into teams (team_id, team_name, team_country)
values ('62','Valencia','Spain');
insert into teams (team_id, team_name, team_country)
values ('63','Manchester City','England');
insert into teams (team_id, team_name, team_country)
values ('64','Real Madrid','Spain');
insert into teams (team_id, team_name, team_country)
values ('65','Manchester United','England');
insert into teams (team_id, team_name, team_country)
values ('66','New Castle','England');
insert into teams (team_id, team_name, team_country)
values ('67','Roma','Italy');

insert into manager (manager_id, team_id, m_name, m_age)
values ('51','63','Daniel','48');
insert into manager (manager_id, team_id, m_name, m_age)
values ('52','61','Peter','45');
insert into manager (manager_id, team_id, m_name, m_age)
values ('53','65','David','43');
insert into manager (manager_id, team_id, m_name, m_age)
values ('54','67','Finch','51');
insert into manager (manager_id, team_id, m_name, m_age)
values ('55','64','Kevin','55');
insert into manager (manager_id, team_id, m_name, m_age)
values ('56','66','Karan','57');
insert into manager (manager_id, team_id, m_name, m_age)
values ('57','62','Mike','49');

insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('71','61','10','Lionel','Messi','35');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('72','63','18','Virat','Kholi','30');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('73','62','69','Sachin','Jha','28');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('74','65','12','Rohit','Sharma','26');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('75','64','24','Mohit','Joshi','23');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('76','67','28','Deepak','Yadav','27');
insert into Player (player_id, team_id, jerrsy_number, first_name, last_name, age)
values ('77','66','45','Abhay','Singh','33');

insert into player_events (player_id, event_id)
values ('71','11');
insert into player_events (player_id, event_id)
values ('72','13');
insert into player_events (player_id, event_id)
values ('73','12');
insert into player_events (player_id, event_id)
values ('73','14');
insert into player_events (player_id, event_id)
values ('75','13');
insert into player_events (player_id, event_id)
values ('76','11');

insert into player_goal (player_id, goal_id)
values ('71','21');
insert into player_goal (player_id, goal_id)
values ('72','23');
insert into player_goal (player_id, goal_id)
values ('73','22');
insert into player_goal (player_id, goal_id)
values ('73','24');
insert into player_goal (player_id, goal_id)
values ('74','23');
insert into player_goal (player_id, goal_id)
values ('75','25');
insert into player_goal (player_id, goal_id)
values ('76','26');

insert into prizes_player (prizes_id, player_id)
values ('41','71');
insert into prizes_player (prizes_id, player_id)
values ('42','72');
insert into prizes_player (prizes_id, player_id)
values ('43','73');
insert into prizes_player (prizes_id, player_id)
values ('44','74');
insert into prizes_player (prizes_id, player_id)
values ('42','73');

insert into venue_player (venue_id, player_id)
values ('31','71');
insert into venue_player (venue_id, player_id)
values ('32','72');
insert into venue_player (venue_id, player_id)
values ('33','73');
insert into venue_player (venue_id, player_id)
values ('34','74');
insert into venue_player (venue_id, player_id)
values ('32','75');
insert into venue_player (venue_id, player_id)
values ('33','71');