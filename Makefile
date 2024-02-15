# Makefile for our JavaFX project

############################
### Variable definitions ###
############################
JAVAC = javac		# Java compiler command
JAVA = java			# Java runtime command
FX_LIB = ./lib		# Path to the JavaFX library
SOURCE_DIR = src	# Directory containing Java source files
OUTPUT_DIR = out	# Directory containing compiled Java files

# List of source files
SOURCES = $(SOURCE_DIR)/client/SimpleJavaFXApp.java # List of Java source files

# Main class name
MAIN_CLASS = SimpleJavaFXApp	# Name of our main class

###############
### Targets ###
###############

# see this page for how to start a javafx program:
# https://openjfx.io/openjfx-docs/#install-javafx

# Target: build  (compiles the JavaFX program)
build:
	@mkdir -p $(OUTPUT_DIR)
	$(JAVAC) --module-path $(FX_LIB) --add-modules javafx.controls -d $(OUTPUT_DIR) ./src/client/SimpleJavaFXApp.java

# Target: run (builds and runs the JavaFx program)
run: build
	$(JAVA) --module-path $(FX_LIB) --add-modules javafx.controls -cp $(OUTPUT_DIR) $(MAIN_CLASS)

# Target: clean (removes compiled files)
clean:
	@rm -rf $(OUTPUT_DIR)

# Target: help (displays help message)
help:
	@echo "Available targets:"
	@echo "  build   - Compile the JavaFX program"
	@echo "  run     - Run the compiled JavaFX program"
	@echo "  clean   - Remove the compiled files"
	@echo "  help    - Display this help message"

