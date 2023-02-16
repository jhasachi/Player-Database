-- Remove conflicting tables
DROP TABLE IF EXISTS events CASCADE;
DROP TABLE IF EXISTS goal CASCADE;
DROP TABLE IF EXISTS manager CASCADE;
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS prizes CASCADE;
DROP TABLE IF EXISTS teams CASCADE;
DROP TABLE IF EXISTS venue CASCADE;
DROP TABLE IF EXISTS player_goal CASCADE;
DROP TABLE IF EXISTS player_events CASCADE;
DROP TABLE IF EXISTS prizes_player CASCADE;
DROP TABLE IF EXISTS venue_player CASCADE;
-- End of removing

CREATE TABLE events (
    event_id SERIAL NOT NULL,
    event_name VARCHAR(256) NOT NULL,
    event_location VARCHAR(256) NOT NULL
);
ALTER TABLE events ADD CONSTRAINT pk_events PRIMARY KEY (event_id);

CREATE TABLE goal (
    goal_id SERIAL NOT NULL,
    ball_colour VARCHAR(256) NOT NULL,
    ball_company VARCHAR(256) NOT NULL,
    number_of_goals INTEGER NOT NULL
);
ALTER TABLE goal ADD CONSTRAINT pk_goal PRIMARY KEY (goal_id);

CREATE TABLE manager (
    manager_id SERIAL NOT NULL,
    team_id INTEGER NOT NULL,
    m_name VARCHAR(256) NOT NULL,
    m_age INTEGER NOT NULL
);
ALTER TABLE manager ADD CONSTRAINT pk_manager PRIMARY KEY (manager_id);
ALTER TABLE manager ADD CONSTRAINT u_fk_manager_teams UNIQUE (team_id);

CREATE TABLE player (
    player_id SERIAL NOT NULL,
    team_id INTEGER NOT NULL,
    jerrsy_number INTEGER NOT NULL,
    first_name VARCHAR(256) NOT NULL,
    last_name VARCHAR(256) NOT NULL,
    age INTEGER NOT NULL
);
ALTER TABLE player ADD CONSTRAINT pk_player PRIMARY KEY (player_id);

CREATE TABLE prizes (
    prizes_id SERIAL NOT NULL,
    description VARCHAR(256) NOT NULL,
    prizes_colour VARCHAR(256) NOT NULL
);
ALTER TABLE prizes ADD CONSTRAINT pk_prizes PRIMARY KEY (prizes_id);

CREATE TABLE teams (
    team_id SERIAL NOT NULL,
    team_name VARCHAR(256) NOT NULL,
    team_country VARCHAR(256) NOT NULL
);
ALTER TABLE teams ADD CONSTRAINT pk_teams PRIMARY KEY (team_id);

CREATE TABLE venue (
    venue_id SERIAL NOT NULL,
    venue_name VARCHAR(256) NOT NULL,
    venue_space INTEGER NOT NULL,
    venue_location VARCHAR(256) NOT NULL
);
ALTER TABLE venue ADD CONSTRAINT pk_venue PRIMARY KEY (venue_id);

CREATE TABLE player_goal (
    player_id INTEGER NOT NULL,
    goal_id INTEGER NOT NULL
);
ALTER TABLE player_goal ADD CONSTRAINT pk_player_goal PRIMARY KEY (player_id, goal_id);

CREATE TABLE player_events (
    player_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL
);
ALTER TABLE player_events ADD CONSTRAINT pk_player_events PRIMARY KEY (player_id, event_id);

CREATE TABLE prizes_player (
    prizes_id INTEGER NOT NULL,
    player_id INTEGER NOT NULL
);
ALTER TABLE prizes_player ADD CONSTRAINT pk_prizes_player PRIMARY KEY (prizes_id, player_id);

CREATE TABLE venue_player (
    venue_id INTEGER NOT NULL,
    player_id INTEGER NOT NULL
);
ALTER TABLE venue_player ADD CONSTRAINT pk_venue_player PRIMARY KEY (venue_id, player_id);

ALTER TABLE manager ADD CONSTRAINT fk_manager_teams FOREIGN KEY (team_id) REFERENCES teams (team_id) ON DELETE CASCADE;

ALTER TABLE player ADD CONSTRAINT fk_player_teams FOREIGN KEY (team_id) REFERENCES teams (team_id) ON DELETE CASCADE;

ALTER TABLE player_goal ADD CONSTRAINT fk_player_goal_player FOREIGN KEY (player_id) REFERENCES player (player_id) ON DELETE CASCADE;
ALTER TABLE player_goal ADD CONSTRAINT fk_player_goal_goal FOREIGN KEY (goal_id) REFERENCES goal (goal_id) ON DELETE CASCADE;

ALTER TABLE player_events ADD CONSTRAINT fk_player_events_player FOREIGN KEY (player_id) REFERENCES player (player_id) ON DELETE CASCADE;
ALTER TABLE player_events ADD CONSTRAINT fk_player_events_events FOREIGN KEY (event_id) REFERENCES events (event_id) ON DELETE CASCADE;

ALTER TABLE prizes_player ADD CONSTRAINT fk_prizes_player_prizes FOREIGN KEY (prizes_id) REFERENCES prizes (prizes_id) ON DELETE CASCADE;
ALTER TABLE prizes_player ADD CONSTRAINT fk_prizes_player_player FOREIGN KEY (player_id) REFERENCES player (player_id) ON DELETE CASCADE;

ALTER TABLE venue_player ADD CONSTRAINT fk_venue_player_venue FOREIGN KEY (venue_id) REFERENCES venue (venue_id) ON DELETE CASCADE;
ALTER TABLE venue_player ADD CONSTRAINT fk_venue_player_player FOREIGN KEY (player_id) REFERENCES player (player_id) ON DELETE CASCADE;

