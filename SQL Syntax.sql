CREATE DATABASE aldy;

use aldy;

show databases;

CREATE TABLE users (
	user_id int PRIMARY KEY,
    name varchar(255),
    email varchar(255),
    phone varchar(12),
    gender varchar(2),
    address varchar(255)
);

DESCRIBE users;

INSERT INTO users VALUES (1, "agus", "agus01@gmail.com", "08129373125", "L", "Jl.Gang Buntung"),
(2, "ari", "ariews01@gmail.com", "08129123243", "L", "Jl.Burung"),
(3, "nissa", "nissa12@gmail.com", "08339653235", "P", "Jl.Ayam"),
(4, "galih", "galih1201@gmail.com", "08122663125", "L", "Jl.Jantung"),
(5, "halim", "halimn01@gmail.com", "08129658725", "L", "Jl.Raden"),
(6, "putri", "putri125301@gmail.com", "08127655125", "P", "Jl.Buntung"),
(7, "noval", "novall1701@gmail.com", "08127873545", "L", "Jl.Buntu"),
(8, "husni", "husni201@gmail.com", "08129761125", "P", "Jl.Gagak"),
(9, "adi", "adi1101@gmail.com", "08129443345", "L", "Jl.Banteng"),
(10, "adam", "adam1201@gmail.com", "08125477195", "L", "Jl.Tunggal"),
(11, "afgan", "afganmm101@gmail.com", "08339122125", "L", "Jl.Gantung"),
(12, "sephia", "sephia091@gmail.com", "08155672125", "P", "Jl.Ganggu"),
(13, "siti", "siti0221@gmail.com", "08129421445", "P", "Jl.Hamdu"),
(14, "sarah", "sarah701@gmail.com", "08129223665", "P", "Jl.Gantungan"),
(15, "jamal", "jamal0221@gmail.com", "0214244432", "L", "Jl.Bantu"),
(16, "handoko", "handoko1201@gmail.com", "0213454632", "L", "Jl.Tinggal"),
(17, "hendri", "hendri201@gmail.com", "0213433353", "L", "Jl.Kambing"),
(18, "gorri", "gorri0122@gmail.com", "08421432543", "L", "Jl.Gs Buntung"),
(19, "guntur", "guntur601@gmail.com", "0214535643", "L", "Jl.Guntar"),
(20, "erna", "erna601@gmail.com", "02153254353", "P", "Jl.Gantung"),
(21, "fitri", "fitri901@gmail.com", "0216563423", "P", "Jl.Rambutan"),
(22, "shiva", "shiva501@gmail.com", "02152343242", "P", "Jl.Soekarno"),
(23, "shylla", "shylla3301@gmail.com", "08163452342", "P", "Jl.Aquad"),
(24, "gusti", "gusti801@gmail.com", "08165331221", "L", "Jl.Jambu"),
(25, "hadi", "hadi061@gmail.com", "0215341231", "L", "Jl.Hilda"),
(26, "jaka", "jaka5501@gmail.com", "08163242342", "L", "Jl.Jaksa"),
(27, "fatur", "fatur0166@gmail.com", "0815322322", "L", "Jl.Lambat"),
(28, "farah", "farah01233@gmail.com", "02214421123", "P", "Jl.Bangetan"),
(29, "dani", "dani6301@gmail.com", "0214353532", "L", "Jl.Kampling"),
(30, "sandra", "sandra701@gmail.com", "021543534532", "P", "Jl.Lima");

SELECT name AS "Nama", phone AS "Telepon", address AS "Alamat"
FROM users;