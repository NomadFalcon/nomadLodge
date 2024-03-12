BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "location_team" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "users" json,
    "locationId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "locationteam_location_unique_idx" ON "location_team" USING btree ("locationId");

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
    VALUES ('nomadlodge_backend', '20240312174657956', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240312174657956', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
