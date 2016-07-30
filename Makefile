all: hadoop kafka
	npm install
kafka_2.11-0.10.0.0.tgz:
	wget http://apache.fayea.com/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz
kafka: kafka_2.11-0.10.0.0.tgz
	mkdir kafka;
	tar -vxf kafka_2.11-0.10.0.0.tgz -C ./kafka;
hadoop-2.6.3.tar.gz:
	wget -c -t 0 -O hadoop-2.6.3.tar.gz http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz 
hadoop: hadoop-2.6.3.tar.gz
	mkdir hadoop;
	tar -vxf hadoop-2.6.3.tar.gz -C ./hadoop;
clean:
	rm -rf node_modules
	rm -rf hadoop
	rm -rf hadoop-2.6.3.tar.gz
	rm -rf kafka
	rm -rf kafka_2.11-0.10.0.0.tgz
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
