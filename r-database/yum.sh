sudo yum install -y libaio
# download from http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html
sudo rpm -i oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm
sudo rpm -i oracle-instantclient12.1-devel-12.1.0.2.0-1.x86_64.rpm
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
sudo mkdir -p $ORACLE_HOME/rdbms/public
sudo cp /usr/include/oracle/12.1/client64/* $ORACLE_HOME/rdbms/public
