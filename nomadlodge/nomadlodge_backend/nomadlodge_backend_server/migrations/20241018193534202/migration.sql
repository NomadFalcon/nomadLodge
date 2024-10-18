BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "maintenance" ALTER COLUMN "userId" DROP NOT NULL;
ALTER TABLE "maintenance" ALTER COLUMN "feeId" DROP NOT NULL;
ALTER TABLE "maintenance" ALTER COLUMN "bookingId" DROP NOT NULL;
CREATE INDEX "maintenance_user_unique_idx" ON "maintenance" USING btree ("userId");
CREATE INDEX "maintenance_fee_idx" ON "maintenance" USING btree ("feeId");
CREATE INDEX "maintenance_booking_unique_idx" ON "maintenance" USING btree ("bookingId");

--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241018193534202', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241018193534202', "timestamp" = now();

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
