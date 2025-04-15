# ************************************************************
# Sequel Ace SQL dump
# 版本號： 20087
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# 主機: mysql.danielhsu.dev (MySQL 11.4.5-MariaDB-log)
# 資料庫: project_hubd
# 產生時間: 2025-04-14 08:26:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--
-- Dumping routines (PROCEDURE) for database 'project_hubd'
--
DELIMITER ;;

# Dump of PROCEDURE insert_product_pa
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `insert_product_pa` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`publicuser`@`%`*/ /*!50003 PROCEDURE `insert_product_pa`(
    IN p_product_name VARCHAR(100),
    IN p_product_price INT,
    IN p_product_description VARCHAR(255),
    IN p_product_img VARCHAR(255),
    IN p_product_status VARCHAR(50)
)
BEGIN
    DECLARE new_product_id VARCHAR(10);
    DECLARE max_id INT;

    SELECT COALESCE(MAX(CAST(SUBSTRING(product_id, 3, 10) AS UNSIGNED)), 0) + 1
    INTO max_id
    FROM product_main
    WHERE product_id LIKE 'pa%';

    SET new_product_id = CONCAT('pa', LPAD(max_id, 3, '0'));

    INSERT INTO product_main
    (product_id, category_id, product_name, product_price, product_description, product_img, product_status)
    VALUES
    (new_product_id, 201, p_product_name, p_product_price, p_product_description, p_product_img, p_product_status);

    -- **回傳新增的 `product_id`**
    SELECT new_product_id AS product_id;
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE insert_product_pj
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `insert_product_pj` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`publicuser`@`%`*/ /*!50003 PROCEDURE `insert_product_pj`(
    IN p_product_name VARCHAR(100),
    IN p_product_price INT,
    IN p_product_description VARCHAR(255),
    IN p_product_img VARCHAR(255),
    IN p_product_status VARCHAR(50)
)
BEGIN
    DECLARE new_product_id VARCHAR(10);
    DECLARE max_id INT;

    SELECT COALESCE(MAX(CAST(SUBSTRING(product_id, 3, 10) AS UNSIGNED)), 0) + 1
    INTO max_id
    FROM product_main
    WHERE product_id LIKE 'pj%';

    SET new_product_id = CONCAT('pj', LPAD(max_id, 3, '0'));

    INSERT INTO product_main
    (product_id, category_id, product_name, product_price, product_description, product_img, product_status)
    VALUES
    (new_product_id, 103, p_product_name, p_product_price, p_product_description, p_product_img, p_product_status);

    -- **回傳新增的 `product_id`**
    SELECT new_product_id AS product_id;
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE insert_product_pl
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `insert_product_pl` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`publicuser`@`%`*/ /*!50003 PROCEDURE `insert_product_pl`(
    IN p_product_name VARCHAR(100),
    IN p_product_price INT,
    IN p_product_description VARCHAR(255),
    IN p_product_img VARCHAR(255),
    IN p_product_status VARCHAR(50)
)
BEGIN
    DECLARE new_product_id VARCHAR(10);
    DECLARE max_id INT;

    SELECT COALESCE(MAX(CAST(SUBSTRING(product_id, 3, 10) AS UNSIGNED)), 0) + 1
    INTO max_id
    FROM product_main
    WHERE product_id LIKE 'pl%';

    SET new_product_id = CONCAT('pl', LPAD(max_id, 3, '0'));

    INSERT INTO product_main
    (product_id, category_id, product_name, product_price, product_description, product_img, product_status)
    VALUES
    (new_product_id, 102, p_product_name, p_product_price, p_product_description, p_product_img, p_product_status);

    -- **回傳新增的 `product_id`**
    SELECT new_product_id AS product_id;
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE insert_product_ps
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `insert_product_ps` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`publicuser`@`%`*/ /*!50003 PROCEDURE `insert_product_ps`(
    IN p_product_name VARCHAR(100),
    IN p_product_price INT,
    IN p_product_description VARCHAR(255),
    IN p_product_img VARCHAR(255),
    IN p_product_status VARCHAR(50)
)
BEGIN
    DECLARE new_product_id VARCHAR(10);
    DECLARE max_id INT;

    SELECT COALESCE(MAX(CAST(SUBSTRING(product_id, 3, 10) AS UNSIGNED)), 0) + 1
    INTO max_id
    FROM product_main
    WHERE product_id LIKE 'ps%';

    SET new_product_id = CONCAT('ps', LPAD(max_id, 3, '0'));

    INSERT INTO product_main
    (product_id, category_id, product_name, product_price, product_description, product_img, product_status)
    VALUES
    (new_product_id, 101, p_product_name, p_product_price, p_product_description, p_product_img, p_product_status);

    -- **回傳新增的 `product_id`**
    SELECT new_product_id AS product_id;
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
