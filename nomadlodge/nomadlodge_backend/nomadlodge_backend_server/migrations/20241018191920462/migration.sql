BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "maintenance" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "maintenance" (
    "id" bigserial PRIMARY KEY,
    "maintenancetype" text NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone,
    "description" text NOT NULL,
    "userId" bigint NOT NULL,
    "feeId" bigint NOT NULL,
    "locationId" bigint NOT NULL,
    "bookingId" bigint NOT NULL
);

-- Indexes
CREATE INDEX "maintenance_user_unique_idx" ON "maintenance" USING btree ("userId");
CREATE INDEX "maintenance_fee_idx" ON "maintenance" USING btree ("feeId");
CREATE INDEX "maintenance_location_unique_idx" ON "maintenance" USING btree ("locationId");
CREATE INDEX "maintenance_booking_unique_idx" ON "maintenance" USING btree ("bookingId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_1"
    FOREIGN KEY("feeId")
    REFERENCES "fee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_2"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_3"
    FOREIGN KEY("bookingId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241018191920462', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241018191920462', "timestamp" = now();

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
