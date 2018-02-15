CREATE DATABASE booking;

CREATE USER 'bookuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON booking.* TO 'password'@'%';
FLUSH PRIVILEGES;

use booking;

CREATE TABLE `staff` (
`id` int(10) unsigned NOT NULL PRIMARY KEY,
`name` char(30) NOT NULL,
`occupation` char(30) NOT NULL,
`created_at` datetime NOT NULL COMMENT 'created_at',
`updated_at` datetime NOT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `patient` (
`id` int(10) unsigned NOT NULL PRIMARY KEY,
`name` char(30) NOT NULL,
`phone` int(20) unsigned NOT NULL,
`birthday` date,
`created_at` datetime NOT NULL COMMENT 'created_at',
`updated_at` datetime NOT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reservation` (
`date` date NOT NULL,
`time` int(4) NOT NULL,
`room` int(2) NOT NULL,
`treat_time` int(3),
`dr_no` int(10),
`assist_no` int(10),
`dr_weight` int(10),
`assist_weight` int(10),
`created_at` datetime NOT NULL COMMENT 'created_at',
`updated_at` datetime NOT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `business_hours` (
`date` date NOT NULL PRIMARY KEY,
`start_time` int(4) unsigned NOT NULL,
`end_time` int(4) unsigned NOT NULL,
`start_rest` int(4) unsigned,
`end_rest` int(4) unsigned,
`room` int(3) unsigned NOT NULL,
`created_at` datetime NOT NULL COMMENT 'created_at',
`updated_at` datetime NOT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
