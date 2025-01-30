.PHONY: copy

copy:
	@if [ -z "$(TARGET_DIR)" ]; then \
		echo "❌ Error: Please specify TARGET_DIR. Usage: make copy TARGET_DIR=/path/to/target"; \
		exit 1; \
	fi
	./copy_data.sh $(TARGET_DIR)
