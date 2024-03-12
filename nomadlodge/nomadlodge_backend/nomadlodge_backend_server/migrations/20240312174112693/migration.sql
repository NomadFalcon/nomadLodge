BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "booking" (
    "id" serial PRIMARY KEY,
    "platform" text NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone NOT NULL,
    "userId" integer NOT NULL,
    "locationId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "booking_user_unique_idx" ON "booking" USING btree ("userId");
CREATE UNIQUE INDEX "booking_location_unique_idx" ON "booking" USING btree ("locationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "fee" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "value" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "geoaddress" (
    "id" serial PRIMARY KEY,
    "shortAddress" text NOT NULL,
    "longAddress" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "longDescription" text NOT NULL,
    "shortDescription" text NOT NULL,
    "website" text,
    "rooms" integer NOT NULL,
    "userId" integer NOT NULL,
    "geoAddressId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "location_user_unique_idx" ON "location" USING btree ("userId");
CREATE UNIQUE INDEX "location_geoaddress_idx" ON "location" USING btree ("geoAddressId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "maintenance" (
    "id" serial PRIMARY KEY,
    "maintenancetypeId" integer NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone,
    "description" text NOT NULL,
    "userId" integer NOT NULL,
    "feeId" integer NOT NULL,
    "locationId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "maintenance_maintenancetype_unique_idx" ON "maintenance" USING btree ("maintenancetypeId");
CREATE UNIQUE INDEX "maintenance_user_unique_idx" ON "maintenance" USING btree ("userId");
CREATE UNIQUE INDEX "maintenance_fee_idx" ON "maintenance" USING btree ("feeId");
CREATE UNIQUE INDEX "maintenance_location_unique_idx" ON "maintenance" USING btree ("locationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "maintenancetype" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "icon" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "media" (
    "id" serial PRIMARY KEY,
    "url" text NOT NULL,
    "mediaType" text NOT NULL,
    "_locationMediasLocationId" integer,
    "_taskImagesTaskId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "task" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "isCompleted" boolean NOT NULL,
    "_maintenanceTasksMaintenanceId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "phone" text,
    "country" text,
    "userType" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_device" (
    "id" serial PRIMARY KEY,
    "toke" text NOT NULL,
    "plaform" text NOT NULL,
    "osVersion" text NOT NULL,
    "deviceInfo" text,
    "userId" integer NOT NULL,
    "_userDevicesUserId" integer
);

-- Indexes
CREATE UNIQUE INDEX "userdevice_user_unique_idx" ON "user_device" USING btree ("userId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "booking"
    ADD CONSTRAINT "booking_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "booking"
    ADD CONSTRAINT "booking_fk_1"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "location"
    ADD CONSTRAINT "location_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "location"
    ADD CONSTRAINT "location_fk_1"
    FOREIGN KEY("geoAddressId")
    REFERENCES "geoaddress"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_0"
    FOREIGN KEY("maintenancetypeId")
    REFERENCES "maintenancetype"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_2"
    FOREIGN KEY("feeId")
    REFERENCES "fee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_3"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "media"
    ADD CONSTRAINT "media_fk_0"
    FOREIGN KEY("_locationMediasLocationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "media"
    ADD CONSTRAINT "media_fk_1"
    FOREIGN KEY("_taskImagesTaskId")
    REFERENCES "task"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "task"
    ADD CONSTRAINT "task_fk_0"
    FOREIGN KEY("_maintenanceTasksMaintenanceId")
    REFERENCES "maintenance"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_device"
    ADD CONSTRAINT "user_device_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_device"
    ADD CONSTRAINT "user_device_fk_1"
    FOREIGN KEY("_userDevicesUserId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20240312174112693', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240312174112693', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
