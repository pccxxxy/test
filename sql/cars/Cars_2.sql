BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Cars_2" (
	"cid"	INTEGER,
	"款式"	TEXT,
	"品牌"	TEXT,
	"颜色"	TEXT,
	"类型"	TEXT,
	"价格"	INTEGER,
	"生产年份"	INTEGER,
	"是否卖出"	TEXT,
	"newCol"	INTEGER
);
INSERT INTO "Cars_2" ("cid","款式","品牌","颜色","类型","价格","生产年份","是否卖出","newCol") VALUES (2,'Camaro','雪佛兰','黄色','肌肉车',65000,2018,'1',NULL),
 (3,'911','保驰捷','红色','跑车',200000,2017,NULL,NULL),
 (4,'Escape','福特','蓝色','SUV',60000,2020,'0',NULL),
 (5,'M3','特斯拉','红色','轿车',250000,2018,NULL,NULL),
 (6,'Carrera','Porsche','红色','跑车',240000,2013,NULL,NULL),
 (7,'Camaro','雪佛兰','红色','肌肉车',60000,2016,'1',NULL),
 (8,'Camaro','雪佛兰','黄色','肌肉车',65000,2018,NULL,NULL),
 (9,'Panamera','保驰捷','黑色','跑车',200000,2017,'0',NULL),
 (10,'Mustang','福特','蓝色','肌肉车',60000,2020,NULL,NULL),
 (11,'Model S','特斯拉','黑色','轿车',180000,2018,'1',NULL),
 (12,'Civic','Toyota','white','sedan',25000,2016,'0',NULL),
 (13,'Camaro','雪佛兰','红色','肌肉车',60000,2016,'0',NULL),
 (14,'Challenger','雪佛兰','Orange','肌肉车',70000,2018,NULL,NULL),
 (15,'911','保驰捷','红色','跑车',200000,2017,'1',NULL),
 (16,'Escape','福特','蓝色','SUV',60000,2020,NULL,NULL),
 (17,'Model 3','特斯拉','红色','轿车',250000,2018,'1',NULL),
 (18,'Camaro','雪佛兰','红色','肌肉车',60000,2016,'1',NULL),
 (19,'120i','BMW','白色','hatchpack',40000,2012,NULL,NULL);
COMMIT;
