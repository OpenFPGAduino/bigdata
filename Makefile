all: hadoop
	npm install
hadoop-2.6.3.tar.gz:
	wget -c -t 0 -O hadoop-2.6.3.tar.gz http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz 
hadoop: hadoop-2.6.3.tar.gz
	tar -vxf hadoop-2.6.3.tar.gz;
clean:
	rm -rf node_modules
	rm -rf hadoop
	rm -rf hadoop-2.6.3.tar.gz
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
