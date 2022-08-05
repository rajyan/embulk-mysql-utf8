CREATE DATABASE IF NOT EXISTS embulk_test;
CREATE TABLE `example` (
   `id` bigint DEFAULT NULL,
   `comment` varchar(512) COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
