CREATE TABLE eg_dt_registration(
  id character varying(255),
  tenantId character varying(255),
  applicationNumber character varying(255),
  deceasedFirstName character varying(255),
  deceasedLastName character varying(255),
  placeOfDeath character varying(255),
  timeOfDeath bigint,
  createdBy character varying(255),
  lastModifiedBy character varying(255),
  createdTime bigint,
  lastModifiedTime bigint,
 CONSTRAINT uk_eg_dt_registration UNIQUE (id)
);
CREATE TABLE eg_dt_address(
   id character varying(255),
   tenantId character varying(255),
   latitude FLOAT,
   longitude FLOAT,
   addressId character varying(255),
   addressNumber character varying(255),
   addressLine1 character varying(255),
   addressLine2 character varying(255),
   landmark character varying(255),
   city character varying(255),
   pincode character varying(255),
   detail character varying(255),
   registrationId character varying(255),
   createdBy character varying(255),
   lastModifiedBy character varying(255),
   createdTime bigint,
   lastModifiedTime bigint,
   CONSTRAINT uk_eg_dt_address PRIMARY KEY (id),
   CONSTRAINT fk_eg_dt_address FOREIGN KEY (registrationId) REFERENCES eg_dt_registration (id)
     ON UPDATE CASCADE
     ON DELETE CASCADE
);