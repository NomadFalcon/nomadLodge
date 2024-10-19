BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "user_device" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_device" (
    "id" bigserial PRIMARY KEY,
    "token" text NOT NULL,
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
    VALUES ('nomadlodge_backend', '20241019150933908', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241019150933908', "timestamp" = now();

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
