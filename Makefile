install:	
	sudo puppet apply manifests/init.pp --verbose

dependencies:
	sudo puppet module install thekevjames-homebrew --version 1.6.0

dep:
	sudo librarian-puppet install
