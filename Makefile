# Find all .typ files in subjects and scratchpad
SOURCES := $(shell find subjects scratchpad -name "*.typ")

# Map them to the build directory
PDFS := $(patsubst %.typ, build/%.pdf, $(notdir $(SOURCES)))

all: $(PDFS)

# Rule to compile a pdf into the build folder
build/%.pdf: **/%.typ
	@mkdir -p build
	typst compile $< $@

watch:
	@echo "Watching for changes..."
	typst watch $(file) --root .
