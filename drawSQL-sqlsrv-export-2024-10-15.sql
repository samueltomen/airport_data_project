CREATE TABLE "plane"(
    "tailnum" VARCHAR(255) NOT NULL,
    "year" INT NOT NULL,
    "type" VARCHAR(255) NOT NULL,
    "manufacturer" VARCHAR(255) NOT NULL,
    "model" VARCHAR(255) NOT NULL,
    "engines" INT NOT NULL,
    "seats" INT NOT NULL,
    "speed" INT,
    "engine" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "plane" ADD CONSTRAINT "planes_id_primary" PRIMARY KEY("tailnum");
CREATE TABLE "weather"(
    "id" INT NOT NULL IDENTITY(1,1),
    "origin" VARCHAR(255) NOT NULL,
    "year" INT NOT NULL,
    "month" INT NOT NULL,
    "day" INT NOT NULL,
    "hour" INT NOT NULL,
    "temp" FLOAT(53) NOT NULL,
    "dewp" FLOAT(53) NOT NULL,
    "humid" FLOAT(53) NOT NULL,
    "wind_dir" INT NOT NULL,
    "wind_speed" FLOAT(53) NOT NULL,
    "wind_gust" FLOAT(53) NOT NULL,
    "precip" FLOAT(53) NOT NULL,
    "pressure" FLOAT(53) NOT NULL,
    "visib" FLOAT(53) NOT NULL,
    "time_hour" DATETIME2 NOT NULL
);
ALTER TABLE
    "weather" ADD CONSTRAINT "weather_id_primary" PRIMARY KEY("id");
CREATE TABLE "airline"(
    "carrier" CHAR(255) NOT NULL,
    "name" CHAR(255) NOT NULL
);
ALTER TABLE
    "airline" ADD CONSTRAINT "airlines_carrier_primary" PRIMARY KEY("carrier");
CREATE TABLE "airport"(
    "faa" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "lat" FLOAT(53) NOT NULL,
    "lon" FLOAT(53) NOT NULL,
    "alt" INT NOT NULL,
    "tz" INT NOT NULL,
    "dst" VARCHAR(255) NOT NULL,
    "tzone" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "airport" ADD CONSTRAINT "airports_id_primary" PRIMARY KEY("faa");
CREATE TABLE "flight"(
     "id" INT NOT NULL IDENTITY(1,1),
     "year" INT NOT NULL,
     "month" INT NOT NULL,
     "day" INT NOT NULL,
     "dep_time" INT NOT NULL,
     "sched_dep_time" INT NOT NULL,
     "dep_delay" INT NOT NULL,
     "arr_time" INT NOT NULL,
     "sched_arr_time" INT NOT NULL,
     "arr_delay" INT NOT NULL,
     "carrier" VARCHAR(255) NOT NULL,
     "flight" INT NOT NULL,
     "tailnum" VARCHAR(255) NOT NULL,
     "origin" VARCHAR(255) NOT NULL,
     "dest" VARCHAR(255) NOT NULL,
     "air_time" INT NOT NULL,
     "distance" INT NOT NULL,
     "hour" INT NOT NULL,
     "minute" INT NOT NULL,
     "time_hour" DATETIME2 NOT NULL
);
ALTER TABLE
    "flight" ADD CONSTRAINT "flights_id_primary" PRIMARY KEY("id");
-- ALTER TABLE
--     "flight" ADD CONSTRAINT "flights_tailnum_foreign" FOREIGN KEY("tailnum") REFERENCES "plane"("tailnum");
