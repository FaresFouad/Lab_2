create:
	mkdir -p malicious_dir

antivirusd: create
	@echo "Running antivirus daemon..."
	bash antivirusd.sh dir malicious_dir 5

restore: create
	@echo "Running restore tool..."
	bash restore.sh dir malicious_dir
