-- Creacionde Tabla Departamentos

CREATE TABLE santo_domingo_corralon.departamento (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	abreviatura varchar(100) NOT NULL,
	habilitado INT NOT NULL,
	fechaalta DATE NOT NULL,
	fechaactualizacion DATE NOT NULL,
	fecha DATE NULL,
	CONSTRAINT departamento_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Creacion Tabla Distrito

CREATE TABLE santo_domingo_corralon.distrito (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	abreviatura varchar(100) NOT NULL,
	habilitado INT NOT NULL,
	fechaalta DATE NOT NULL,
	fechaactualizacion DATE NOT NULL,
	fechabaja DATE NULL,
	fkdepartamentoid INT NOT NULL,
	CONSTRAINT distrito_PK PRIMARY KEY (id),
	CONSTRAINT distrito_FK FOREIGN KEY (fkdepartamentoid) REFERENCES santo_domingo_corralon.departamento(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;



-- Creacion de Tabla Tipo Direccion

CREATE TABLE santo_domingo_corralon.tipodireccion (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	abreviatura varchar(100) NOT NULL,
	habilitado INT NOT NULL,
	fechaalta DATE NOT NULL,
	fechaactualizacion DATE NOT NULL,
	fechabaja DATE NULL,
	CONSTRAINT tipodireccion_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Creacion de Tabla Cliente

CREATE TABLE santo_domingo_corralon.cliente (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	dni varchar(100) NOT NULL,
	habilitacion INT NOT NULL,
	fechaalta DATE NOT NULL,
	fechaactualizacion DATE NOT NULL,
	fechabaja DATE NULL,
	CONSTRAINT cliente_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Creacion de Tabla Direccion

CREATE TABLE santo_domingo_corralon.direccion (
	id INT NOT NULL AUTO_INCREMENT,
	calle varchar(100) NOT NULL,
	numerocalle varchar(100) NOT NULL,
	barrio varchar(100) NOT NULL,
	entrecalles varchar(100) NOT NULL,
	descripcion varchar(100) NULL,
	ubicacion varchar(100) NOT NULL,
	habilitado INT NOT NULL,
	fechaalta DATE NOT NULL,
	fechaactualizacion DATE NOT NULL,
	fechabaja DATE NULL,
	fkclienteid INT NOT NULL,
	fkdistritoid INT NOT NULL,
	fkdireccionid INT NOT NULL,
	CONSTRAINT direccion_PK PRIMARY KEY (id),
	CONSTRAINT direccion_FK FOREIGN KEY (fkclienteid) REFERENCES santo_domingo_corralon.cliente(id),
	CONSTRAINT direccion_FK_1 FOREIGN KEY (fkdistritoid) REFERENCES santo_domingo_corralon.distrito(id),
	CONSTRAINT direccion_FK_2 FOREIGN KEY (fkdireccionid) REFERENCES santo_domingo_corralon.tipodireccion(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

