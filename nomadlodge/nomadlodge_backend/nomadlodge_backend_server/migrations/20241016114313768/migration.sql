BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "booking" (
    "id" bigserial PRIMARY KEY,
    "platform" text NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone NOT NULL,
    "userId" bigint NOT NULL,
    "locationId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "booking_user_unique_idx" ON "booking" USING btree ("userId");
CREATE UNIQUE INDEX "booking_location_unique_idx" ON "booking" USING btree ("locationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "fee" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "value" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "geoaddress" (
    "id" bigserial PRIMARY KEY,
    "shortAddress" text NOT NULL,
    "longAddress" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "longDescription" text NOT NULL,
    "shortDescription" text NOT NULL,
    "website" text,
    "rooms" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "geoAddressId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "location_user_unique_idx" ON "location" USING btree ("userId");
CREATE UNIQUE INDEX "location_geoaddress_idx" ON "location" USING btree ("geoAddressId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location_team" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "users" json,
    "locationId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "locationteam_location_unique_idx" ON "location_team" USING btree ("locationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "maintenance" (
    "id" bigserial PRIMARY KEY,
    "maintenancetypeId" bigint NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone,
    "description" text NOT NULL,
    "userId" bigint NOT NULL,
    "feeId" bigint NOT NULL,
    "locationId" bigint NOT NULL
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
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "icon" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "media" (
    "id" bigserial PRIMARY KEY,
    "url" text NOT NULL,
    "mediaType" text NOT NULL,
    "_locationMediasLocationId" bigint,
    "_taskImagesTaskId" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "task" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "isCompleted" boolean NOT NULL,
    "_maintenanceTasksMaintenanceId" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
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
    "id" bigserial PRIMARY KEY,
    "toke" text NOT NULL,
    "plaform" text NOT NULL,
    "osVersion" text NOT NULL,
    "deviceInfo" text,
    "userId" bigint NOT NULL,
    "_userDevicesUserId" bigint
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
ALTER TABLE ONLY "location_team"
    ADD CONSTRAINT "location_team_fk_0"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
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
    VALUES ('nomadlodge_backend', '20241016114313768', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241016114313768', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
