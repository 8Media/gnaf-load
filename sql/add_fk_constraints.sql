--  
-- SQL script to Add primary and foreign key constraints
--   
-- Automatically generated by Lynx on 2018.02.19 AD at 10:23:06 EST   
--   
--   

-- ********************************************************************************************
-- ********************************************************************************************
-- Create primary key table constraints 
-- ********************************************************************************************
-- ********************************************************************************************

ALTER TABLE ADDRESS_ALIAS ADD
 CONSTRAINT ADDRESS_ALIAS_PK PRIMARY KEY (address_alias_pid);

ALTER TABLE ADDRESS_ALIAS_TYPE_AUT ADD
 CONSTRAINT ADDRESS_ALIAS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE ADDRESS_DEFAULT_GEOCODE ADD
 CONSTRAINT ADDRESS_DEFAULT_GEOCODE_PK PRIMARY KEY (address_default_geocode_pid);

ALTER TABLE ADDRESS_DETAIL ADD
 CONSTRAINT ADDRESS_DETAIL_PK PRIMARY KEY (address_detail_pid);

ALTER TABLE ADDRESS_MESH_BLOCK_2011 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2011_PK PRIMARY KEY (address_mesh_block_2011_pid);

ALTER TABLE ADDRESS_MESH_BLOCK_2016 ADD
 CONSTRAINT ADDRESS_MESH_BLOCK_2016_PK PRIMARY KEY (address_mesh_block_2016_pid);

ALTER TABLE ADDRESS_SITE ADD
 CONSTRAINT ADDRESS_SITE_PK PRIMARY KEY (address_site_pid);

ALTER TABLE ADDRESS_SITE_GEOCODE ADD
 CONSTRAINT ADDRESS_SITE_GEOCODE_PK PRIMARY KEY (address_site_geocode_pid);

ALTER TABLE ADDRESS_TYPE_AUT ADD
 CONSTRAINT ADDRESS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE FLAT_TYPE_AUT ADD
 CONSTRAINT FLAT_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE GEOCODED_LEVEL_TYPE_AUT ADD
 CONSTRAINT GEOCODED_LEVEL_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE GEOCODE_RELIABILITY_AUT ADD
 CONSTRAINT GEOCODE_RELIABILITY_AUT_PK PRIMARY KEY (code);

ALTER TABLE GEOCODE_TYPE_AUT ADD
 CONSTRAINT GEOCODE_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE LEVEL_TYPE_AUT ADD
 CONSTRAINT LEVEL_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE LOCALITY ADD
 CONSTRAINT LOCALITY_PK PRIMARY KEY (locality_pid);

ALTER TABLE LOCALITY_ALIAS ADD
 CONSTRAINT LOCALITY_ALIAS_PK PRIMARY KEY (locality_alias_pid);

ALTER TABLE LOCALITY_ALIAS_TYPE_AUT ADD
 CONSTRAINT LOCALITY_ALIAS_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE LOCALITY_CLASS_AUT ADD
 CONSTRAINT LOCALITY_CLASS_AUT_PK PRIMARY KEY (code);

ALTER TABLE LOCALITY_NEIGHBOUR ADD
 CONSTRAINT LOCALITY_NEIGHBOUR_PK PRIMARY KEY (locality_neighbour_pid);

ALTER TABLE LOCALITY_POINT ADD
 CONSTRAINT LOCALITY_POINT_PK PRIMARY KEY (locality_point_pid);

ALTER TABLE MB_2011 ADD
 CONSTRAINT MB_2011_PK PRIMARY KEY (mb_2011_pid);

ALTER TABLE MB_2016 ADD
 CONSTRAINT MB_2016_PK PRIMARY KEY (mb_2016_pid);

ALTER TABLE MB_MATCH_CODE_AUT ADD
 CONSTRAINT MB_MATCH_CODE_AUT_PK PRIMARY KEY (code);

ALTER TABLE PRIMARY_SECONDARY ADD
 CONSTRAINT PRIMARY_SECONDARY_PK PRIMARY KEY (primary_secondary_pid);

ALTER TABLE PS_JOIN_TYPE_AUT ADD
 CONSTRAINT PS_JOIN_TYPE_AUT_PK PRIMARY KEY (code);

ALTER TABLE STATE ADD
 CONSTRAINT STATE_PK PRIMARY KEY (state_pid);

ALTER TABLE STREET_CLASS_AUT ADD
 CONSTRAINT STREET_CLASS_AUT_PK PRIMARY KEY (code);

ALTER TABLE STREET_LOCALITY ADD
 CONSTRAINT STREET_LOCALITY_PK PRIMARY KEY (street_locality_pid);

ALTER TABLE STREET_LOCALITY_ALIAS ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_PK PRIMARY KEY (street_locality_alias_pid);

ALTER TABLE STREET_LOCALITY_ALIAS_TYPE_AUT ADD
 CONSTRAINT STREET_LOCALITY_ALIAS_TYPE__PK PRIMARY KEY (code);

ALTER TABLE STREET_LOCALITY_POINT ADD
 CONSTRAINT STREET_LOCALITY_POINT_PK PRIMARY KEY (street_locality_point_pid);

ALTER TABLE STREET_SUFFIX_AUT ADD
 CONSTRAINT STREET_SUFFIX_AUT_PK PRIMARY KEY (code);

ALTER TABLE STREET_TYPE_AUT ADD
 CONSTRAINT STREET_TYPE_AUT_PK PRIMARY KEY (code);

-- ********************************************************************************************
-- ********************************************************************************************
-- Create foreign key table constraints 
-- ********************************************************************************************
-- ********************************************************************************************

-- ALTER TABLE ADDRESS_ALIAS ADD
--  CONSTRAINT ADDRESS_ALIAS_FK1 FOREIGN KEY (alias_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE ADDRESS_ALIAS ADD
--  CONSTRAINT ADDRESS_ALIAS_FK2 FOREIGN KEY (alias_type_code)
--   REFERENCES ADDRESS_ALIAS_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_ALIAS ADD
--  CONSTRAINT ADDRESS_ALIAS_FK3 FOREIGN KEY (principal_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE ADDRESS_DEFAULT_GEOCODE ADD
--  CONSTRAINT ADDRESS_DEFAULT_GEOCODE_FK1 FOREIGN KEY (address_detail_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE ADDRESS_DEFAULT_GEOCODE ADD
--  CONSTRAINT ADDRESS_DEFAULT_GEOCODE_FK2 FOREIGN KEY (geocode_type_code)
--   REFERENCES GEOCODE_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK1 FOREIGN KEY (address_site_pid)
--   REFERENCES ADDRESS_SITE (address_site_pid);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK2 FOREIGN KEY (flat_type_code)
--   REFERENCES FLAT_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK3 FOREIGN KEY (level_geocoded_code)
--   REFERENCES GEOCODED_LEVEL_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK4 FOREIGN KEY (level_type_code)
--   REFERENCES LEVEL_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK5 FOREIGN KEY (locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE ADDRESS_DETAIL ADD
--  CONSTRAINT ADDRESS_DETAIL_FK6 FOREIGN KEY (street_locality_pid)
--   REFERENCES STREET_LOCALITY (street_locality_pid);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2011 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK1 FOREIGN KEY (address_detail_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2011 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK2 FOREIGN KEY (mb_2011_pid)
--   REFERENCES MB_2011 (mb_2011_pid);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2011 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2011_FK3 FOREIGN KEY (mb_match_code)
--   REFERENCES MB_MATCH_CODE_AUT (code);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2016 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK1 FOREIGN KEY (address_detail_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2016 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK2 FOREIGN KEY (mb_2016_pid)
--   REFERENCES MB_2016 (mb_2016_pid);

-- ALTER TABLE ADDRESS_MESH_BLOCK_2016 ADD
--  CONSTRAINT ADDRESS_MESH_BLOCK_2016_FK3 FOREIGN KEY (mb_match_code)
--   REFERENCES MB_MATCH_CODE_AUT (code);

-- ALTER TABLE ADDRESS_SITE ADD
--  CONSTRAINT ADDRESS_SITE_FK1 FOREIGN KEY (address_type)
--   REFERENCES ADDRESS_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_SITE_GEOCODE ADD
--  CONSTRAINT ADDRESS_SITE_GEOCODE_FK1 FOREIGN KEY (address_site_pid)
--   REFERENCES ADDRESS_SITE (address_site_pid);

-- ALTER TABLE ADDRESS_SITE_GEOCODE ADD
--  CONSTRAINT ADDRESS_SITE_GEOCODE_FK2 FOREIGN KEY (geocode_type_code)
--   REFERENCES GEOCODE_TYPE_AUT (code);

-- ALTER TABLE ADDRESS_SITE_GEOCODE ADD
--  CONSTRAINT ADDRESS_SITE_GEOCODE_FK3 FOREIGN KEY (reliability_code)
--   REFERENCES GEOCODE_RELIABILITY_AUT (code);

-- ALTER TABLE LOCALITY ADD
--  CONSTRAINT LOCALITY_FK1 FOREIGN KEY (gnaf_reliability_code)
--   REFERENCES GEOCODE_RELIABILITY_AUT (code);

-- ALTER TABLE LOCALITY ADD
--  CONSTRAINT LOCALITY_FK2 FOREIGN KEY (locality_class_code)
--   REFERENCES LOCALITY_CLASS_AUT (code);

-- ALTER TABLE LOCALITY ADD
--  CONSTRAINT LOCALITY_FK3 FOREIGN KEY (state_pid)
--   REFERENCES STATE (state_pid);

-- ALTER TABLE LOCALITY_ALIAS ADD
--  CONSTRAINT LOCALITY_ALIAS_FK1 FOREIGN KEY (alias_type_code)
--   REFERENCES LOCALITY_ALIAS_TYPE_AUT (code);

-- ALTER TABLE LOCALITY_ALIAS ADD
--  CONSTRAINT LOCALITY_ALIAS_FK2 FOREIGN KEY (locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE LOCALITY_NEIGHBOUR ADD
--  CONSTRAINT LOCALITY_NEIGHBOUR_FK1 FOREIGN KEY (locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE LOCALITY_NEIGHBOUR ADD
--  CONSTRAINT LOCALITY_NEIGHBOUR_FK2 FOREIGN KEY (neighbour_locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE LOCALITY_POINT ADD
--  CONSTRAINT LOCALITY_POINT_FK1 FOREIGN KEY (locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE PRIMARY_SECONDARY ADD
--  CONSTRAINT PRIMARY_SECONDARY_FK1 FOREIGN KEY (primary_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE PRIMARY_SECONDARY ADD
--  CONSTRAINT PRIMARY_SECONDARY_FK2 FOREIGN KEY (ps_join_type_code)
--   REFERENCES PS_JOIN_TYPE_AUT (code);

-- ALTER TABLE PRIMARY_SECONDARY ADD
--  CONSTRAINT PRIMARY_SECONDARY_FK3 FOREIGN KEY (secondary_pid)
--   REFERENCES ADDRESS_DETAIL (address_detail_pid);

-- ALTER TABLE STREET_LOCALITY ADD
--  CONSTRAINT STREET_LOCALITY_FK1 FOREIGN KEY (gnaf_reliability_code)
--   REFERENCES GEOCODE_RELIABILITY_AUT (code);

-- ALTER TABLE STREET_LOCALITY ADD
--  CONSTRAINT STREET_LOCALITY_FK2 FOREIGN KEY (locality_pid)
--   REFERENCES LOCALITY (locality_pid);

-- ALTER TABLE STREET_LOCALITY ADD
--  CONSTRAINT STREET_LOCALITY_FK3 FOREIGN KEY (street_class_code)
--   REFERENCES STREET_CLASS_AUT (code);

-- ALTER TABLE STREET_LOCALITY ADD
--  CONSTRAINT STREET_LOCALITY_FK4 FOREIGN KEY (street_suffix_code)
--   REFERENCES STREET_SUFFIX_AUT (code);

-- ALTER TABLE STREET_LOCALITY ADD
--  CONSTRAINT STREET_LOCALITY_FK5 FOREIGN KEY (street_type_code)
--   REFERENCES STREET_TYPE_AUT (code);

-- ALTER TABLE STREET_LOCALITY_ALIAS ADD
--  CONSTRAINT STREET_LOCALITY_ALIAS_FK1 FOREIGN KEY (alias_type_code)
--   REFERENCES STREET_LOCALITY_ALIAS_TYPE_AUT (code);

-- ALTER TABLE STREET_LOCALITY_ALIAS ADD
--  CONSTRAINT STREET_LOCALITY_ALIAS_FK2 FOREIGN KEY (street_locality_pid)
--   REFERENCES STREET_LOCALITY (street_locality_pid);

-- ALTER TABLE STREET_LOCALITY_ALIAS ADD
--  CONSTRAINT STREET_LOCALITY_ALIAS_FK3 FOREIGN KEY (street_suffix_code)
--   REFERENCES STREET_SUFFIX_AUT (code);

-- ALTER TABLE STREET_LOCALITY_ALIAS ADD
--  CONSTRAINT STREET_LOCALITY_ALIAS_FK4 FOREIGN KEY (street_type_code)
--   REFERENCES STREET_TYPE_AUT (code);

-- ALTER TABLE STREET_LOCALITY_POINT ADD
--  CONSTRAINT STREET_LOCALITY_POINT_FK1 FOREIGN KEY (street_locality_pid)
--   REFERENCES STREET_LOCALITY (street_locality_pid);




