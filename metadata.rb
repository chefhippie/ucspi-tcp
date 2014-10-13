name "ucspi_tcp"
maintainer "Thomas Boerger"
maintainer_email "tboerger@tbpro.de"
license "Apache 2.0"
description "Installs/Configures ucspi_tcp"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version "0.0.1"
depends "zypper"
recipe "ucspi_tcp", "Installs/Configures ucspi_tcp"

supports "suse", ">= 12.3"
supports "debian", ">= 7.0"
supports "ubuntu", ">= 12.04"
