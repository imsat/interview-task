-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table laravel-api2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.migrations: ~11 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2021_06_14_060754_create_profiles_table', 1),
	(10, '2021_06_14_060812_create_roles_table', 1),
	(11, '2021_06_14_061342_create_role_user_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.oauth_access_tokens: ~23 rows (approximately)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('06b6764e15334b8c73c900b8621c964f89643d6f6fb355b93befbc55e753d6777bc4ca1358588a49', 1, 2, NULL, '[]', 0, '2021-06-14 09:16:03', '2021-06-14 09:16:03', '2021-06-29 09:16:03'),
	('0bdd4e8cc1263997e642499821fb301c2b3534320b95f78198c7706e355c7ec88c51c3802cb9e6d5', 52, 1, 'name', '[]', 0, '2021-06-14 08:19:54', '2021-06-14 08:19:54', '2022-06-14 08:19:54'),
	('0e41fb1b7b9c1d9c5523872eb62629a24f86c3d387d25880323cde4937b6c94ecd9dd24b33c03a03', 1, 2, NULL, '[]', 0, '2021-06-14 07:39:51', '2021-06-14 07:39:51', '2021-06-29 07:39:51'),
	('25c60facee6d88645c83c7226ba6fddec1a73de8153eed0398f18cfb99585af1e93923540f119831', 56, 2, NULL, '[]', 0, '2021-06-14 08:30:46', '2021-06-14 08:30:46', '2021-06-29 08:30:46'),
	('374a0f74dc380899f8d3c2f574522d7e436b7de7c19dd8f22148106534ece90d433342939114c652', 58, 2, NULL, '[]', 0, '2021-06-14 09:03:06', '2021-06-14 09:03:06', '2021-06-29 09:03:06'),
	('48cbe22e4ae52a371079c85570d2c2ec0a35750a26576b38d27176dc443c3916f8e15a0688807464', 59, 2, NULL, '[]', 0, '2021-06-14 09:20:24', '2021-06-14 09:20:24', '2021-06-29 09:20:24'),
	('6ea2b6b54657815eb27007d494e2f0809634811e89cee4ca75107a24500d6ef935473412c7f3a32d', 1, 2, NULL, '[]', 0, '2021-06-14 09:20:14', '2021-06-14 09:20:14', '2021-06-29 09:20:14'),
	('71a9d059111825a5cef677fe653ecbdb2001ac6ef5aee24c5ed9c231e30c583115ef13fb492dd080', 1, 2, NULL, '[]', 0, '2021-06-14 07:40:29', '2021-06-14 07:40:29', '2021-06-29 07:40:29'),
	('7aad9ced9fe3c6dd8fb5df9e2e537d9a058cbb3857cc3b83157c110a1e54fb0daee1a7851b09354e', 1, 2, NULL, '[]', 0, '2021-06-14 07:50:02', '2021-06-14 07:50:02', '2021-06-29 07:50:02'),
	('7b159c115d5d273e8953a8cab5b177b3fe4dda309781bd4615903df559e5dec63767f30b13660eda', 1, 2, NULL, '[]', 0, '2021-06-14 09:16:10', '2021-06-14 09:16:10', '2021-06-29 09:16:10'),
	('7b85696b941e8049122451d8dfe189e7b97045ec1baca9cbb741203547990b81a7ee9ad892bc6457', 1, 2, NULL, '[]', 0, '2021-06-14 09:22:49', '2021-06-14 09:22:49', '2021-06-29 09:22:49'),
	('9587c80be12d5dc713e676d65f1fdd3e0766c9a1d216693db9b19810f6b8f0683c2d55eeccbd9b35', 1, 2, NULL, '[]', 0, '2021-06-14 07:58:38', '2021-06-14 07:58:38', '2021-06-29 07:58:38'),
	('97043dbb7ed654c1f1f76070c003ab8c924fa671ede2c5f5e024de04c3a258278eeec20832506dc4', 58, 2, NULL, '[]', 0, '2021-06-14 09:04:26', '2021-06-14 09:04:26', '2021-06-29 09:04:26'),
	('a6454d0e409acd2e502b26803b4b8643f3520d9f867d4d0f9557a10fced9c574fba2e6d5fc9b7005', 1, 2, NULL, '[]', 0, '2021-06-14 07:39:42', '2021-06-14 07:39:42', '2021-06-29 07:39:42'),
	('abef646f4fd57ea6231072ba93bf4095a0e45366d5b07684de6b30957436d6d93c3945492823f3bf', 57, 2, NULL, '[]', 0, '2021-06-14 09:01:51', '2021-06-14 09:01:51', '2021-06-29 09:01:51'),
	('b02b258ad601377f621ac3b6c88ba9bd8761bc8d5e5c69fa59cc90c5b32197f532c635bec607e35b', 53, 1, 'name', '[]', 0, '2021-06-14 08:20:40', '2021-06-14 08:20:40', '2022-06-14 08:20:40'),
	('c99ece920217d74be47673a4562f01e3c87db6bd47b8e35a79e37fde46b41a466171ad4dcd848791', 1, 2, NULL, '[]', 0, '2021-06-14 09:19:43', '2021-06-14 09:19:43', '2021-06-29 09:19:43'),
	('e53cfbf7f7880644170c55b0c9baeea01f27ccfebe638ff84a2bbb77071084fc14c82e761f31a864', 1, 2, NULL, '[]', 0, '2021-06-14 07:51:26', '2021-06-14 07:51:26', '2021-06-29 07:51:26'),
	('ebec563fecd4570e8786b34f3371c9659d5a8422e8cf871fbc46131b32dffc22ff8ffc5017567c48', 1, 2, NULL, '[]', 0, '2021-06-14 07:50:46', '2021-06-14 07:50:46', '2021-06-29 07:50:46'),
	('f81aa563f3a4bb0edba49e2210e9f76100f758642a543ac4f49bd83327790e71b929168d386c344e', 1, 2, NULL, '[]', 0, '2021-06-14 09:30:01', '2021-06-14 09:30:01', '2021-06-29 09:30:01'),
	('f938f975f4f16235df6353d23b3b3fb2843b7800ffe4a3f1eca5981631a00c86df8426100765ad8c', 1, 2, NULL, '[]', 0, '2021-06-14 07:56:15', '2021-06-14 07:56:15', '2021-06-29 07:56:15'),
	('f941d0beb410089a676f12f39a46a52dc91f79e592a190b2649b89678f6c02df95380ec2edd98430', 1, 2, NULL, '[]', 0, '2021-06-14 09:16:26', '2021-06-14 09:16:26', '2021-06-29 09:16:26'),
	('ff028cef75d9a251dca45f4bd7977328bd2014022e189b27012f269cb60ed9c174a879d10e709680', 1, 2, NULL, '[]', 0, '2021-06-14 07:49:01', '2021-06-14 07:49:01', '2021-06-29 07:49:01');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.oauth_auth_codes: ~0 rows (approximately)
DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.oauth_clients: ~2 rows (approximately)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'W0Kd6A2JozpNN8FoffnYpEh13zJIKqE1wNMnpxgw', NULL, 'http://localhost', 1, 0, 0, '2021-06-14 07:37:51', '2021-06-14 07:37:51'),
	(2, NULL, 'Laravel Password Grant Client', 'IRoXTFOT1ilKmRjjaVv7WIfkf1jl1LK87YFDU9Cv', 'users', 'http://localhost', 0, 1, 0, '2021-06-14 07:37:51', '2021-06-14 07:37:51');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.oauth_personal_access_clients: ~1 rows (approximately)
DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-06-14 07:37:51', '2021-06-14 07:37:51');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.oauth_refresh_tokens: ~21 rows (approximately)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('0045911c4e6694f665c94658d7274bc1c8cb7ccb71c22e7eda0e0578b15528acfb65b7e217abf5a6', '6ea2b6b54657815eb27007d494e2f0809634811e89cee4ca75107a24500d6ef935473412c7f3a32d', 0, '2021-07-14 09:20:14'),
	('07cd92580adfa2ee2e64f22d19dcb4e0ae37488129765e52a6e6356959d727a744976008d7117817', '25c60facee6d88645c83c7226ba6fddec1a73de8153eed0398f18cfb99585af1e93923540f119831', 0, '2021-07-14 08:30:46'),
	('1d19f02bb20e85119c52d973d37a86e9366bdfa0175560e453c144eb08c96b5dadb3cbd525ab7d37', 'f938f975f4f16235df6353d23b3b3fb2843b7800ffe4a3f1eca5981631a00c86df8426100765ad8c', 0, '2021-07-14 07:56:15'),
	('21e334fd0b459d970a522143b97e488181d5daf5646b734e3d0a169cb8c9c645510046946ef3e0c3', '7b159c115d5d273e8953a8cab5b177b3fe4dda309781bd4615903df559e5dec63767f30b13660eda', 0, '2021-07-14 09:16:10'),
	('288c1e243f32d9fea01ba4252317527f916e35447d4e2ad79a94ec1bafe7078bbd750a0d06ebb3cd', 'a6454d0e409acd2e502b26803b4b8643f3520d9f867d4d0f9557a10fced9c574fba2e6d5fc9b7005', 0, '2021-07-14 07:39:42'),
	('5a0f5fb80305eaa0f260ed895ada33ff7ab59719aad8c01a6a8a6a7f1cf21fc43be30b7d6a86886c', 'f941d0beb410089a676f12f39a46a52dc91f79e592a190b2649b89678f6c02df95380ec2edd98430', 0, '2021-07-14 09:16:26'),
	('5e477d66dcb5d36cef9c311efdfb669b3af667515fa39c5a94ada0cd8a4d3533b0e8bde817f9939c', '71a9d059111825a5cef677fe653ecbdb2001ac6ef5aee24c5ed9c231e30c583115ef13fb492dd080', 0, '2021-07-14 07:40:29'),
	('742441586af1716cd326ae88447e2c747fb952605c660e833332bee840f003d450d7aa952f1f4626', '7b85696b941e8049122451d8dfe189e7b97045ec1baca9cbb741203547990b81a7ee9ad892bc6457', 0, '2021-07-14 09:22:49'),
	('839e8ae7cf11bf3d3f01148c026974771eb90c5db79aba829426af35bbb6cb79f5b780d356c55be9', 'ebec563fecd4570e8786b34f3371c9659d5a8422e8cf871fbc46131b32dffc22ff8ffc5017567c48', 0, '2021-07-14 07:50:46'),
	('8b785193e3f5be5946e84809dc80d01cdab1c060ffa13fbbb03eb605a7ba8ba5f9e711f2f303ce37', 'abef646f4fd57ea6231072ba93bf4095a0e45366d5b07684de6b30957436d6d93c3945492823f3bf', 0, '2021-07-14 09:01:51'),
	('8bad8acda02f6086c817b4eef00a2c0df33760a0b78e0c87ad079f1daba21134bc34ab5507d7c048', 'ff028cef75d9a251dca45f4bd7977328bd2014022e189b27012f269cb60ed9c174a879d10e709680', 0, '2021-07-14 07:49:01'),
	('93d7f4f522cbeb80847b272e88bc422aa307ebe7b21b3c2d5bcc164f7943c5eabd949ecff9650dca', 'c99ece920217d74be47673a4562f01e3c87db6bd47b8e35a79e37fde46b41a466171ad4dcd848791', 0, '2021-07-14 09:19:43'),
	('a277a15059c1d4da6b4f1026b877a9127000a8cffc2f39dc135580aa096277ef3b118f8fcf09733b', '9587c80be12d5dc713e676d65f1fdd3e0766c9a1d216693db9b19810f6b8f0683c2d55eeccbd9b35', 0, '2021-07-14 07:58:38'),
	('ba2f8712d9896ea8ad955b1c75cbb2c4e55147573e1f1fe90b10f732931d6f54498efc130840d9ed', '7aad9ced9fe3c6dd8fb5df9e2e537d9a058cbb3857cc3b83157c110a1e54fb0daee1a7851b09354e', 0, '2021-07-14 07:50:02'),
	('c7029cf05b12a4f7f86ba9d9dec374208724a3ae66ee8b609b967870b407bdbc8d003cbbf3ee4d5f', '97043dbb7ed654c1f1f76070c003ab8c924fa671ede2c5f5e024de04c3a258278eeec20832506dc4', 0, '2021-07-14 09:04:26'),
	('c7d773717eddbb98c57f04ae53dd2f4edeb6eb3d442f5ce635692252f075786c66e2fab620d1a569', '48cbe22e4ae52a371079c85570d2c2ec0a35750a26576b38d27176dc443c3916f8e15a0688807464', 0, '2021-07-14 09:20:24'),
	('c9c5c3f447b9b1d5abd0acc8f2d8108f2c707d4ad19043d72c90a8fd39f5b6f4315860daa46348cf', '06b6764e15334b8c73c900b8621c964f89643d6f6fb355b93befbc55e753d6777bc4ca1358588a49', 0, '2021-07-14 09:16:03'),
	('cbc7c6d18b3d6c56f7cb2899de86bcf25f6cc47c27e1d654270e8f5a4c5e5b48ec903563be545735', '0e41fb1b7b9c1d9c5523872eb62629a24f86c3d387d25880323cde4937b6c94ecd9dd24b33c03a03', 0, '2021-07-14 07:39:51'),
	('d54a6b21838f312d62e6131918418ef84cfa794dab275a8d1445f8ee16d71393b00b775ca073680d', 'f81aa563f3a4bb0edba49e2210e9f76100f758642a543ac4f49bd83327790e71b929168d386c344e', 0, '2021-07-14 09:30:01'),
	('f79fed7927230b26967bc5c5472cd16e69532791948af48d4d30365ac81bc7016671898b783cff0f', '374a0f74dc380899f8d3c2f574522d7e436b7de7c19dd8f22148106534ece90d433342939114c652', 0, '2021-07-14 09:03:06'),
	('ff2126f746b0724c7408b16cf81ba975605ea58a23433cd3337d7991eaff1239340c6fe660e12406', 'e53cfbf7f7880644170c55b0c9baeea01f27ccfebe638ff84a2bbb77071084fc14c82e761f31a864', 0, '2021-07-14 07:51:26');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_foreign` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.profiles: ~55 rows (approximately)
DELETE FROM `profiles`;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `user_id`, `dob`, `gender`, `avatar`, `address`, `created_at`, `updated_at`) VALUES
	(1, 1, '1994-09-25', 1, NULL, 'Mirpur 1, Dhaka Bangladesh', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(2, 2, '2009-06-04', 2, NULL, '46277 Cremin Viaduct\nKonopelskiborough, AL 17292-4449', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(3, 3, '1980-10-06', 3, NULL, '518 Bethany Isle\nJaydenside, RI 26131', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(4, 4, '2009-01-05', 2, NULL, '5891 Vern Radial\nKeaganshire, NV 67008-2669', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(5, 5, '1996-05-23', 1, NULL, '7242 Lockman Land Suite 532\nNew Collinfurt, SC 82691', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(6, 6, '1998-11-05', 2, NULL, '445 Nolan Extension\nNiaberg, HI 84076-8416', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(7, 7, '1996-09-28', 1, NULL, '466 Jazmyne Club\nSalvatoreside, RI 09068', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(8, 8, '2009-08-09', 3, NULL, '69278 Medhurst Forge Apt. 806\nJadenton, HI 62055', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(9, 9, '1974-12-27', 2, NULL, '62089 Ward Pass Apt. 430\nLake Kaitlyn, TN 68698-7100', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(10, 10, '1991-08-09', 2, NULL, '2101 Berge Gardens\nPort Wardbury, PA 77272-5261', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(11, 11, '1985-09-16', 2, NULL, '840 Lourdes Villages Apt. 671\nAudreyview, VT 08209-1079', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(12, 12, '1974-09-27', 1, NULL, '26807 Bayer Stream\nWest Karliport, WV 96715-2212', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(13, 13, '2001-07-08', 2, NULL, '73831 Little Lights\nPort Faustoport, KS 92149', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(14, 14, '1997-09-26', 3, NULL, '64008 Tyrel Lights\nLake Mitchel, KY 60589-4591', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(15, 15, '1980-05-01', 3, NULL, '7921 Austyn Isle Suite 084\nEast Camillaland, NM 14776', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(16, 16, '1985-02-08', 1, NULL, '534 Zboncak Manor\nWest Morrisshire, CA 91007', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(17, 17, '1970-01-28', 3, NULL, '493 Juston Parkway\nWest Pattiemouth, MS 73753', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(18, 18, '2021-06-04', 3, NULL, '79564 Corkery Ranch\nStiedemannberg, MS 61121', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(19, 19, '2005-03-04', 3, NULL, '77056 Kirlin Extension Suite 353\nPort Isac, VT 74188-9923', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(20, 20, '1998-10-13', 2, NULL, '67587 Casimir Ports Suite 956\nMavishaven, CT 10655-4554', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(21, 21, '1995-04-29', 1, NULL, '54093 Victoria Valley Apt. 653\nNew Felipe, SC 28051-8328', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(22, 22, '2003-10-17', 3, NULL, '81838 Elinore Fall Suite 540\nNew Gerald, SD 50761-2940', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(23, 23, '1988-01-07', 1, NULL, '808 Devon Spur\nGorczanyshire, RI 32642-1866', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(24, 24, '1985-03-01', 2, NULL, '84622 Rocky Route Apt. 952\nLake Makenziebury, VA 42812', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(25, 25, '2000-12-25', 2, NULL, '345 Percival Cove\nPort Jonatan, WV 09092', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(26, 26, '1972-06-13', 1, NULL, '52599 Mueller Views Apt. 063\nEast Jermain, TN 06073', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(27, 27, '1989-03-23', 1, NULL, '861 Kemmer Expressway Suite 701\nNienowbury, SD 25842-9508', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(28, 28, '2016-09-03', 2, NULL, '997 Zoila Inlet\nSchusterchester, SD 96142-0116', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(29, 29, '2008-12-12', 3, NULL, '6483 Stamm Underpass\nKingmouth, CA 73685', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(30, 30, '1980-11-04', 3, NULL, '416 Jaydon Squares Suite 955\nEast Norwoodview, TN 25689-5138', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(31, 31, '1992-01-16', 1, NULL, '56710 Kris Row\nNorth Jazlynbury, AZ 73744-7760', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(32, 32, '1977-11-19', 1, NULL, '69665 Ed Crest\nKiehnburgh, PA 99749-9393', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(33, 33, '2017-10-29', 2, NULL, '901 Jimmy Mountain\nNew Ellie, GA 41157', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(34, 34, '2006-07-20', 2, NULL, '54319 Mann Dam Apt. 257\nSouth Dion, OH 66564-1540', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(35, 35, '2005-04-09', 2, NULL, '5425 Daniel Ridges Suite 475\nSouth Cooper, MN 73785-2676', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(36, 36, '2008-10-31', 2, NULL, '910 Schaden Glen Suite 055\nLake Tiaborough, IN 97743-5620', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(37, 37, '2002-04-30', 2, NULL, '437 Shanahan Mission\nNew Alanis, NY 40245-0230', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(38, 38, '1979-06-24', 2, NULL, '741 Konopelski Trace\nNorth Cordietown, HI 65956', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(39, 39, '1990-11-05', 2, NULL, '4329 Anderson Pines\nSauershire, OR 56006', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(40, 40, '1993-02-27', 1, NULL, '863 Chad Burg Suite 781\nMertzland, MO 33658-1916', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(41, 41, '1979-10-25', 2, NULL, '12140 Cummerata Inlet\nKrajcikburgh, NM 06017', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(42, 42, '1982-09-19', 3, NULL, '919 Desiree Mission\nMaggiestad, GA 30090-9826', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(43, 43, '2008-10-13', 1, NULL, '8227 Troy Fort\nWest Owen, MO 39860-9369', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(44, 44, '2012-08-26', 2, NULL, '4879 Aleen Loaf Suite 056\nSmithamberg, VA 76484', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(45, 45, '1976-12-31', 3, NULL, '286 Lockman Center\nLake Anabelle, RI 37567', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(46, 46, '1990-03-12', 3, NULL, '463 Padberg Square\nNew Rogers, RI 13250', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(47, 47, '1983-06-29', 1, NULL, '45774 Bins Causeway\nBruenton, AL 26554-2077', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(48, 48, '1996-11-01', 2, NULL, '7544 Borer Crossroad\nStrosinbury, OK 92347', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(49, 49, '2014-10-28', 3, NULL, '44155 Grimes Junctions Suite 180\nMarcton, OR 52624-4983', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(50, 50, '1972-09-03', 2, NULL, '59291 Kuhn Rapids Suite 983\nWisokymouth, WI 61567', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(51, 51, '1976-02-03', 1, NULL, '328 Deckow Rest\nLethahaven, VT 81973-4494', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(52, 57, NULL, NULL, NULL, NULL, '2021-06-14 09:01:51', '2021-06-14 09:01:51'),
	(53, 58, NULL, NULL, NULL, NULL, '2021-06-14 09:03:05', '2021-06-14 09:03:05'),
	(54, 59, NULL, NULL, NULL, NULL, '2021-06-14 09:20:24', '2021-06-14 09:20:24'),
	(55, 60, NULL, NULL, NULL, NULL, '2021-06-14 09:29:48', '2021-06-14 09:29:48');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.roles: ~4 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '2021-06-14 07:37:33', '2021-06-14 09:21:29'),
	(2, 'Author', '2021-06-14 07:37:33', '2021-06-14 07:37:33'),
	(3, 'Editor', '2021-06-14 07:37:33', '2021-06-14 07:37:33'),
	(4, 'Employee', '2021-06-14 07:37:33', '2021-06-14 07:37:33');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.role_user: ~57 rows (approximately)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 3, 2),
	(6, 3, 3),
	(7, 4, 4),
	(8, 3, 5),
	(9, 3, 6),
	(10, 4, 7),
	(11, 3, 8),
	(12, 3, 9),
	(13, 4, 10),
	(14, 4, 11),
	(15, 3, 12),
	(16, 2, 13),
	(17, 2, 14),
	(18, 3, 15),
	(19, 3, 16),
	(20, 4, 17),
	(21, 2, 18),
	(22, 2, 19),
	(23, 2, 20),
	(24, 3, 21),
	(25, 4, 22),
	(26, 3, 23),
	(27, 2, 24),
	(28, 4, 25),
	(29, 4, 26),
	(30, 3, 27),
	(31, 3, 28),
	(32, 3, 29),
	(33, 4, 30),
	(34, 2, 31),
	(35, 4, 32),
	(36, 3, 33),
	(37, 3, 34),
	(38, 3, 35),
	(39, 4, 36),
	(40, 2, 37),
	(41, 2, 38),
	(42, 4, 39),
	(43, 2, 40),
	(44, 2, 41),
	(45, 4, 42),
	(46, 2, 43),
	(47, 2, 44),
	(48, 2, 45),
	(49, 3, 46),
	(50, 4, 47),
	(51, 4, 48),
	(52, 4, 49),
	(53, 3, 50),
	(54, 4, 51),
	(55, 1, 56),
	(57, 1, 5),
	(60, 3, 59);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table laravel-api2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-api2.users: ~60 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '', 'admin@mail.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'WhyKWBo90e', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(2, 'Erika', 'Conn', 'katherine82@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'gczVosH9tv', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(3, 'Ricky', 'Kessler', 'yzemlak@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'FIsjh0CrEd', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(4, 'Britney', 'Collins', 'alysha36@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'Nkg08BqWZX', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(5, 'Cale', 'Streich', 'ckoch@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'WZy9VhhwxW', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(6, 'Soledad', 'Satterfield', 'lexus.gusikowski@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'wrDPnKy3RT', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(7, 'Oscar', 'Kunze', 'fbrown@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'UrLNbfYkxI', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(8, 'Shyanne', 'Gerlach', 'rthiel@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'WYLn9ANH5f', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(9, 'Katelin', 'Kuhic', 'ned.boehm@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'Nq4JKRmw83', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(10, 'Mitchell', 'Harris', 'kayley74@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'JpZCppthAK', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(11, 'Ila', 'Mayer', 'dickens.mariana@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'bQcvGew5b0', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(12, 'Ressie', 'Runolfsson', 'breanna.williamson@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'uhS98YLnHW', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(13, 'Kayli', 'Hagenes', 'dolly.steuber@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'Th1aAdeI36', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(14, 'Cody', 'Kreiger', 'lang.antone@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '1G4QAMfFfU', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(15, 'Sherwood', 'Goodwin', 'zola.boyer@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'cMWUCCwNnt', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(16, 'Jacinthe', 'Runolfsdottir', 'mary58@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'PHvxP3e9PL', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(17, 'Milan', 'O\'Connell', 'kevon.ryan@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'yoQTWT9HY5', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(18, 'Nicholaus', 'Gusikowski', 'herzog.rae@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'tUyBpLM10x', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(19, 'Jaeden', 'Rice', 'valentine.graham@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'vOL0H6vnIq', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(20, 'Remington', 'Reinger', 'lebsack.rosalee@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'PUWMZWEoCP', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(21, 'Zetta', 'Boehm', 'vwilkinson@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'SUWynXtcp6', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(22, 'Ulices', 'Cartwright', 'marvin.lonnie@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'fxbLK7SxmO', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(23, 'Jacinto', 'Conn', 'connelly.sabrina@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '0X7ao8Ohma', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(24, 'Waldo', 'Hagenes', 'larry82@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'J6jCXXPZH1', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(25, 'Elyssa', 'Emmerich', 'naomie.anderson@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'yFwEc860DZ', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(26, 'Rod', 'Grady', 'wintheiser.elvis@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'BSrALvalTc', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(27, 'Wilfred', 'Turner', 'zswaniawski@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'bd8FH1wkgy', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(28, 'Conner', 'Cremin', 'wolff.fernando@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'JhRpcp8InX', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(29, 'Savanah', 'Gutkowski', 'myrtice.wilkinson@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '12iiw5J4bt', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(30, 'Jamar', 'Auer', 'patience36@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'PL1IeC7qCS', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(31, 'Alfredo', 'Jakubowski', 'adelle.hoppe@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'EXnsQZRg9C', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(32, 'Otho', 'Murazik', 'madisyn.dietrich@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '3famDszPIu', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(33, 'Kolby', 'Fadel', 'curtis.rowe@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'eIf5UHFNRa', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(34, 'Luella', 'Batz', 'jocelyn.mueller@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'eUx2OT2D9i', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(35, 'Tina', 'Cole', 'warren.beier@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'D5SZ74sn4m', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(36, 'Samara', 'Prohaska', 'thiel.alia@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'QLZZlzQmTX', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(37, 'Christelle', 'Johns', 'scarlett.kunde@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'PtqkXipR5a', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(38, 'Orin', 'Hackett', 'shanon76@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'lm7xzwfd3g', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(39, 'Jaquelin', 'Lubowitz', 'ynienow@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'qjdiLJgUdF', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(40, 'Agustin', 'Wiza', 'cristobal56@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'eCMxFLNpCB', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(41, 'Jerad', 'Larson', 'jamir.volkman@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'ZfqsxDDPBS', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(42, 'Daphney', 'Schoen', 'goyette.marjolaine@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '2w7ZL5x8JO', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(43, 'Haylie', 'Kshlerin', 'hermann.karley@example.net', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '3ZsuY6Cc1s', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(44, 'Erling', 'Schimmel', 'eveline.erdman@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'j7v2eDu9xh', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(45, 'Mozelle', 'Armstrong', 'jo93@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'xlpQbFMcsr', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(46, 'Maurine', 'Koepp', 'borer.leatha@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', '3dOxQwROzI', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(47, 'Karl', 'Lebsack', 'micah.davis@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'lT1XB9TG6W', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(48, 'Vanessa', 'Schimmel', 'vince.collier@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'AxR0SHmAIv', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(49, 'Arturo', 'Wiza', 'parisian.alexander@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'DVu4PHwMNO', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(50, 'Pansy', 'Larson', 'ucummings@example.com', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'kOwlCS5IHe', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(51, 'Maxwell', 'Konopelski', 'johnston.chance@example.org', '2021-06-14 07:37:34', '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', 'dpX7pstRNi', '2021-06-14 07:37:34', '2021-06-14 07:37:34'),
	(52, 'adasdasd', 'dasdad', 'admin556@mail.com', NULL, '$2y$10$UKzDbTeuylPDIaIJygWMcOt3ySg3qB1X1fhC8e0GIhvREFLzNrNmS', NULL, '2021-06-14 08:19:54', '2021-06-14 08:19:54'),
	(53, 'adasdasd', 'dasdad', 'admin5586@mail.com', NULL, '$2y$10$wixy5kyt8qVR5qDNACMYKuLiMQuiF6m9R1MdrbC0jyj1dYuKK3W9K', NULL, '2021-06-14 08:20:40', '2021-06-14 08:20:40'),
	(54, 'adasdasd', 'dasdad', 'admin55876@mail.com', NULL, '$2y$10$u6NUbKXGlgpDxIUTxVM2Z.3MASolt1LS5BCXTdkY3dYIZhAz0gpLC', NULL, '2021-06-14 08:22:03', '2021-06-14 08:22:03'),
	(55, 'Briar', 'Lang', 'deketyky@mailinator.com', NULL, '$2y$10$ZDxscUPK4Qnn2hz/FWJXQuI7R/nDz98tuqJiz/QpIsuv/aazW9dk.', NULL, '2021-06-14 08:30:13', '2021-06-14 08:30:13'),
	(56, 'Virginia', 'Kim', 'ryfu@mailinator.com', NULL, '$2y$10$NDF771F8RJzsWFazq3F08.aaPVqd.2gsyTO3Sr0vIiwslTlw54jXa', NULL, '2021-06-14 08:30:46', '2021-06-14 08:30:46'),
	(57, 'Aaron', 'Johns', 'nawepowyl@mailinator.com', NULL, '$2y$10$ImGwssikonIFfu2ESSp8b.XoGk2VGABsT4Yddez3SYVkZs36n/eje', NULL, '2021-06-14 09:01:51', '2021-06-14 09:01:51'),
	(58, 'Hadassah', 'Ruiz', 'taqi@mailinator.com', NULL, '$2y$10$FKlTmu54W9DDzHzOvxtnK.cXZ1yR0GZXkbRcf7o9pezkcgQy1JgGS', NULL, '2021-06-14 09:03:05', '2021-06-14 09:03:05'),
	(59, 'Elmo', 'Perkins', 'qypycu@mailinator.com', NULL, '$2y$10$B57sxXRSi4aHVG0SJBlElevCe3/S75BvhHGNEy9B3FcbQ6u12nVmK', NULL, '2021-06-14 09:20:24', '2021-06-14 09:20:24'),
	(60, 'adasdasd', 'dasdad', 'admin499@mail.com', NULL, '$2y$10$dHSJe0wjwof9W4xmcyIrBu3l.DEuiJFf8I0uoWHybX59E8eTbjjVy', NULL, '2021-06-14 09:29:48', '2021-06-14 09:29:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
