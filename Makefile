
help:
	@echo "Cavan Fowler"
	@echo ""
	@echo "To build deployment package enter: make build"
	@echo "**if on Windows using Linux-based terminal, install zip command.**"
	@echo "**Process: https://stackoverflow.com/questions/38782928/how-to-add-man-and-zip-to-git-bash-installation-on-windows**"
	@echo ""
	@echo "To deploy the package to GitHub enter: make deploy"


build: README.md Sample_input.txt wordcount.sh
	zip wordcount.zip README.md Sample_input.txt wordcount.sh

deploy: wordcount.zip
	git add wordcount.zip
	git commit -m " 'Make a Makefile to build and deploy a solution' assignment" wordcount.zip
	git push origin main


