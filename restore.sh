#get restore database from s3 server
aws s3 sync s3://systemproject /home/ubuntu/allen/restore

chmod +x /home/ubuntu/allen/restore/back_up.sql

rm /home/ubuntu/allen/restore/back_up.sql
# unzip it
chmod +x /home/ubuntu/allen/restore/back_up.sql.gz

gzip -d /home/ubuntu/allen/restore/back_up.sql.gz

#restore it to mySQL server
mysql -h systemeng.cyznqpxlr3qc.eu-west-1.rds.amazonaws.com -P 3306 -u admin -p ******* SystemProject < /home/ubuntu/allen/restore/back_up.sql

rm /home/ubuntu/allen/restore/back_up.sql