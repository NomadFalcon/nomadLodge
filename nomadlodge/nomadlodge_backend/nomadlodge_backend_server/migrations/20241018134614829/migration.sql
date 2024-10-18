BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "integration" (
    "id" bigserial PRIMARY KEY,
    "apiKey" text NOT NULL,
    "integrationType" text NOT NULL,
    "userId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "integration_user_unique_idx" ON "integration" USING btree ("userId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "integration"
    ADD CONSTRAINT "integration_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241018134614829', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241018134614829', "timestamp" = now();

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
