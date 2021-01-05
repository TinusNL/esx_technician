USE `essentialmode`;

INSERT INTO `jobs` (name, label) VALUES
	('technician','Elektrishen')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('technician',0,'worker','Medewerker',200,'{}','{}'),
	('technician',1,'boss','Baas',300,'{}','{}')
;
