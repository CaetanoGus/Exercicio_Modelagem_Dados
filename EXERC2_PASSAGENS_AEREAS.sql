CREATE DATABASE IF NOT EXISTS EXERC2_PASSAGENS_AEREAS;
USE EXERC2_PASSAGENS_AEREAS;

INSERT INTO PASSAGEIROS (COD_PASSAGEIRO,NOME,SOBRENOME,DATA_NASC,NACIONALIDADE)
VALUES
("0001","ANA","CARLA","2000-01-01","BRASILEIRO"),
("0002","CARLOS","ALGUEM","2000-02-02","BRASILEIRO"),
("0003","ALGUEM","ANA","2000-03-03", "BRASILEIRO");

INSERT INTO AEROPORTOS (ID_AEROPORTO,NOME,CIDADE,ESTADO,PAIS,LATITUDE,LONGITUDE,TAMANHO_PISTA)
VALUES
("1000","PRIMEIRO","VILA VELHA","ESPIRITO SANTO","BRASIL","100.000","100.000",500.1),
("2000","SEGUNDO","NITEROI","RIO DE JANEIRO","BRASIL","200.000","200.000",500.2),
("3000","TERCEIRO","CAMPINAS","SÃO PAULO","BRASIL","300.000","300.000",500.3);

INSERT INTO CIA_AEREAS (ID_CIA,CNPJ,NOME_FANTASIA)
VALUES
("010","00.000.000/0001-00","CIA UM"),
("020","00.000.000/0002-00","CIA DOIS"),
("030","00.000.000/0003-00","CIA TRES");

INSERT INTO RESERVAS (ID_RESERVA,DATA_RESERVA,FORMA_PAGTO,VALOR_RESERVA)
VALUES
(),
(),
();

INSERT INTO AERONAVES (PFX_AERO,MODELO,ANO_FABR,FABRICANTE,POLTRONAS,CIA_AEREA)
VALUES
(),
(),
();

INSERT INTO VOOS (ID_VOO,ASSENTO,AERO_PART,DATA_PART,HORA_PART,AERO_CHEG,DATA_CHEG,HORA_CHEG,AERONAVE,CIA_AEREA)
VALUES
(),
(),
();