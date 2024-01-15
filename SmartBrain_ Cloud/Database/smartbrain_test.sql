-- Active: 1690040192604@@127.0.0.1@5432@smartbrain@public

INSERT INTO "Users"("Name","Emails","Joined") VALUES ('Christopher', 'christopher083ade@gmails.com', NOW());

INSERT INTO "Login"("hash", "email") VALUES ('caw083', 'christopher083ade@gmails.com');

DELETE from "Users" WHERE "User_Id" = 3;
DELETE FROM "Login" WHERE "id" = 5;