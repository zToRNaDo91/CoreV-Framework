INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES ('unemployed', 'Werkloos', 1);
INSERT INTO `job_grades` SELECT `id` AS `job_id`, 0 AS `grade`, 'unemployed' AS `name`, 'Werkloos' AS `label`, 100 AS `salary` FROM `jobs` WHERE `name` = 'unemployed' LIMIT 1;