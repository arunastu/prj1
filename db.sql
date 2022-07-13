Database: `mydb`


CREATE TABLE `user` (

  `uid` int(100) NOT NULL,

  `na` varchar(100) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `user` (`uid`, `na`) VALUES

(1, 'apd1'),

(2, 'apd2'),

(3, 'apd3'),

(4, 'apd4');



ALTER TABLE `user`

 ADD PRIMARY KEY (`uid`);

ALTER TABLE `user`

  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

COMMIT;
