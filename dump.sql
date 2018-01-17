CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(64) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `reported_id` int(11) NOT NULL,
  `message` varchar(512) NOT NULL,
  `date` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `servers` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `connection_port` int(11) NOT NULL,
  `query_port` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2560) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT '',
  `youtube_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `date_added` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `highlight` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `online_players` int(11) NOT NULL DEFAULT '0',
  `maximum_online_players` int(11) NOT NULL DEFAULT '0',
  `motd` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `server_version` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `details` longtext COLLATE utf8_unicode_ci,
  `cachetime` varchar(16) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servers_pagination` int(11) DEFAULT '10',
  `contact_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_reset_time` int(11) DEFAULT NULL,
  `display_offline_servers` int(11) DEFAULT '1',
  `top_ads` varchar(2560) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bottom_ads` varchar(2560) COLLATE utf8_unicode_ci DEFAULT NULL,
  `side_ads` varchar(2560) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_key` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `private_key` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lost_password_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `last_activity` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `lost_password_code`, `type`, `active`, `last_activity`)
VALUES (1,'admin','365a4a0e748d76932d03cd46e62e4c3b4ca426c00c87bdf6ca9e692a0dc797224d151c3c9156a57c624e5bef533f0af9b8059726987c7929281a6b7acf7af8d4','admin@admin.com','0',2,1,'1480418142');


INSERT INTO `settings` (`id`, `title`, `url`, `meta_description`, `analytics_code`, `servers_pagination`, `contact_email`, `cache_reset_time`, `display_offline_servers`, `top_ads`, `bottom_ads`, `side_ads`, `public_key`, `private_key`)
VALUES (1, 'Your title', 'https://website.com/','','',5,'no-reply@domain.com',600,1,'','','','6Le43tISAAAAADni-XsMzvEaStTluh6vSFmbhpfC','6Le43tISAAAAANP9dDZb-ConEQRFxdyTpNFo09Q3');


INSERT INTO `categories` (`category_id`, `name`, `description`, `title`, `url`)
VALUES (1,'Minecraft','','Minecraft','minecraft');
