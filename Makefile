hadoop-2.6.3:
	wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.6.3/hadoop-2.6.3.tar.gz 
	tar -vxf hadoop-2.6.3.tar.gz; rm hadoop-2.6.3.tar.gz
all: hadoop-2.6.3
	npm install
clean:
	rm -rf node_modules
	rm -rf hadoop-2.6.3
	
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
