CREATE TABLE "tag" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP
);

CREATE TABLE "author" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP
);

CREATE TABLE "content" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "author_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP
);

CREATE TABLE "content_tag" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "tag_id" INTEGER NOT NULL,
    "content_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "schema_migrations" (
    "version" BIGINT PRIMARY KEY,
    "applied_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dirty" BOOLEAN NOT NULL DEFAULT 0
);
