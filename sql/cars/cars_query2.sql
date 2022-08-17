SELECT * FROM Cars_2 WHERE "price">100000;

SELECT * FROM Cars_2 WHERE "is_sold"  IS NOT NULL;

SELECT * FROM Cars_2 WHERE "type"  LIKE 'C%';

SELECT * FROM Cars_2 WHERE "price" BETWEEN 100000 AND 200000;

SELECT * FROM Cars_2 WHERE "price" > 150000 AND "color" = "red";

SELECT * FROM Cars_2 WHERE "price" > 150000 OR "type" = "sports car";


CREATE TABLE IF NOT EXISTS "Factories" (
    "fid" INTEGER,
	"factory_name" TEXT,
	"address" TEXT,
	"years" INTEGER,
	"employee_size" INTEGER,
	"director" TEXT,
	"factory_size" INTEGER,
	"company" TEXT,
	PRIMARY KEY("fid" AUTOINCREMENT)
);

INSERT INTO 'Factories'()