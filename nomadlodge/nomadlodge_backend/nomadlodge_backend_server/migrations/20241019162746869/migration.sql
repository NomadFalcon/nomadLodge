BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "location" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "externalId" text NOT NULL,
    "longDescription" text NOT NULL,
    "shortDescription" text NOT NULL,
    "website" text,
    "rooms" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "geoAddressId" bigint NOT NULL,
    "teamId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "location_user_unique_idx" ON "location" USING btree ("userId");
CREATE UNIQUE INDEX "location_geoaddress_idx" ON "location" USING btree ("geoAddressId");

--
-- ACTION DROP TABLE
--
DROP TABLE "location_team" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location_team" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "users" json NOT NULL,
    "invitations" json NOT NULL,
    "locationId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "locationteam_location_unique_idx" ON "location_team" USING btree ("locationId");

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
ALTER TABLE ONLY "location"
    ADD CONSTRAINT "location_fk_2"
    FOREIGN KEY("teamId")
    REFERENCES "location_team"("id")
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
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241019162746869', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241019162746869', "timestamp" = now();

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
