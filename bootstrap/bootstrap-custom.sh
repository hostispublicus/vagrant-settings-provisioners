# ===========================================================================
# HYBRIS INSTALLATION SETTINGS:
# ===========================================================================

## Project Vars
# PROJECT_NAME=hybris
# PROJECT_PROPERTIES=/vagrant/hybris/config/personal.properties.test

## MySQL DB name, user, password
# DB_NAME=bb
# DB_USER=bbuser
# DB_PASS=bbpass

## MySQL root password, setting to 1111
# debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1111'
# debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1111'

# ===========================================================================
# HYBRIS INSTALLATION DEPENDENCIES:
# ===========================================================================

## Install Ant
# apt-get install ant -y

## Install OpenJDK 7 
#apt-get install -y openjdk-7-jdk

## Install MySQL 5.5
## Change config
# apt-get install -y mysql-server-5.5
# sed  -i.bak -e 's/innodb_flush_log_at_trx_commit=1.*/innodb_flush_log_at_trx_commit=0/' /etc/mysql/my.cnf
# ./createdb $DB_NAME $DB_USER $DB_PASS

## Create Hybris properties file
# cat > $PROJECT_PROPERTIES << EOF
# db.url=jdbc:mysql://localhost/$DB_NAME?useConfigs=maxPerformance&characterEncoding=utf8
# db.driver=com.mysql.jdbc.Driver
# db.username=$DB_USER
# db.password=$DB_PASS
# db.tableprefix=
# mysql.optional.tabledefs=CHARSET=utf8 COLLATE=utf8_bin
# mysql.tabletype=InnoDB
# EOF

## Download Hybris Platform
# ant clean all /vagrant/$PROJECT_NAME/bootstrap

## [TODO] Finish provisioner