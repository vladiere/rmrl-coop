-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: rmrl
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `getloansdata`
--

DROP TABLE IF EXISTS `getloansdata`;
/*!50001 DROP VIEW IF EXISTS `getloansdata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getloansdata` AS SELECT 
 1 AS `formatted_date`,
 1 AS `status`,
 1 AS `partial_pay`,
 1 AS `amount`,
 1 AS `loanterm`,
 1 AS `firstname`,
 1 AS `middlename`,
 1 AS `lastname`,
 1 AS `member_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getloansview`
--

DROP TABLE IF EXISTS `getloansview`;
/*!50001 DROP VIEW IF EXISTS `getloansview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getloansview` AS SELECT 
 1 AS `member_id`,
 1 AS `partial_pay`,
 1 AS `loan_amount`,
 1 AS `description`,
 1 AS `firstname`,
 1 AS `middlename`,
 1 AS `lastname`,
 1 AS `loanterm`,
 1 AS `purpose`,
 1 AS `modepayment`,
 1 AS `repaymentsched`,
 1 AS `formatted_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `getloansdata`
--

/*!50001 DROP VIEW IF EXISTS `getloansdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getloansdata` AS select date_format(`tl`.`date_accept`,'%M %d, %Y') AS `formatted_date`,`tl`.`status` AS `status`,`tl`.`partial_pay` AS `partial_pay`,`lr`.`amount` AS `amount`,`lr`.`loanterm` AS `loanterm`,`tm`.`firstname` AS `firstname`,`tm`.`middlename` AS `middlename`,`tm`.`lastname` AS `lastname`,`tm`.`id` AS `member_id` from ((`tbl_loans` `tl` left join `tbl_loanrequests` `lr` on((`tl`.`member_id` = `lr`.`member_id`))) left join `tbl_members` `tm` on((`tl`.`member_id` = `tm`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getloansview`
--

/*!50001 DROP VIEW IF EXISTS `getloansview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getloansview` AS select `tm`.`id` AS `member_id`,`tbl`.`partial_pay` AS `partial_pay`,`tbl`.`loan_amount` AS `loan_amount`,`tbl`.`description` AS `description`,`tm`.`firstname` AS `firstname`,`tm`.`middlename` AS `middlename`,`tm`.`lastname` AS `lastname`,`lr`.`loanterm` AS `loanterm`,`lr`.`purpose` AS `purpose`,`lr`.`modepayment` AS `modepayment`,`lr`.`repaymentsched` AS `repaymentsched`,date_format(`lt`.`date_pay`,'%M %d, %Y') AS `formatted_date` from (((`tbl_loans` `tbl` left join `tbl_members` `tm` on((`tm`.`id` = `tbl`.`member_id`))) left join `tbl_loanrequests` `lr` on((`lr`.`member_id` = `tbl`.`member_id`))) left join `tbl_loantransactions` `lt` on((`lt`.`member_id` = `tbl`.`member_id`))) order by `lt`.`date_pay` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'rmrl'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_acceptRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_acceptRequest`(
	IN p_id int,
    IN p_amount BIGINT,
    IN p_term VARCHAR(25),
    IN p_desc VARCHAR(25)
)
BEGIN
    DECLARE years_int int;
    DECLARE years_string VARCHAR(255);
    DECLARE new_loanterm int;
    DECLARE p_pay int;
    DECLARE lt_id int;
    DECLARE i_amount int;
    DECLARE new_month int;
    DECLARE st_msg VARCHAR(255);
    DECLARE st_code int;
    DECLARE tbl_id int;
    DECLARE lr_msg VARCHAR(20);
    DECLARE lt_desc VARCHAR(25);
    
    SET years_int = CAST(SUBSTRING_INDEX(p_term, ' ', 1) AS UNSIGNED);
    SET years_string = SUBSTRING(p_term, LOCATE(' ', p_term) + 1);
	
    
	SELECT id INTO lt_id FROM tbl_loanrequests WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
	
	IF years_string = 'years' OR years_string = 'year' THEN
		SET years_int = years_int * 12;
	END IF;
    
	SET i_amount = p_amount * 0.02;
	
    IF p_desc = 'read' THEN
		SELECT lr.status INTO lr_msg FROM tbl_loanrequests AS lr WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
		IF lr_msg = 'unread' THEN
			UPDATE tbl_loanrequests SET status = 'read' WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
			INSERT INTO tbl_loans (`member_id`,`requestloan_id`,`loan_amount`,`partial_pay`,`balance_pay`) VALUES (p_id,lt_id,p_amount,p_amount / years_int, i_amount);
        END IF;
		
    END IF;
    
    IF p_desc = 'accept' THEN
		INSERT INTO tbl_savings (`member_id`,`amount`) VALUES (p_id,i_amount);
		SELECT id INTO tbl_id FROM tbl_loans WHERE member_id = p_id ORDER BY date_accept DESC LIMIT 1;
		
		INSERT INTO tbl_loantransactions (member_id,loan_id,debit,balance_pay) VALUES (p_id,tbl_id,p_amount, (p_amount / years_int) + i_amount);
		UPDATE tbl_loans SET status = 'accept' WHERE member_id = p_id AND requestloan_id = lt_id;
        SELECT tbl.description INTO lt_desc FROM tbl_loanrequests AS tbl WHERE member_id = p_id ORDER BY request_date DESC LIMIT 1;
        UPDATE tbl_pettycash SET balance = ROUND(p_amount / 5000) * 1000, add_at = NOW() WHERE member_id = p_id;
        
		SET st_code = 200, st_msg = "Request Accept";
		SELECT st_code, st_msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addAdmin`(
    IN p_desc VARCHAR(255),
	IN fname varchar(255),
    IN lname varchar(255),
    IN email varchar(255),
    IN uname varchar(255),
    IN pass varchar(255)
)
BEGIN
	DECLARE ret int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
	DECLARE p_id int;
    
    IF p_desc = 'add' THEN
		INSERT INTO `admin`
			(`firstname`,`lastname`, `email`,`username`,`password`) 
		VALUES
			(fname,lname,email,uname,pass);
        SET ret = 1;
        SET st_code = 200;
        SET st_msg = 'Admin Added Successfully';
        SELECT ret,st_code,st_msg;
	END IF;
    
	IF p_desc = 'update' THEN
		IF EXISTS(SELECT id FROM admin WHERE firstname = fname AND lastname = lname) THEN
			SELECT id INTO p_id FROM admin WHERE firstname = fname AND lastname = lname;
			IF fname <> '' AND lname <> '' AND email <> '' AND uname <> '' AND pass <> '' THEN
				UPDATE `admin` SET `firstname`=fname,`lastname`=lname,`email`=email,`username`=username,`password`=pass,`updated_at`=NOW() WHERE id = p_id;
				SET ret = 2;
				SET st_code = 200;
				SET st_msg = 'Admin Updated Successfully';
				SELECT ret,st_code,st_msg;
			ELSE
				
				IF email <> '' THEN
					UPDATE `admin` SET `email`=email,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Email Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
				
				IF uname <> '' THEN
					UPDATE `admin` SET `username`=uname,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Username Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
				
				IF pass <> '' THEN
					UPDATE `admin` SET `password`=pass,`updated_at`=NOW() WHERE id=p_id;
					SET ret = 3;
					SET st_code = 200;
					SET st_msg = 'Admin Password Updated Successfully';
					SELECT ret,st_code,st_msg;
				END IF;
			END IF;
        ELSE
			SET st_code = 404;
            SET st_msg = 'Admin Not found';
            SELECT st_code, st_msg;
        END IF;
		
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addEmployee`(
	IN p_id int,
	IN p_fname varchar(255),
	IN p_lname varchar(255),
    IN p_number varchar(255),
    IN p_address varchar(255),
    IN p_email varchar(255),
    IN p_pos varchar(255)
)
BEGIN
	DECLARE ret VARCHAR(255);
    DECLARE stat int;
    IF p_number = '' AND p_address = '' AND p_email = '' AND p_pos = '' THEN
        SET stat = 400;
        SET ret = 'All parameters are empty';
        SELECT stat,ret;
    ELSEIF p_id = 0 THEN
        INSERT INTO tbl_employees (`firstname`,`lastname`,`number`,`address`,`email`,`position`)
        VALUES (p_fname,p_lname,p_number,p_address,p_email,p_pos);
        SET stat = 200;
		SET ret = 'Employee Registered Successfully';
		SELECT stat,ret;
    ELSE
        IF p_fname <> '' AND p_lname <> '' AND p_number <> '' AND p_address <> '' AND p_email <> '' AND p_pos <> '' THEN
            UPDATE tbl_employees SET 
            `firstname` = p_fname,
            `lastname` = p_lname,
            `number` = p_number,
            `address` = p_address,
            `email` = p_email,
            `position` = p_pos
            WHERE id = p_id;
            SET stat = 200;
            SET ret = 'Success';
            SELECT stat,ret;
        ELSE
            
            IF p_number <> '' THEN
                UPDATE tbl_employees SET `number` = p_number WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Number Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_address <> '' THEN
                UPDATE tbl_employees SET `address` = p_address WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_email <> '' THEN
                UPDATE tbl_employees SET `email` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_pos <> '' THEN
                UPDATE tbl_employees SET `position` = p_pos WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Position promoted successfully';
				SELECT stat,ret;
            END IF;

        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_addMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addMember`(
	IN p_id int,
	IN p_fname varchar(255),
	IN p_mname varchar(255),
	IN p_lname varchar(255),
	IN p_gender varchar(45),
    IN p_number varchar(255),
    IN p_bd varchar(255),
    IN p_email varchar(255),
    IN p_cstatus varchar(255),
    IN p_address varchar(255),
    IN p_password varchar(255),
    IN p_benefit varchar(255),
    IN p_bw varchar(255),
    IN p_sc int
)
BEGIN
	DECLARE ret VARCHAR(255);
    DECLARE stat int;
    DECLARE m_id int;
    
    IF p_number = '' AND p_address = '' AND p_password = '' AND p_benefit = '' AND p_bw = '' AND p_email = '' AND p_cstatus = '' THEN
        SET stat = 400;
        SET ret = 'All parameters are empty';
        SELECT stat,ret;
    ELSEIF p_id = 0 THEN
        INSERT INTO tbl_members (`firstname`,`middlename`,`lastname`,`gender`,`number`,`birthdate`,`email_add`,`civil_status`,`address`,`password`,`beneficiary`,`business_work`)
        VALUES (p_fname,p_mname,p_lname,p_gender,p_number,p_bd,p_email,p_cstatus,p_address,p_password,p_benefit,p_bw);
        SELECT id INTO m_id FROM tbl_members WHERE `lastname` = p_lname AND `password` = p_password;
        INSERT INTO tbl_pettycash (`member_id`,`balance`) VALUE (m_id, p_sc);
        SELECT 'Success';
    ELSE
        IF p_fname <> '' AND p_mname <> '' AND p_lname <> '' AND p_number <> '' AND p_email <> '' AND p_cstatus <> '' AND p_address <> '' AND p_password <> '' AND p_benefit <> '' AND p_email <> '' AND p_bw <> '' AND p_sc <> 0 THEN
            UPDATE tbl_members SET 
            `firstname` = p_fname,
            `middlename` = p_mname,
            `lastname` = p_lname,
            `number` = p_number,
            `email_add` = p_email,
            `civil_status` = p_cstatus,
            `address` = p_address,
            `password` = p_password,
            `beneficiary` = p_benefit,
            `business_work` = p_bw,
            `email_add` = p_email
            WHERE id = p_id;
            SET stat = 200;
            SET ret = 'Success';
            SELECT stat,ret;
        ELSE
            
            IF p_number <> '' THEN
                UPDATE tbl_members SET `number` = p_number WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Number Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_email <> '' THEN
                UPDATE tbl_members SET `email_add` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_cstatus <> '' THEN
                UPDATE tbl_members SET `civil_status` = p_cstatus WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Civil Status Updated Successfully';
				SELECT stat,ret;
            END IF;
            
            IF p_email <> '' THEN
                UPDATE tbl_members SET `email_add` = p_email WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Email Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_address <> '' THEN
                UPDATE tbl_members SET `address` = p_address WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Address Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_password <> '' THEN
                UPDATE tbl_members SET `password` = p_password WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Password Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_benefit <> '' THEN
                UPDATE tbl_members SET `beneficiary` = p_benefit WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Beneficiary Updated Successfully';
				SELECT stat,ret;
            END IF;

            IF p_bw <> '' THEN
                UPDATE tbl_members SET `business_work` = p_bw WHERE id = p_id;
                SET stat = 200;
                SET ret = 'Business or Work Updated Successfully';
				SELECT stat,ret;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Authenticate_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Authenticate_Admin`(
    IN p_username varchar(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_status int
)
BEGIN
    DECLARE ret int;
    DECLARE c_lock int;
    
    
    IF p_status = 0 THEN 
        IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			SELECT counterlock INTO c_lock FROM `admin` WHERE username = p_username;
			IF c_lock >= 3 THEN
				IF c_lock = 3 THEN
					UPDATE `admin` SET counterlock = counterlock + 1, updated_at = NOW() WHERE username = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'locked' FROM admin WHERE username = p_username;
					SET ret = 3;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'locked' FROM admin WHERE username = p_username;
					SET ret = 3;
                END IF;
			ELSE
				SELECT * FROM `admin` WHERE username = p_username;
				SET ret = 1;
			END IF;
        ELSE
            SET ret = 4;
        END IF;
    ELSEIF p_status = 1 THEN 
		IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			UPDATE `admin` SET counterlock = IFNULL(counterlock, 0) + 1 WHERE username = p_username;
			INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, `role`, p_browser, p_ipaddress, 'failed' FROM admin WHERE username = p_username;
			SET ret = 2;
		END IF;
    ELSE 
        SET ret = NULL;
    END IF;
    
    IF ret IS NOT NULL THEN 
        IF ret < 4 THEN 
			IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
				SELECT *,ret FROM `admin` WHERE username = p_username;
			ELSE
				SELECT *,ret FROM `tbl_employees` WHERE email = p_username;
            END IF;
        ELSE 
            SELECT ret;
        END IF;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Authenticate_Member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Authenticate_Member`(
    IN p_lastname varchar(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_status int
)
BEGIN
    DECLARE ret int;
    DECLARE c_lock int;
    DECLARE m_status VARCHAR(255);
    DECLARE stat_ret VARCHAR(255);
    
    SELECT counterlock INTO c_lock FROM `tbl_members` WHERE lastname = p_lastname;
    SELECT `status` INTO m_status FROM `tbl_members` WHERE lastname = p_lastname;
    
    IF p_status = 0 THEN
		IF m_status = 'deleted' THEN
			SET ret = 5;
            SET stat_ret = 'Account Not Available';
        ELSE
			IF EXISTS(SELECT * FROM `tbl_members` WHERE lastname = p_lastname) THEN
				IF c_lock >= 3 THEN
					IF c_lock = 3 THEN
						UPDATE `tbl_members` SET counterlock = counterlock + 1, updated_at = NOW() WHERE lastname = p_lastname;
						INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_lastname;
						SET ret = 3;
					ELSE
						INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_lastname;
						SET ret = 3;
					END IF;
				ELSE
					SELECT * FROM tbl_members WHERE lastname = p_lastname;
					SET ret = 1;
				END IF;
			ELSE 
				SET ret = 4;
			END IF;
		END IF;
    ELSEIF p_status = 1 THEN 
        UPDATE `tbl_members` SET counterlock = IFNULL(counterlock, 0) + 1 WHERE lastname = p_lastname;
        INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, 'member', p_browser, p_ipaddress, 'failed' FROM tbl_members WHERE lastname = p_lastname;
        SET ret = 2;
    ELSE 
        SET ret = NULL;
    END IF;
    
    IF ret IS NOT NULL THEN 
        IF ret < 4 THEN 
            SELECT *,ret FROM `tbl_members` WHERE lastname = p_lastname;
        ELSE 
			IF ret = 5 THEN
				SELECT stat_ret, ret;
            ELSE
				SELECT ret;
			END IF;
        END IF;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_checkTimeStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkTimeStatus`(
    IN p_username VARCHAR(255),
    IN p_ipaddress VARCHAR(255),
    IN p_browser VARCHAR(255),
    IN p_acc VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret INT;
    DECLARE p_time TIMESTAMP;
    DECLARE c_lock INT;
    DECLARE acc_id INT;
	DECLARE p_em VARCHAR(255);
	
    
    IF p_acc = 'member' THEN
		SELECT updated_at, counterlock, id INTO p_time, c_lock, acc_id FROM tbl_members WHERE lastname = p_username;
        
        IF c_lock >= 3 THEN
            IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
                UPDATE tbl_members SET counterlock = 0, updated_at = NOW() WHERE lastname = p_username;
                INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'unlocked' FROM tbl_members WHERE lastname = p_username;
                SET ret = 3;
                SELECT ret;
            ELSE
                INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'locked' FROM tbl_members WHERE lastname = p_username;
                SET ret = 2;
                SELECT ret;
            END IF;
        ELSE
            UPDATE tbl_members SET counterlock = 0, updated_at = NOW() WHERE lastname = p_username;
            INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'success' FROM tbl_members WHERE lastname = p_username;
            INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
            
            SET ret = 1;
            SELECT *, ret FROM tbl_members WHERE lastname = p_username;
        END IF;
        
    ELSE
        IF EXISTS(SELECT * FROM `admin` WHERE username = p_username) THEN
			SELECT updated_at, counterlock, id INTO p_time, c_lock, acc_id FROM admin WHERE username = p_username;
			
			IF c_lock >= 3 THEN
				IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
					UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'unlocked' FROM admin WHERE username = p_username;
					SET ret = 3;
					SELECT ret;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress 'locked' FROM admin WHERE username = p_username;
					SET ret = 2;
					SELECT ret;
				END IF;
			ELSE
				UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
				INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_acc, p_browser, p_ipaddress, 'success' FROM admin WHERE username = p_username;
				INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
				
				SET ret = 1;
				SELECT *, ret FROM admin WHERE username = p_username;
			END IF;
        ELSE
			SELECT updated_at, `position`, counterlock, id INTO p_time, p_em, c_lock, acc_id FROM tbl_employees WHERE email = p_username;
			
			IF c_lock >= 3 THEN
				IF TIMESTAMPDIFF(MINUTE, p_time, NOW()) > 5 THEN
					UPDATE tbl_employees SET counterlock = 0, updated_at = NOW() WHERE email = p_username;
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress, 'unlocked' FROM tbl_employees WHERE email = p_username;
					SET ret = 3;
					SELECT ret;
				ELSE
					INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress 'locked' FROM tbl_employees WHERE email = p_username;
					SET ret = 2;
					SELECT ret;
				END IF;
			ELSE
				UPDATE admin SET counterlock = 0, updated_at = NOW() WHERE username = p_username;
				INSERT INTO tbl_loginlog (acc_id, whois, browser, ip_address, login_status) SELECT id, p_em, p_browser, p_ipaddress, 'success' FROM tbl_employees WHERE email = p_username;
				INSERT INTO access_token (user_id,whois,token) VALUE (acc_id,p_acc,p_token);
				
				SET ret = 1;
				SELECT *, ret FROM admin WHERE username = p_username;
			END IF;
        END IF;
        
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchEmployees`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT * FROM tbl_employees ORDER BY created_at DESC;
		ELSE
			SELECT * FROM tbl_employees 
				WHERE 
					`id` LIKE CONCAT('%', search_term, '%') OR
					`firstname` LIKE CONCAT('%', search_term, '%') OR
					`lastname` LIKE CONCAT('%', search_term, '%') OR
					`number` LIKE CONCAT('%', search_term, '%') OR
					`address` LIKE CONCAT('%', search_term, '%') OR
					`email` LIKE CONCAT('%', search_term, '%') OR
					`position` LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		UPDATE tbl_employees SET status = 'deleted' WHERE id = p_id;
        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchLoginLogs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchLoginLogs`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT acc_id, whois, browser, ip_address, login_status, DATE_FORMAT(loggedin_at, '%M %d, %Y') as formatted_date FROM tbl_loginlog ORDER BY loggedin_at DESC;
		ELSE
			SELECT acc_id, whois, browser, ip_address, login_status, DATE_FORMAT(loggedin_at, '%M %d, %Y') as formatted_date FROM tbl_loginlog 
				WHERE
					id LIKE CONCAT('%', search_term, '%') OR
					acc_id LIKE CONCAT('%', search_term, '%') OR
					whois LIKE CONCAT('%', search_term, '%') OR
					browser LIKE CONCAT('%', search_term, '%') OR
					ip_address LIKE CONCAT('%', search_term, '%') OR
					login_status LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		UPDATE tbl_loginlog SET `status` = 'deleted' WHERE id = p_id;
        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchMembers`(
	IN search_term VARCHAR(255),
    IN p_id int
)
BEGIN
	DECLARE rand_id INT;
    DECLARE ret int;
    IF p_id = 0 THEN
		IF search_term = '0' THEN
			SELECT * FROM tbl_members ORDER BY member_at DESC;
		ELSE
			SELECT * FROM tbl_members
				WHERE 
					id LIKE CONCAT('%', search_term, '%') OR
					firstname LIKE CONCAT('%', search_term, '%') OR
					middlename LIKE CONCAT('%', search_term, '%') OR
					lastname LIKE CONCAT('%', search_term, '%') OR
					number LIKE CONCAT('%', search_term, '%') OR
					address LIKE CONCAT('%', search_term, '%') OR
					member_at LIKE CONCAT('%', search_term, '%') OR
					beneficiary LIKE CONCAT('%', search_term, '%') OR
					business_work LIKE CONCAT('%', search_term, '%');
		END IF;
    ELSE
		DELETE tbl_members, tbl_loantransactions, tbl_loans, tbl_loanrequests, tbl_pettycash, tbl_savings, tbl_loginlog
		FROM tbl_members
			LEFT JOIN tbl_loantransactions ON tbl_members.id = tbl_loantransactions.member_id
			LEFT JOIN tbl_loans ON tbl_members.id = tbl_loans.member_id
			LEFT JOIN tbl_loanrequests ON tbl_members.id = tbl_loanrequests.member_id
			LEFT JOIN tbl_pettycash ON tbl_members.id = tbl_pettycash.member_id
			LEFT JOIN tbl_savings ON tbl_members.id = tbl_savings.member_id
			LEFT JOIN tbl_loginlog ON tbl_members.id = tbl_loginlog.acc_id
			WHERE tbl_members.id = p_id;

        SET ret = 1;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fetchTransactions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchTransactions`(
	IN p_status VARCHAR(45),
    IN p_id int
)
BEGIN
	IF p_id = 0 THEN
		IF p_status = 'pending' THEN
			SELECT tm.id,  DATE_FORMAT(lt.date_pay, '%M %d, %Y') as formatted_date, lt.balance_pay, tl.status AS loan_status, lt.status_pay, lt.debit, tm.lastname, tm.firstname, lr.amount, lr.loanterm FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status;
		END IF;
		IF p_status = 'accept' THEN
			SELECT tm.id, DATE_FORMAT(lt.date_pay, '%M %d, %Y') as formatted_date, lt.balance_pay, tl.status AS loan_status,lt.status_pay, lt.debit, tm.lastname, tm.firstname, lr.amount, lr.loanterm FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status;
		END IF;
    ELSE
		IF p_status = 'pending' THEN
			SELECT tl.id, lt.status_pay, DATE_FORMAT(tl.date_accept, '%M %d, %Y') as formatted_date, lt.debit, lt.balance_pay, tl.status AS loan_status, lr.id, lr.amount, lr.loanterm, lr.purpose, lr.modepayment, lr.repaymentsched, tm.firstname, tm.lastname FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status AND tl.member_id = p_id;
		END IF;
        
		IF p_status = 'accept' THEN
			SELECT tl.id, lt.status_pay, DATE_FORMAT(tl.date_accept, '%M %d, %Y') as formatted_date, lt.debit, lt.balance_pay, tl.status AS loan_status,lr.id, lr.amount, lr.loanterm, lr.purpose, lr.modepayment, lr.repaymentsched, tm.firstname, tm.lastname FROM tbl_loans AS tl LEFT JOIN tbl_loanrequests AS lr ON lr.member_id = tl.member_id LEFT JOIN tbl_members AS tm ON tl.member_id = tm.id LEFT JOIN tbl_loantransactions AS lt ON tl.member_id = lt.member_id WHERE tl.status = p_status AND tl.member_id = p_id;
		END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getAdminData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getAdminData`(
	IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret int;
    DECLARE m_id int;
    
    IF EXISTS(SELECT * FROM access_token WHERE token = p_token) THEN
		SELECT user_id INTO m_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
        SET ret = 1;
        SELECT *, ret FROM tbl_members WHERE id = m_id;
    ELSE
		SET ret = 2;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getAdminList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getAdminList`(
	IN p_search VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
	DECLARE a_id int;
    
	SELECT user_id INTO a_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
    
	IF p_search <> '' THEN
		SELECT * FROM admin 
			WHERE
				firstname LIKE CONCAT('%',p_search,'%') OR
				lastname LIKE CONCAT('%',p_search,'%') OR
				email LIKE CONCAT('%',p_search,'%') OR
				username LIKE CONCAT('%',p_search,'%');
    ELSE
		SELECT *, DATE_FORMAT(created_at, '%M %d, %Y') as formatted_date FROM admin WHERE id != a_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getComakerFullname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getComakerFullname`(
	IN p_id int,
    IN m_id int
)
BEGIN
	
	UPDATE tbl_loanrequests SET status = 'read' WHERE member_id = m_id ORDER BY request_date DESC LIMIT 1;
	SELECT tm.firstname AS cofname, tm.middlename AS comname, tm.lastname AS colname FROM tbl_members AS tm WHERE tm.id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getLoans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getLoans`(
	IN p_search VARCHAR(255),
    IN p_id int
)
BEGIN
	IF p_id <> 0 THEN
		SELECT * FROM getloansview WHERE id = p_id;
    END IF;
    
    IF p_search <> '' THEN
		SELECT * FROM getloansview
			WHERE partial_pay LIKE CONCAT('%', p_search ,'%') OR
				loan_amount LIKE CONCAT('%', p_search ,'%') OR
				description LIKE CONCAT('%', p_search ,'%') OR
				firstname LIKE CONCAT('%', p_search ,'%') OR
				middlename LIKE CONCAT('%', p_search ,'%') OR
				lastname LIKE CONCAT('%', p_search ,'%') OR
				loanterm LIKE CONCAT('%', p_search ,'%') OR
				purpose LIKE CONCAT('%', p_search ,'%') OR
				modepayment LIKE CONCAT('%', p_search ,'%') OR
				repaymentsched LIKE CONCAT('%', p_search ,'%') OR
				formatted_date LIKE CONCAT('%', p_search ,'%');
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getMemberData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getMemberData`(
	IN p_token VARCHAR(255)
)
BEGIN
    DECLARE ret int;
    DECLARE m_id int;
    DECLARE tl_status VARCHAR(25);
    DECLARE p_balance int;
    DECLARE m_pass VARCHAR(255);
    
    IF EXISTS(SELECT * FROM access_token WHERE token = p_token) THEN
		SELECT user_id INTO m_id FROM access_token WHERE token = p_token ORDER BY token_added DESC LIMIT 1;
        SELECT tl.status INTO tl_status FROM tbl_loans AS tl WHERE tl.member_id = m_id;
        SET ret = 1;
        SELECT tm.id, tm.firstname, tm.middlename, tm.lastname, tm.gender, tm.number, tm.birthdate, tm.email_add, tm.civil_status, tm.address, tm.member_at, tm.beneficiary, tm.business_work, tl.status, SUM(pc.balance) AS pettycash_bal 
			FROM tbl_members AS tm 
			LEFT JOIN tbl_loans AS tl ON tl.member_id = tm.id 
			LEFT JOIN tbl_pettycash AS pc ON tm.id = pc.member_id 
			WHERE tm.id = m_id
            GROUP BY tm.id, tl.status;
    ELSE
		SET ret = 2;
        SELECT ret;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getMembersSavings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getMembersSavings`(
	IN search VARCHAR(255)
)
BEGIN
	IF search <> '' THEN
		SELECT ts.amount, ts.member_id, ts.withdraw, ts.deposit, DATE_FORMAT(ts.saved_at, '%M %d, %Y') as formatted_date, CONCAT(tm.lastname,', ', tm.firstname, ' ', tm.middlename) AS fullname FROM tbl_savings AS ts LEFT JOIN tbl_members AS tm ON ts.member_id = tm.id ORDER BY saved_at DESC;
    ELSE
		SELECT * FROM tbl_savings
			WHERE 
				member_id LIKE CONCAT('%',search,'%') OR
				amount LIKE CONCAT('%',search,'%') OR
				withdraw LIKE CONCAT('%',search,'%') OR
				deposit LIKE CONCAT('%',search,'%');
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPettyCash` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getPettyCash`(
	IN p_id int,
    IN p_search VARCHAR(255)
)
BEGIN
	IF p_id <> 0 THEN
		SELECT tp.id,tp.balance,tp.description,tm.firstname,tm.middlename,tm.lastname FROM tbl_pettycash AS tp LEFT JOIN tbl_members AS tm ON tp.member_id = tm.id WHERE tp.member_id = p_id;
    ELSE
		IF p_search <> '' THEN
			SELECT * FROM tbl_pettycash 
				WHERE
					`id` LIKE CONCAT('%',p_search,'%') OR
					`member_id` LIKE CONCAT('%',p_search,'%') OR
					`balance` LIKE CONCAT('%',p_search,'%') OR
					`description` LIKE CONCAT('%',p_search,'%');
        ELSE
			SELECT tp.id,tp.balance,tp.description,tm.firstname,tm.middlename,tm.lastname FROM tbl_pettycash AS tp LEFT JOIN tbl_members AS tm ON tp.member_id = tm.id ORDER BY add_at DESC;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getUnreadCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getUnreadCount`(
	IN p_status VARCHAR(255)
)
BEGIN
	IF p_status = '' THEN
		SELECT tl.description,tl.position,tl.amount,tl.loanterm,tl.request_date,tl.purpose,tl.modepayment,tl.repaymentsched,tl.yearstayed,tl.tinno,tl.fbacc,tl.spousename,tl.nodependents,tl.address AS work_address,tl.emstatus,tl.salaryincome,tl.otherincome,tl.noofyears,tl.comaker_id,tl.other_institution,tm.id,tm.firstname,tm.middlename,tm.lastname,tm.gender,tm.number,tm.birthdate,tm.email_add,tm.civil_status,tm.address AS present_address,tm.password,tm.member_at,tm.beneficiary,tm.business_work FROM tbl_loanrequests AS tl LEFT JOIN tbl_members AS tm ON tm.id = tl.member_id ORDER BY tl.request_date DESC;
	END IF;
    IF p_status = 'unread' THEN
		SELECT COUNT(*) AS unread_count FROM tbl_loanrequests WHERE status = 'unread';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_loanRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_loanRequest`(
	IN p_id int,
    IN p_position VARCHAR(255),
    IN p_amount BIGINT,
    IN p_purpose VARCHAR(255),
    IN p_loanterm VARCHAR(255),
    IN p_modepayment VARCHAR(255),
    IN p_repaymentsched VARCHAR(255),
    IN p_yearstayed INT,
    IN p_tinno VARCHAR(255),
    IN p_fbacc VARCHAR(255),
    IN p_spousename VARCHAR(255),
    IN p_nodependents int,
    IN p_address VARCHAR(255),
    IN p_emstatus VARCHAR(255),
    IN p_salaryincome BIGINT,
    IN p_otherincome BIGINT,
    IN p_noofyears INT,
    IN p_colname VARCHAR(255),
    IN p_cofname VARCHAR(255),
    IN p_comname VARCHAR(255),
    IN p_other VARCHAR(45),
    IN p_desc VARCHAR(255)
)
BEGIN
    DECLARE co_id int;
    DECLARE st_msg VARCHAR(255);
    DECLARE st_code int;
    DECLARE lr_id int;
    DECLARE tl_debit int;
    DECLARE tl_id int;
    DECLARE tl_status VARCHAR(15);
    DECLARE l_stats VARCHAR(25);
	
	SELECT id INTO co_id FROM tbl_members WHERE firstname = p_cofname AND middlename = p_comname AND lastname = p_colname;
    SELECT debit INTO tl_debit FROM tbl_loantransactions WHERE member_id = p_id ORDER BY date_pay DESC LIMIT 1;
    SELECT tl.status INTO l_stats FROM tbl_loans AS tl WHERE tl.member_id = p_id ORDER BY date_accept DESC LIMIT 1;
    
	IF p_desc = 'regular loan' THEN
    
		IF co_id IS NOT NULL THEN
			
            IF l_stats = 'pending' THEN
				SET st_code = 401, st_msg = "Request In Queue";
				SELECT st_code, st_msg;
            ELSE
				IF tl_debit = 0 THEN
				
					SET st_code = 401, st_msg = "Sorry we cannot process your loan request because you still have balance to pay";
					SELECT st_code, st_msg;
				
				ELSE
					INSERT INTO tbl_loanrequests
						(`member_id`,`position`,`amount`,`loanterm`,`purpose`,`modepayment`,`repaymentsched`,`yearstayed`,`tinno`,`fbacc`,`spousename`,`nodependents`,`address`,`emstatus`,`salaryincome`,`otherincome`,`noofyears`,`comaker_id`,`other_institution`,`description`)
					VALUES
						(p_id,p_position,p_amount,p_loanterm,p_purpose,p_modepayment,p_repaymentsched,p_yearstayed,p_tinno,p_fbacc,p_spousename,p_nodependents,p_address,p_emstatus,p_salaryincome,p_otherincome,p_noofyears,co_id,p_other,p_desc);
					
					
					SET st_code = 200, st_msg = "Request sucessful";
					SELECT st_code, st_msg;
				END IF;
            END IF;
            
        ELSE
			SET st_code = 404, st_msg = "Co-maker is not registered";
			SELECT st_code, st_msg;
        END IF;
        
    ELSE
		IF co_id IS NOT NULL THEN
			
            IF l_stats = 'pending' THEN
				SET st_code = 401, st_msg = "Request In Queue";
				SELECT st_code, st_msg;
            ELSE
				IF tl_debit = 0 THEN
				
					SET st_code = 401, st_msg = "Sorry we cannot process your loan request because you still have balance to pay";
					SELECT st_code, st_msg;
				
				ELSE
					INSERT INTO tbl_loanrequests
						(`member_id`,`position`,`amount`,`loanterm`,`purpose`,`modepayment`,`repaymentsched`,`yearstayed`,`tinno`,`fbacc`,`spousename`,`address`,`emstatus`,`salaryincome`,`otherincome`,`noofyears`,`comaker_id`,`other_institution`,`description`)
					VALUES
						(p_id,p_position,p_amount,p_loanterm,p_purpose,p_modepayment,p_repaymentsched,p_yearstayed,p_tinno,p_fbacc,p_spousename,p_address,p_emstatus,p_salaryincome,p_otherincome,p_noofyears,co_id,p_other,p_desc);
					
					
					SET st_code = 200, st_msg = "Request sucessful";
					SELECT st_code, st_msg;
				END IF;
            END IF;
            
        ELSE
			SET st_code = 404, st_msg = "Co-maker is not registered";
			SELECT st_code, st_msg;
        END IF;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_payBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_payBalance`(
	IN p_lname VARCHAR(255),
	IN p_fname VARCHAR(255),
    IN p_amount BIGINT,
    IN p_desc VARCHAR(255)
)
BEGIN
	DECLARE m_id int;
	DECLARE lt_id int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
    DECLARE n_amount int;
    DECLARE tl_debit int;
    DECLARE tl_id int;
    DECLARE l_id int;
    
    IF p_lname <> '' AND p_fname <> '' AND p_amount <> 0 AND p_desc <> '' THEN
		SELECT id INTO m_id FROM tbl_members WHERE firstname = p_fname AND lastname = p_lname;
		SELECT tblt.id INTO lt_id FROM tbl_loantransactions AS tblt WHERE tblt.member_id ORDER BY tblt.date_pay DESC LIMIT 1;
		SELECT debit INTO tl_debit FROM tbl_loantransactions WHERE id = lt_id;
        
        IF p_desc = 'regular loan' THEN
			IF p_amount > tl_debit THEN
				SET st_code = 401;
				SET st_msg = 'Deposit exceeds the balance to pay';
				SELECT st_code, st_msg;
			ELSE
				SET n_amount = tl_debit - p_amount;
				INSERT tbl_loantransactions (member_id,loan_id,debit,balance_pay,date_pay) VALUES (m_id,lt_id,n_amount,p_amount,NOW());
				SELECT id INTO tl_id FROM tbl_loantransactions WHERE id = lt_id ORDER BY date_pay DESC LIMIT 1;
				
				IF n_amount = 0 THEN
					SELECT tbl.id INTO l_id FROM tbl_loans AS tbl WHERE member_id = m_id ORDER BY date_accept DESC LIMIT 1;
					UPDATE tbl_loantransactions SET status_pay = 'payed' WHERE id = tl_id;
                    UPDATE tbl_loans SET description = 'payed' WHERE id = l_id;
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit and loan payed';
					SELECT st_code, st_msg;
				ELSE
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit';
					SELECT st_code, st_msg;
				END IF;
				
			END IF;
        END IF;
        IF p_desc = 'petty cash loan' THEN
			IF p_amount > tl_debit THEN
				SET st_code = 401;
				SET st_msg = 'Deposit exceeds the balance to pay';
				SELECT st_code, st_msg;
			ELSE
				SET n_amount = tl_debit - p_amount;
				INSERT tbl_loantransactions (member_id,loan_id,debit,balance_pay,date_pay) VALUES (m_id,lt_id,n_amount,p_amount,NOW());
				SELECT id INTO tl_id FROM tbl_loantransactions WHERE id = lt_id ORDER BY date_pay DESC LIMIT 1;
				UPDATE tbl_pettycash AS pc SET pc.balance = pc.balance - p_amount WHERE pc.member_id = m_id;
				
				IF n_amount = 0 THEN
					SELECT tbl.id INTO l_id FROM tbl_loans AS tbl WHERE member_id = m_id ORDER BY date_accept DESC LIMIT 1;
					UPDATE tbl_loantransactions SET status_pay = 'payed' WHERE id = tl_id;
                    UPDATE tbl_loans SET description = 'payed' WHERE id = l_id;
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit and loan payed';
					SELECT st_code, st_msg;
				ELSE
					SET st_code = 200;
					SET st_msg = 'Balance has been deposit';
					SELECT st_code, st_msg;
				END IF;
				
			END IF;
        END IF;
        
    ELSE
		SET st_code = 401;
        SET st_msg = 'Please provide some info';
        SELECT st_code, st_msg;
	END IF;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_resetPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_resetPassword`(
	IN p_email VARCHAR(255),
    IN p_newpass VARCHAR(255),
    IN p_token VARCHAR(255)
)
BEGIN
	DECLARE m_id int;
	DECLARE st_code int;
    DECLARE st_msg VARCHAR(45);
    
    SELECT id INTO m_id FROM tbl_members WHERE email_add = p_email;
    
    IF p_newpass <> '' THEN
		IF EXISTS(SELECT id FROM tbl_requestreset WHERE reset_token = p_token) THEN
			UPDATE tbl_members SET password = p_newpass, updated_at = NOW() WHERE id = m_id;
			SET st_code = 200, st_msg = 'Password reset successfully you can login now';
        ELSE
			SET st_code = 404, st_msg = 'Not found token';
        END IF;
		
    ELSE
		IF m_id IS NULL THEN
			SET st_code = 400, st_msg = 'Email not found';
		ELSE
			IF p_token <> '' THEN
				INSERT INTO tbl_requestreset (`email`,`reset_token`) VALUES (p_email,p_token);
				SET st_code = 200, st_msg = 'Check email for reset password';
			END IF;
		END IF;
    END IF;
    
    
    SELECT st_code, st_msg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_withdrawDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_withdrawDeposit`(
	IN p_id int,
    IN p_amount BIGINT,
    IN p_desc VARCHAR(15)
)
BEGIN
	DECLARE s_amount int;
    DECLARE s_id int;
    DECLARE st_code int;
    DECLARE st_msg VARCHAR(15);
	
    SELECT amount INTO s_amount FROM tbl_savings WHERE member_id = p_id ORDER BY saved_at DESC LIMIT 1;
    
	IF p_desc = 'deposit' THEN
		INSERT INTO tbl_savings (member_id,amount,deposit) VALUES (p_id,amoung + p_amount, p_amount);
        SET st_code = 200, st_msg = "Deposit Successfully";
        SELECT st_code, st_msg;
    ELSE
		INSERT INTO tbl_savings (member_id,amount,withdraw) VALUES (p_id,amoung - p_amount, p_amount);
		SET st_code = 200, st_msg = "Withdraw Successfully";
        SELECT st_code, st_msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `testing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `testing`(
	IN p_id int,
    IN p_position VARCHAR(255),
    IN p_amount BIGINT,
    IN p_purpose VARCHAR(255),
    IN p_loanterm VARCHAR(255),
    IN p_modepayment VARCHAR(255),
    IN p_repaymentsched VARCHAR(255),
    IN p_yearstayed INT,
    IN p_tinno VARCHAR(255),
    IN p_fbacc VARCHAR(255),
    IN p_spousename VARCHAR(255),
    IN p_address VARCHAR(255),
    IN p_emstatus VARCHAR(255),
    IN p_salaryincome BIGINT,
    IN p_otherincome BIGINT,
    IN p_noofyears INT,
    IN p_colname VARCHAR(255),
    IN p_cofname VARCHAR(255),
    IN p_comname VARCHAR(255),
    IN p_other VARCHAR(45),
    IN p_desc VARCHAR(255)
)
BEGIN

	SELECT 
		CASE WHEN p_id <> '' THEN 'Not Empty' ELSE 'Empty' END AS id,
		CASE WHEN p_position <> '' THEN 'Not Empty' ELSE 'Empty' END AS position,
		CASE WHEN p_amount <> '' THEN 'Not Empty' ELSE 'Empty' END AS amount,
		CASE WHEN p_purpose <> '' THEN 'Not Empty' ELSE 'Empty' END AS purpose,
		CASE WHEN p_loanterm <> '' THEN 'Not Empty' ELSE 'Empty' END AS loanterm,
		CASE WHEN p_modepayment <> '' THEN 'Not Empty' ELSE 'Empty' END AS modepayment,
		CASE WHEN p_repaymentsched <> '' THEN 'Not Empty' ELSE 'Empty' END AS repaymentsched,
		CASE WHEN p_yearstayed <> '' THEN 'Not Empty' ELSE 'Empty' END AS yearstayed,
		CASE WHEN p_tinno <> '' THEN 'Not Empty' ELSE 'Empty' END AS tinno,
		CASE WHEN p_fbacc <> '' THEN 'Not Empty' ELSE 'Empty' END AS fbacc,
		CASE WHEN p_spousename <> '' THEN 'Not Empty' ELSE 'Empty' END AS spousename,
		CASE WHEN p_address <> '' THEN 'Not Empty' ELSE 'Empty' END AS address,
		CASE WHEN p_emstatus <> '' THEN 'Not Empty' ELSE 'Empty' END AS emstatus,
		CASE WHEN p_salaryincome <> '' THEN 'Not Empty' ELSE 'Empty' END AS salaryincome,
		CASE WHEN p_otherincome <> '' THEN 'Not Empty' ELSE 'Empty' END AS otherincome,
		CASE WHEN p_noofyears <> '' THEN 'Not Empty' ELSE 'Empty' END AS noofyears,
		CASE WHEN p_colname <> '' THEN 'Not Empty' ELSE 'Empty' END AS colname,
		CASE WHEN p_cofname <> '' THEN 'Not Empty' ELSE 'Empty' END AS cofname,
		CASE WHEN p_comname <> '' THEN 'Not Empty' ELSE 'Empty' END AS comname,
		CASE WHEN p_other <> '' THEN 'Not Empty' ELSE 'Empty' END AS other,
		CASE WHEN p_desc <> '' THEN 'Not Empty' ELSE 'Empty' END AS description;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-13 15:01:16
