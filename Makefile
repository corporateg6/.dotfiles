.SILENT:
linux: clean
	echo "Adding customizations..."
	./bin/linux.sh

clean:
	echo "Cleaning any existing customizations..."
	./bin/cleanup.sh
