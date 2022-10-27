/*!40101 SET NAMES binary*/;
CREATE TABLE `github_users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `type` char(3) NOT NULL DEFAULT 'N/A',
  `is_bot` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `organization_formatted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `country_code` char(3) NOT NULL DEFAULT 'N/A',
  `region_code` char(3) NOT NULL DEFAULT 'N/A',
  `state` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `longitude` decimal(11,8) NOT NULL DEFAULT '0',
  `latitude` decimal(10,8) NOT NULL DEFAULT '0',
  `public_repos` int(11) NOT NULL DEFAULT '0',
  `followers` int(11) NOT NULL DEFAULT '0',
  `followings` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `refreshed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  KEY `index_gu_on_login_is_bot_organization_country_code` (`login`,`is_bot`,`organization_formatted`,`country_code`),
  KEY `index_gu_on_address` (`address`),
  KEY `index_gu_on_organization` (`organization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
