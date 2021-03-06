USE ODS;
ALTER TABLE ODS_HC_SERVICIOS DROP foreign key fk_serv_prod;
ALTER TABLE ODS_HC_SERVICIOS DROP index fk_serv_prod_idx;
ALTER TABLE ODS_HC_SERVICIOS MODIFY COLUMN ID_PRODUCTO INT(16) UNSIGNED;
ALTER TABLE ODS_HC_SERVICIOS ADD INDEX fk_serv_prod_idx (ID_PRODUCTO ASC);
ALTER TABLE ODS_HC_SERVICIOS ADD CONSTRAINT fk_serv_prod FOREIGN KEY (ID_PRODUCTO)
REFERENCES ODS_DM_PRODUCTOS (ID_PRODUCTO);

ALTER TABLE ODS_HC_SERVICIOS DROP foreign key fk_serv_can;
ALTER TABLE ODS_HC_SERVICIOS DROP index fk_serv_can_idx;
ALTER TABLE ODS_HC_SERVICIOS MODIFY COLUMN ID_CANAL INT(16) UNSIGNED;    
ALTER TABLE ODS_HC_SERVICIOS ADD INDEX fk_serv_can_idx (ID_CANAL ASC);
ALTER TABLE ODS_HC_SERVICIOS ADD CONSTRAINT fk_serv_can FOREIGN KEY (ID_CANAL)
REFERENCES ODS_DM_CANALES (ID_CANAL);

ALTER TABLE ODS_HC_SERVICIOS DROP foreign key fk_serv_cli;
ALTER TABLE ODS_HC_SERVICIOS DROP index fk_serv_cli_idx;
ALTER TABLE ODS_HC_SERVICIOS MODIFY COLUMN ID_CLIENTE INT(11) UNSIGNED;
ALTER TABLE ODS_HC_SERVICIOS ADD INDEX fk_serv_cli_idx (ID_CLIENTE ASC); 
ALTER TABLE ODS_HC_SERVICIOS ADD CONSTRAINT fk_serv_cli FOREIGN KEY (ID_CLIENTE) 
REFERENCES ODS_HC_CLIENTES (ID_CLIENTE);

ALTER TABLE ODS_HC_SERVICIOS DROP foreign key fk_serv_dir;
ALTER TABLE ODS_HC_SERVICIOS DROP index fk_serv_dir_idx;
ALTER TABLE ODS_HC_SERVICIOS MODIFY COLUMN ID_DIRECCION_SERVICIO INT(16) UNSIGNED;
ALTER TABLE ODS_HC_SERVICIOS ADD INDEX fk_serv_dir_idx (ID_DIRECCION_SERVICIO ASC);
ALTER TABLE ODS_HC_SERVICIOS ADD CONSTRAINT fk_serv_dir FOREIGN KEY (ID_DIRECCION_SERVICIO)
REFERENCES ODS_HC_DIRECCIONES (ID_DIRECCION);


