CREATE TABLE IF NOT EXISTS Employee(
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL,
	employee_department VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Boss(
	id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employee(id)
);

CREATE TABLE IF NOT EXISTS Employee_boss(
	id_employee INTEGER NOT NULL REFERENCES Employee(id),
	id_boss INTEGER NOT NULL REFERENCES Boss(id),
	CONSTRAINT employee_boss_pk PRIMARY KEY (id_employee, id_boss)
);