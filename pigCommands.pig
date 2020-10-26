a = LOAD 'malam.drivers' using org.apache.hive.hcatalog.pig.HCatLoader();

b = LOAD 'malam.truck_events' using org.apache.hive.hcatalog.pig.HCatLoader();

c = join b by driverid, a by driverid;
STORE c INTO 'output/c' USING PigStorage(',');