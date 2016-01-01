all:
	wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz 
	tar -vxf hadoop-2.6.3.tar.gz; rm hadoop-2.6.3.tar.gz
	npm install
clean:
	rm -rf node_modules
	rm -rf hadoop-2.6.3
	
