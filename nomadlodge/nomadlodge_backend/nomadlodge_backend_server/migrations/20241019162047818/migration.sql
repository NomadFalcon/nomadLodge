BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "user_invitation" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_invitation" (
    "id" bigserial PRIMARY KEY,
    "code" text NOT NULL,
    "email" text NOT NULL,
    "url" text NOT NULL,
    "hasBeenUsed" boolean NOT NULL DEFAULT false,
    "userId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_invitation_user_unique_idx" ON "user_invitation" USING btree ("userId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_invitation"
    ADD CONSTRAINT "user_invitation_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241019162047818', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241019162047818', "timestamp" = now();

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
