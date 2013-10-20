-- Table: "UNT1L".events

-- DROP TABLE "UNT1L".events;

CREATE TABLE "UNT1L".events
(
  event_id bigserial NOT NULL,
  category_id integer NOT NULL,
  title text NOT NULL,
  start timestamp with time zone NOT NULL,
  duration interval,
  ongoing boolean,
  location text NOT NULL,
  description text,
  cost money,
  -- TODO geolocation (coordinates vs. city/state vs. metro area, etc.)
  CONSTRAINT events_pkey PRIMARY KEY (event_id),
  CONSTRAINT events_title_start_location_key UNIQUE (title, start, location)
)
WITH (
  OIDS=FALSE
);

