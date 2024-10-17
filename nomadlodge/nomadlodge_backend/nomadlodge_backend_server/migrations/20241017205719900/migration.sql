BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "media" DROP CONSTRAINT "media_fk_1";
ALTER TABLE "media" ADD COLUMN "_productMediasProductId" bigint;
ALTER TABLE ONLY "media"
    ADD CONSTRAINT "media_fk_2"
    FOREIGN KEY("_taskImagesTaskId")
    REFERENCES "task"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "media"
    ADD CONSTRAINT "media_fk_1"
    FOREIGN KEY("_productMediasProductId")
    REFERENCES "product"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "product" (
    "id" bigserial PRIMARY KEY,
    "start" timestamp without time zone,
    "end" timestamp without time zone,
    "description" text NOT NULL,
    "feeId" bigint NOT NULL,
    "locationId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "product_fee_idx" ON "product" USING btree ("feeId");
CREATE UNIQUE INDEX "product_location_unique_idx" ON "product" USING btree ("locationId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_fk_0"
    FOREIGN KEY("feeId")
    REFERENCES "fee"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_fk_1"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nomadlodge_backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nomadlodge_backend', '20241017205719900', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241017205719900', "timestamp" = now();

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
