BEGIN;

--
-- Class Booking as table booking
--
CREATE TABLE "booking" (
    "id" serial PRIMARY KEY,
    "platform" text NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone NOT NULL,
    "userId" integer NOT NULL,
    "locationId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "booking_user_unique_idx" ON "booking" USING btree ("userId");
CREATE UNIQUE INDEX "booking_location_unique_idx" ON "booking" USING btree ("locationId");

--
-- Class Fee as table fee
--
CREATE TABLE "fee" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "value" double precision NOT NULL
);

--
-- Class GeoAddress as table geoaddress
--
CREATE TABLE "geoaddress" (
    "id" serial PRIMARY KEY,
    "shortAddress" text NOT NULL,
    "longAddress" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);

--
-- Class Location as table location
--
CREATE TABLE "location" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "longDescription" text NOT NULL,
    "shortDescription" text NOT NULL,
    "website" text,
    "rooms" integer NOT NULL,
    "userId" integer NOT NULL,
    "geoAddressId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "location_user_unique_idx" ON "location" USING btree ("userId");
CREATE UNIQUE INDEX "location_geoaddress_idx" ON "location" USING btree ("geoAddressId");

--
-- Class LocationTeam as table location_team
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
-- Class Maintenance as table maintenance
--
CREATE TABLE "maintenance" (
    "id" serial PRIMARY KEY,
    "maintenancetypeId" integer NOT NULL,
    "start" timestamp without time zone NOT NULL,
    "end" timestamp without time zone,
    "description" text NOT NULL,
    "userId" integer NOT NULL,
    "feeId" integer NOT NULL,
    "locationId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "maintenance_maintenancetype_unique_idx" ON "maintenance" USING btree ("maintenancetypeId");
CREATE UNIQUE INDEX "maintenance_user_unique_idx" ON "maintenance" USING btree ("userId");
CREATE UNIQUE INDEX "maintenance_fee_idx" ON "maintenance" USING btree ("feeId");
CREATE UNIQUE INDEX "maintenance_location_unique_idx" ON "maintenance" USING btree ("locationId");

--
-- Class Maintenancetype as table maintenancetype
--
CREATE TABLE "maintenancetype" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "icon" text
);

--
-- Class Media as table media
--
CREATE TABLE "media" (
    "id" serial PRIMARY KEY,
    "url" text NOT NULL,
    "mediaType" text NOT NULL,
    "_locationMediasLocationId" integer,
    "_taskImagesTaskId" integer
);

--
-- Class Task as table task
--
CREATE TABLE "task" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "isCompleted" boolean NOT NULL,
    "_maintenanceTasksMaintenanceId" integer
);

--
-- Class User as table user
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "phone" text,
    "country" text,
    "userType" text NOT NULL
);

--
-- Class UserDevice as table user_device
--
CREATE TABLE "user_device" (
    "id" serial PRIMARY KEY,
    "toke" text NOT NULL,
    "plaform" text NOT NULL,
    "osVersion" text NOT NULL,
    "deviceInfo" text,
    "userId" integer NOT NULL,
    "_userDevicesUserId" integer
);

-- Indexes
CREATE UNIQUE INDEX "userdevice_user_unique_idx" ON "user_device" USING btree ("userId");

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "booking" table
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
-- Foreign relations for "location" table
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
-- Foreign relations for "location_team" table
--
ALTER TABLE ONLY "location_team"
    ADD CONSTRAINT "location_team_fk_0"
    FOREIGN KEY("locationId")
    REFERENCES "location"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "maintenance" table
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
-- Foreign relations for "media" table
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
-- Foreign relations for "task" table
--
ALTER TABLE ONLY "task"
    ADD CONSTRAINT "task_fk_0"
    FOREIGN KEY("_maintenanceTasksMaintenanceId")
    REFERENCES "maintenance"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "user_device" table
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
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
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
