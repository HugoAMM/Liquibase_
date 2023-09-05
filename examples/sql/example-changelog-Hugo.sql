--liquibase formatted sql

--changeset Hugo:1 labels:example-label context:example-context
--comment: example comment
create table computer (
    idComputer int primary key auto_increment not null,
    brand varchar(20) not null,
    serialNumber varchar(20) not null
)
--rollback DROP TABLE computer;

--changeset Hugo:2 labels:example-label context:example-context
--comment: example comment
create table serviceOrder (
    idServiceOrder int primary key auto_increment not null,
    countComputers int(10) not null,
    maxComputers int(10) not null
)
--rollback DROP TABLE serviceOrder;

--changeset Hugo:3 labels:example-label context:example-context
--comment: example comment
create table monitor (
    idMonitor int primary key auto_increment not null,
    brand varchar(20) not null,
    model varchar(20) not null
)
--rollback DROP TABLE monitor;

--changeset Andres:4 labels:example-label context:example-context
--comment: example comment
alter table monitor add column serialNumber varchar(20) not null
--rollback ALTER TABLE monitor DROP COLUMN serialNumber;

