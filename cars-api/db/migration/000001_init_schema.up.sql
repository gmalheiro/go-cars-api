CREATE TABLE "owners" (
  "id" serial PRIMARY KEY,
  "name" varchar(100) NOT NULL,
  "email" varchar(100) UNIQUE NOT NULL,
  "phone" varchar(20) UNIQUE NOT NULL,
  "created_at" timestamp DEFAULT 'now()'
);

CREATE TABLE "cars" (
  "id" serial PRIMARY KEY,
  "owner_id" int NOT NULL,
  "brand" varchar(50) NOT NULL,
  "model" varchar(50) NOT NULL,
  "year" int NOT NULL,
  "price" decimal(10,2) NOT NULL,
  "created_at" timestamp DEFAULT 'now()'
);

CREATE UNIQUE INDEX ON "owners" ("email");

CREATE UNIQUE INDEX ON "owners" ("phone");

CREATE INDEX ON "cars" ("owner_id");

CREATE INDEX ON "cars" ("brand", "model");

CREATE INDEX ON "cars" ("year");

ALTER TABLE "cars" ADD FOREIGN KEY ("owner_id") REFERENCES "owners" ("id");
