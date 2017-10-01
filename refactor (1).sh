test_home=~/hbasedb/hbase-1.2.4/conf
 
for i in `cat $test_home/allmachines`
do
	echo 'logging into '${i}
	gnome-terminal -x bash -c "ssh -t ${i} 'rm -rf /tmp/hbase-YOURUSERNAME;rm -rf /tmp/YOURUSERNAME-zookeeperdata;rm -rf /tmp/hbase-YOURUSERNAME-zookeeper.pid;rm -rf /tmp/hbase-YOURUSERNAME-master.pid;rm -rf /tmp/hbase-YOURUSERNAME-master.znode;bash;'" &
done
