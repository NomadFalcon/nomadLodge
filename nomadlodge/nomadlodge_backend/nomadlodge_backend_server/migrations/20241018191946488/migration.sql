BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "maintenance" DROP CONSTRAINT "maintenance_fk_3";
ALTER TABLE ONLY "maintenance"
    ADD CONSTRAINT "maintenance_fk_3"
    FOREIGN KEY("bookingId")
    REFERENCES "booking"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241018191946488', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241018191946488', "timestamp" = now();

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
