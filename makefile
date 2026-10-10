setup:
	mkdir -p malicious_dir
	mkdir -p dir/Whitelist

antivirusd: setup
	chmod +x antivirusd.sh
	@echo "Running antivirus daemon..."
	bash antivirusd.sh dir malicious_dir 5

restore: setup
	chmod +x restore.sh
	@echo "Running restore tool..."
	bash restore.sh dir malicious_dir
