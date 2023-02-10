CREATE TABLE "users" (
  "id_user" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "rol" int NOT NULL
);

CREATE TABLE "user_course" (
  "id_course_user" int PRIMARY KEY,
  "id_user" uuid NOT NULL,
  "id_course" int NOT NULL,
  "num_videos" int NOT NULL
);

CREATE TABLE "course" (
  "id_course" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "id_category" int NOT NULL,
  "id_level" int NOT NULL,
  "id_video" int NOT NULL,
  "teacher_id" int NOT NULL
);

CREATE TABLE "level" (
  "id_level" int PRIMARY KEY,
  "name_level" varchar NOT NULL
);

CREATE TABLE "video" (
  "id_video" int,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "view" boolean DEFAULT false,
  "id_course" int NOT NULL
);

CREATE TABLE "category" (
  "id_category" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id_Rol" int PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("rol") REFERENCES "roles" ("id_Rol");

ALTER TABLE "user_course" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id_user");

ALTER TABLE "user_course" ADD FOREIGN KEY ("id_course") REFERENCES "course" ("id_course");

ALTER TABLE "course" ADD FOREIGN KEY ("id_category") REFERENCES "category" ("id_category");

ALTER TABLE "course" ADD FOREIGN KEY ("id_level") REFERENCES "level" ("id_level");

ALTER TABLE "video" ADD FOREIGN KEY ("id_course") REFERENCES "course" ("id_course");
