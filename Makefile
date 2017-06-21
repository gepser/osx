install:	
	sudo puppet apply manifests/site.pp --modulepath=./modules

dependencies:
	sudo puppet module install thekevjames-homebrew --version 1.6.0

dep:
	sudo librarian-puppet install
