/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : auth_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-04-08 08:30:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `api_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `api_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('1', 'Samsung', 'wWgmbXmvbRWISBSUmDOIwzzcQV6uxK8sv0creQnGp8llYHUYBDxB3tRIHYTS', 'mobile', 'active', '2020-03-20 06:42:02', '2020-03-27 00:14:49');
INSERT INTO `api` VALUES ('2', 'Cherry Mobile', 'SxV2fvCzvRlWEBA6yCx7BgWTJRPIASXhwdBb9WLCR16XU6IEsXCQ9sGITfgQ', 'third-party', 'active', '2020-03-20 09:03:09', '2020-03-27 00:15:20');
INSERT INTO `api` VALUES ('4', 'Samsung', 'P61HcS8UMQf2TnwBZvFJSgUKmAp3MGrI087BSD6M0KFVthxvCKOfEGQIcEBd', 'mobile', 'active', '2020-03-27 06:55:11', '2020-03-27 06:55:11');
INSERT INTO `api` VALUES ('5', '172', 'sprfMahi5XrCfxS56sjmlktsrlKW2GzAVBQ0scsK6Qys6pq8yxpDFAZYqRKq', 'third-party', 'inactive', '2020-04-03 07:51:40', '2020-04-03 07:51:40');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES ('1', 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\ProcessFeedback\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessFeedback\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ProcessFeedback\\\":10:{s:27:\\\"\\u0000App\\\\Jobs\\\\ProcessFeedback\\u0000a\\\";s:11:\\\"09489571604\\\";s:27:\\\"\\u0000App\\\\Jobs\\\\ProcessFeedback\\u0000b\\\";s:16:\\\"TE 16-11588 2018\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined offset: 3 in C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php:44\nStack trace:\n#0 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php(44): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined offse...\', \'C:\\\\Users\\\\mavale...\', 44, Array)\n#1 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php(5): process_feedback(\'TE 16-11588 201...\')\n#2 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Jobs\\ProcessFeedback.php(35): send_feedback(\'09489571604\', \'TE 16-11588 201...\')\n#3 [internal function]: App\\Jobs\\ProcessFeedback->handle()\n#4 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#5 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#10 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#11 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#12 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessFeedback), false)\n#14 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#15 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#16 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessFeedback))\n#18 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#26 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#27 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#28 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#31 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(1012): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2020-03-27 06:37:11');
INSERT INTO `failed_jobs` VALUES ('2', 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\ProcessFeedback\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessFeedback\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ProcessFeedback\\\":10:{s:27:\\\"\\u0000App\\\\Jobs\\\\ProcessFeedback\\u0000a\\\";s:11:\\\"09489571604\\\";s:27:\\\"\\u0000App\\\\Jobs\\\\ProcessFeedback\\u0000b\\\";s:16:\\\"TE 16-11588 2018\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined offset: 3 in C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php:44\nStack trace:\n#0 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php(44): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined offse...\', \'C:\\\\Users\\\\mavale...\', 44, Array)\n#1 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Utilities\\Feedback.php(5): process_feedback(\'TE 16-11588 201...\')\n#2 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\app\\Jobs\\ProcessFeedback.php(35): send_feedback(\'09489571604\', \'TE 16-11588 201...\')\n#3 [internal function]: App\\Jobs\\ProcessFeedback->handle()\n#4 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#5 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#6 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#7 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#8 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#9 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#10 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#11 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#12 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessFeedback), false)\n#14 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#15 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessFeedback))\n#16 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#17 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessFeedback))\n#18 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#19 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#20 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#24 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#25 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#26 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#27 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#28 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(201): Illuminate\\Container\\Container->call(Array)\n#31 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(188): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(1012): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\Users\\mavaleroso\\Documents\\Marwen_docs\\projects\\laravel-auth\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2020-03-27 06:39:29');

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', 'Test', '+639617581030', 'Hello my name is Marwen', 'Received', '2020-03-27 09:34:49');
INSERT INTO `messages` VALUES ('2', 'Test', '+639076834137', 'Invalid Inquiry Code\nYou may use the ff. codes: \n1. For All Your TE: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)\n2. For TE by Month: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)<space>Month(e.g. JAN)\n3. For Salary: Text SALARY<space>Employee ID Number\n4. For PERA: Text PERA<space>Employee ID Number\n5. For RATA: Text RATA<space>Employee ID Number\n6. For CIU Service Provider: Text SP<space>Tracking Number\n7. For Procurement Service Provider: Text PO<space>Purchase Order Number', 'Received', '2020-03-27 11:47:31');
INSERT INTO `messages` VALUES ('3', 'Test', '+639076834137', 'Invalid Inquiry Code\nYou may use the ff. codes: \n1. For All Your TE: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)\n2. For TE by Month: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)<space>Month(e.g. JAN)\n3. For Salary: Text SALARY<space>Employee ID Number\n4. For PERA: Text PERA<space>Employee ID Number\n5. For RATA: Text RATA<space>Employee ID Number\n6. For CIU Service Provider: Text SP<space>Tracking Number\n7. For Procurement Service Provider: Text PO<space>Purchase Order Number', 'Received', '2020-03-27 11:47:23');
INSERT INTO `messages` VALUES ('4', 'Test', '+639089818597', 'SALARY 16-11588', 'Received', '2020-03-27 02:57:59');
INSERT INTO `messages` VALUES ('5', 'Test', '+639089818597', 'SALARY 16-11588', 'Received', '2020-03-27 02:57:59');
INSERT INTO `messages` VALUES ('6', 'Test', '+639089818597', 'SALARY 16-11588', 'Received', '2020-03-27 02:58:28');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_08_19_000000_create_failed_jobs_table', '2');
INSERT INTO `migrations` VALUES ('13', '2020_02_11_061833_create_messages_table', '2');
INSERT INTO `migrations` VALUES ('14', '2020_02_12_082544_api', '2');
INSERT INTO `migrations` VALUES ('15', '2020_03_25_063549_create_jobs_table', '3');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Marwen Valeroso', 'mavaleroso', '$2y$10$KbRdDdOEZk0cslsFQNsTwe3CLC7TPIC9.mpzxxUrBUYkLRxnionC.', 'jPZ76EBH62BsBCxhJYEWpqJhGiQYqwMg5t9QBOqbNw8YqZ6Py3ST02gV515r', '2020-02-28 02:36:25', '2020-02-28 02:36:25');
