-- Generated by Oracle SQL Developer Data Modeler 17.2.0.188.1059
--   at:        2019-10-26 01:22:49 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



DROP TABLE alfresco_ins.documento CASCADE;

DROP TABLE alfresco_ins.estudiante CASCADE;

DROP TABLE alfresco_ins.solicitud CASCADE;

DROP TABLE alfresco_ins.catalogo CASCADE;

CREATE SCHEMA alfresco_ins;

CREATE TABLE alfresco_ins.documento (
    correlativo     SMALLINT NOT NULL,
    descripcion     VARCHAR(150),
    estudiante_id   INTEGER NOT NULL
);

ALTER TABLE alfresco_ins.documento ADD CONSTRAINT documento_pk PRIMARY KEY ( correlativo,estudiante_id );

CREATE TABLE alfresco_ins.estudiante (
    id                 INTEGER NOT NULL,
    cui                INTEGER,
    primer_nombre      VARCHAR(50) NOT NULL,
    segundo_nombre     VARCHAR(50),
    primer_apellido    VARCHAR(50) NOT NULL,
    segundo_apellido   VARCHAR(50),
    num_telefono       VARCHAR(20)
);

ALTER TABLE alfresco_ins.estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( id );

CREATE TABLE alfresco_ins.solicitud (
    id_solicitud      INTEGER NOT NULL,
    fecha_solicitud   DATE NOT NULL,
    json_datos        VARCHAR(4000) NOT NULL,
    estado            SMALLINT NOT NULL,
    correo            VARCHAR(75) NOT NULL
);

ALTER TABLE alfresco_ins.solicitud ADD CONSTRAINT solicitud_pk PRIMARY KEY (id_solicitud);

ALTER TABLE alfresco_ins.documento
    ADD CONSTRAINT documento_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES alfresco_ins.estudiante ( id );


CREATE TABLE alfresco_ins.catalogo (
    codigo            INTEGER NOT NULL,
    nombre            VARCHAR(100) NOT NULL,
    estado            SMALLINT NOT NULL,
    catalogo_codigo   INTEGER NOT NULL,
    tipo              SMALLINT NOT NULL
);

ALTER TABLE alfresco_ins.catalogo ADD CONSTRAINT catalogo_pk PRIMARY KEY ( codigo );

ALTER TABLE alfresco_ins.catalogo
    ADD CONSTRAINT catalogo_catalogo_fk FOREIGN KEY ( catalogo_codigo )
        REFERENCES alfresco_ins.catalogo ( codigo );        



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
