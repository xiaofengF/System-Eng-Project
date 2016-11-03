#get database from server
mysqldump -h systemeng.cyznqpxlr3qc.eu-west-1.rds.amazonaws.com -P 3306 -u admin -p******* SystemProject >  /home/ubuntu/allen/back_up/back_up.sql

chmod +x /home/ubuntu/allen/back_up/back_up.sql
#zip it
gzip /home/ubuntu/allen/back_up/back_up.sql

#upload to s3
aws s3 rm s3://systemproject/back_up.sql.gz

aws s3 sync /home/ubuntu/allen/back_up s3://systemproject

#remove it
rm /home/ubuntu/allen/back_up/back_up.sql.gz

