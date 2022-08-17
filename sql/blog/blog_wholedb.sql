-- CREATE TABLES & INSERT VALUE INTO TABLES
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Categories" (
	"cate_id"	INTEGER,
	"category_name"	TEXT,
	"category_desc"	TEXT,
	PRIMARY KEY("cate_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Users" (
	"uid"	INTEGER,
	"username"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL CHECK(LENGTH("password") BETWEEN 8 AND 16),
	"email"	TEXT NOT NULL CHECK("email" LIKE "%@%") UNIQUE,
	"role"	TEXT DEFAULT user CHECK("role" IN ("admin", "user")),
	PRIMARY KEY("uid" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Posts" (
	"pid"	INTEGER,
	"post_title"	TEXT,
	"post_content"	TEXT,
	"post_banner_url"	TEXT CHECK("post_banner_url" LIKE "%.png" OR "post_banner_url" LIKE "%.jpg"),
	"is_featured"	INTEGER DEFAULT 0 CHECK("is_featured" IN (0, 1)),
	"post_category"	INTEGER NOT NULL,
	"publisher"	INTEGER NOT NULL,
	"publish_date"	TEXT,
	PRIMARY KEY("pid" AUTOINCREMENT),
	FOREIGN KEY("post_category") REFERENCES "Categories"("cate_id"),
	FOREIGN KEY("publisher") REFERENCES "Users"("uid")
);
CREATE TABLE IF NOT EXISTS "Comments" (
	"com_id"	INTEGER,
	"com_title"	TEXT NOT NULL,
	"com_content"	TEXT,
	"commenter"	INTEGER NOT NULL,
	"comment_post"	INTEGER NOT NULL,
	"comment_date"	TEXT,
	PRIMARY KEY("com_id" AUTOINCREMENT),
	FOREIGN KEY("commenter") REFERENCES "Users"("uid"),
	FOREIGN KEY("comment_post") REFERENCES "Posts"("pid")
);
INSERT INTO "Categories" ("cate_id","category_name","category_desc") VALUES (1,'Food','Tell you what to eat and how to cook'),
 (2,'Fashion','Never be out of date'),
 (3,'Science','Explore the world'),
 (4,'Life','Enjoy your every moment');
INSERT INTO "Users" ("uid","username","password","email","role") VALUES (1,'John','12345678','john@gmail.com','admin'),
 (2,'Mike','56478986','mike@163.com','user'),
 (3,'Julie','22334455','julie@gmail.com','user'),
 (4,'Rachel','iloveross','rachel@gmail.com','user'),
 (5,'Ross','iloverachel','ross@yahoo.com','user'),
 (6,'username1','1234567890','dinsd@gmail.com','user');
INSERT INTO "Posts" ("pid","post_title","post_content","post_banner_url","is_featured","post_category","publisher","publish_date") VALUES (1,'Post 1','When the Morrison Government effectively put the nations economy into hibernation in the early months of the Covid-19 pandemic last year, it committed more than $500 billion in support to ensure it was still intact when it was finally reawakened.Despite the expectation at the time that lockdowns and restrictions could last for up to six months, Australia emerged from its hibernation much sooner than anticipated. Through the success of the Covid zero strategy, Australia became the envy of the world.','fff.jpg',1,4,5,'23/09/2020'),
 (2,'Post 2','As our TV screens filled with images of the strife the pandemic was causing in all four corners of the globe, Australia collectively patted itself on the back, as we marvelled at our relative success and the normality of life in our little corner of the world.',NULL,0,1,2,'24/09/2020'),
 (3,'Post 3','Most MongoDB configuration can be set through flags to mongod. The entrypoint of the image is created to pass its arguments along to mongod. See below an example of setting MongoDB to use a different threading and execution model via docker run.',NULL,1,2,3,'25/09/2020'),
 (4,'Post 4','By default Mongo will set the wiredTigerCacheSizeGB to a value proportional to the host''s total memory regardless of memory limits you may have imposed on the container. In such an instance you will want to set the cache size to something appropriate, taking into account any other processes you may be running in the container which would also utilize memory.',NULL,1,3,4,'26/09/2020'),
 (5,'Post 5','A Bright New Addition To Eagle Street Pier.',NULL,0,4,1,'27/09/2020'),
 (6,'Post 6','Regional Thai - how it has been and how it should be. Prepare to indulge on authentic regional dishes made with uniquely Australian produce. Sit, sip and say “Sawasdee” to a nagalicious cocktail or two, all while sitting on the banks of the Brisbane River.',NULL,0,2,2,'28/09/2020'),
 (7,'Post 7','The only question that remains…',NULL,0,3,4,'29/09/2020'),
 (8,'Post 8','Do You Naga?',NULL,0,1,3,'30/09/2020'),
 (9,'Post 9','Brought to you by Angelo Leonforte, Olive & Angelo delivers to Brisbane an authentic signature of traditional Italian cuisine. We have a generous focus on catering to all diners. Therefore we have created a menu of gluten-free, vegan & traditional options. We proudly make all of our own pasta, including our gluten free & vegan pastas. As well as our traditional, gluten free pizza base options.',NULL,0,4,5,'1/10/2020'),
 (10,'Post 10','Specifies, develops and writes test plans and test scripts, produces test cases, carries out regression testing, and uses automated test software applications to test the behaviour, functionality and integrity of computer software, and documents the results of tests in defect reports and related documentation. It excludes testing of technical security controls.',NULL,0,4,2,'2/10/2020'),
 (11,'Post 11','让所有的留学生学习，就业不再是难事',NULL,0,2,1,'3/10/2020'),
 (12,'Post 12','匠人希望通过人工智能的方式，实现学生学习接受程度的大幅度提升，让教育能够更加低成本，更高效的改变每个人的生活。',NULL,0,1,4,'4/10/2020'),
 (13,'Post 13','超过3万多人的粉丝群体，是对匠人的信任，已经帮助2000多位小伙伴进入了中国和澳洲职场，匠人不仅仅在乎你学的好不好，更关心学完后走的好不好。',NULL,0,3,3,'5/10/2020'),
 (14,'Post 14','2019年开始开发属于匠人自己的学习平台，提升学生的学习效率以及匠人教学质量，降低学生的学习成本，实现匠人学院的互联网化转型。由数十位Business Analysts, Product Managers, UI/UX Designer, 百位 Full-stack Developers前后参与到项目中，经过不断地跟几十位Stakeholders交流，学习平台于2020年10月上线，初期是提供给内部学员使用，2021年3月开始面向公众提供服务。同时匠人的Staff Management，Online Assessment，Planner等互联网产品也在同时开发中。匠人除了服务于自己的inhouse application外，也积极帮助其他澳洲和中国本地企业，解决digital问题。',NULL,0,3,3,'6/10/2020'),
 (15,'Post 15','拥有全球超过500多位员工，上千位学生的信任，以及学员遍布澳洲各大公司，让华人在澳洲拧成一股绳，互帮互助，获得更多机会。',NULL,0,1,1,'2/10/2020');
INSERT INTO "Comments" ("com_id","com_title","com_content","commenter","comment_post","comment_date") VALUES (1,'Comment 1','Sooooo Good',2,1,'1/09/2020'),
 (2,'Comment 2','I like your post so much',3,2,'2/08/2020'),
 (3,'This is good',';)',4,2,'14/03/2021'),
 (4,'Nice post','You are an amazing guy',1,3,'6/05/2021'),
 (5,'comment 5','Why not watching that movie?',5,1,'6/08/2021'),
 (6,'I like it','I have to say, this is',2,1,'12/09/2021'),
 (7,'Good','That looks delicious',1,1,'16/09/2021'),
 (8,'绝对会推荐的餐厅','这是我在布村吃过最好吃的希腊餐厅，价格实惠，服务也不错，以后一定会再来',4,9,'7/10/2021'),
 (9,'不过错过的希腊风味','这家店的口味让我想起了当初在圣托里尼吃的海边餐厅的味道，厨师是正宗的希腊人，做的很地道',3,9,'10/12/2021'),
 (10,'大爱','这家泰餐非常不错，而且价格非常感人，两个人吃才50刀',5,6,'8/05/2021'),
 (11,'最好吃的泰餐，没有之一','这家店的烤鱼非常正宗，下次还会再来吃！',2,6,'14/12/2021'),
 (12,'学习改变人生','有一说一，确实帮我转行了，牛逼！',3,13,'2/01/2022'),
 (13,'Find difficulty in MongoDB','I cannot install it, it seems I lost a file',1,3,'3/01/2022'),
 (14,'What is the diff beteween mongoDB and SQL','Hi, I recently learn mongoDB by myself, so I am confused about in what situation should we use mongoDB rather than SQL?',4,3,'10/01/2022'),
 (15,'Here is a post that may help','https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/',3,3,'19/01/2022');
COMMIT;



-- UPDATE
UPDATE Posts SET is_featured=1 WHERE pid=16;


-- LIMIT, OFFSET in ORDER BY
SELECT * FROM Posts ORDER BY publish_date DESC;


SELECT * FROM Posts ORDER BY publish_date DESC LIMIT 10;

SELECT * FROM Posts ORDER BY publish_date DESC LIMIT 10 OFFSET 10;


-- TRIGGER
CREATE TRIGGER add_credit AFTER INSERT ON Posts
BEGIN
UPDATE Users SET credit=credit+1 WHERE uid=new.publisher;
END;
