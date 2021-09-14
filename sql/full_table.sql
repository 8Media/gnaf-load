
-- Move view to a new table and make indexes
CREATE TABLE FULL_ADDRESS_LIST AS SELECT ADDRESS_DETAIL_PID, STREET_LOCALITY_PID, LOCALITY_PID, BUILDING_NAME, LOT_NUMBER_PREFIX, LOT_NUMBER, LOT_NUMBER_SUFFIX, FLAT_TYPE, FLAT_NUMBER_PREFIX, FLAT_NUMBER, FLAT_NUMBER_SUFFIX, LEVEL_TYPE, LEVEL_NUMBER_PREFIX, LEVEL_NUMBER, LEVEL_NUMBER_SUFFIX, NUMBER_FIRST_PREFIX, NUMBER_FIRST, NUMBER_FIRST_SUFFIX, NUMBER_LAST_PREFIX, NUMBER_LAST, NUMBER_LAST_SUFFIX, STREET_NAME, STREET_CLASS_CODE, STREET_CLASS_TYPE, STREET_TYPE_CODE, STREET_SUFFIX_CODE, STREET_SUFFIX_TYPE, LOCALITY_NAME, STATE_ABBREVIATION, POSTCODE, LATITUDE, LONGITUDE, GEOCODE_TYPE, CONFIDENCE, ALIAS_PRINCIPAL, PRIMARY_SECONDARY, LEGAL_PARCEL_ID, DATE_CREATED FROM ADDRESS_VIEW;


ALTER TABLE `gnaf`.`FULL_ADDRESS_LIST` ADD INDEX `POSTCODE_I` (`POSTCODE` ASC) VISIBLE, ADD PRIMARY KEY (`ADDRESS_DETAIL_PID`), ADD INDEX `STREET_NAME_I` (`STREET_NAME` ASC) VISIBLE, ADD INDEX `NUMBER_FIRST_I` (`NUMBER_LAST` ASC) VISIBLE;
