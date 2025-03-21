ALTER TABLE "content" RENAME TO "content11386";
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
INSERT INTO "content" ("author_id", "created_at", "id", "text", "title", "type", "updated_at") SELECT "author_id", "created_at", "id", "text", "title", "type", "updated_at" FROM "content11386";
