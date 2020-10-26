curl -O https://raw.githubusercontent.com/hortonworks/data-tutorials/master/tutorials/hdp/beginners-guide-to-apache-pig/assets/driver_data.zip

unzip driver_data.zip

hdfs dfs -mkdir tmp
hdfs dfs -mkdir tmp/data

hdfs dfs -put driver_data/drivers.csv tmp/data/
hdfs dfs -put driver_data/truck_event_text_partition.csv tmp/data


pig -useHCatalog

scp malam@SERVER:/home/malam/truck_event.csv truck_event.csv