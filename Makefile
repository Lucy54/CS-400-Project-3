run: compile
	java Run

compile: GraphADT.java CS400Graph.java BackEndInterface.java BackEnd.java skuo8_Data Loader.java FrontEnd.java Run.java
	javac GraphADT.java
	javac CS400Graph.java
	javac BackEndInterface.java
	javac BackEnd.java
	javac Loader.java
	javac FrontEnd.java
	javac Run.java

test: compile projectTest.java
	javac -cp .:junit5.jar projectTest.java
	java -jar junit5.jar --cp . ==scan-classpath

clean:
	$(RM) *.class
