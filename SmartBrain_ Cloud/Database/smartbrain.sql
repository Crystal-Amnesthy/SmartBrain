-- Active: 1690040192604@@127.0.0.1@5432@smartbrain@public
CREATE TABLE "Users" (
	"User_Id" serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Emails" TEXT NOT NULL UNIQUE,
	"Entries" bigint NOT NULL DEFAULT '0',
	"Joined" TIMESTAMP NOT NULL,
	CONSTRAINT "Users_pk" PRIMARY KEY ("User_Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Login" (
	"id" serial NOT NULL,
	"hash" varchar(100) NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
	CONSTRAINT "Login_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "Login" ADD CONSTRAINT "Login_fk0" FOREIGN KEY ("email") REFERENCES "Users"("Emails");

DROP TABLE "Users";
DROP TABLE "Login";


