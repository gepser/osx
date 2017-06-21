install:	
	puppet apply manifests/site.pp --modulepath=./modules

dependencies:
	puppet module install thekevjames-homebrew --version 1.6.0