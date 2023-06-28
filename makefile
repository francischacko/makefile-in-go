# Go compiler
GO := go

# Output directory
OUT_DIR := bin

# Name of the executable
EXECUTABLE := hello

# Default target
.PHONY: all
all: run

# Build and run the executable
.PHONY: run
run:
	@mkdir -p $(OUT_DIR)
	@$(GO) build -o $(OUT_DIR)/$(EXECUTABLE)
	@./$(OUT_DIR)/$(EXECUTABLE)

# Clean build artifacts
.PHONY: clean
clean:
	rm -rf $(OUT_DIR)