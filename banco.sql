CREATE TABLE carro 
( 
    cor INT,  
    placa INT,  
    marca INT,  
    id_carro INT PRIMARY KEY  
);

CREATE TABLE estacionamento 
( 
    tempo INT,  
    funcionario INT,  
    id_estacionamento INT PRIMARY KEY  
);

CREATE TABLE pertence 
( 
    id_carro INT,  
    id_estacionamento INT,  
    PRIMARY KEY (id_carro, id_estacionamento),  
    FOREIGN KEY (id_carro) REFERENCES carro (id_carro),  
    FOREIGN KEY (id_estacionamento) REFERENCES estacionamento (id_estacionamento)  
);
