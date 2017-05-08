SRC_DIR = ./src
TOOL_DIR = ./tool


lox: $(SRC_DIR)/Lox.java
	javac -cp $(SRC_DIR) $(SRC_DIR)/Lox.java

tool:
	javac -cp $(TOOL_DIR) $(TOOL_DIR)/GenerateAST.java

run:	$(SRC_DIR)/Lox.class
	cd $(SRC_DIR)/ && java Lox

generate_ast:
	cd tool/ && java GenerateAST $(ARGS)

clean:
		rm -f src/*.class tool/*.class