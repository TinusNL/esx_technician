USE `essentialmode`;

INSERT INTO `jobs` (name, label) VALUES
	('technician','Technician')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('technician',0,'worker','Worker',200,'{}','{}'),
	('technician',1,'boss','Boss',300,'{}','{}')
;
