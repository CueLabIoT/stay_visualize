# -*- encoding: utf-8 -*-
# stub: ibm_db 3.0.0 x86_64-darwin-14 lib
# stub: ext/extconf_MacOS.rb

Gem::Specification.new do |s|
  s.name = "ibm_db"
  s.version = "3.0.0"
  s.platform = "x86_64-darwin-14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["IBM"]
  s.date = "2015-09-30"
  s.email = "opendev@us.ibm.com"
  s.extensions = ["ext/extconf_MacOS.rb"]
  s.extra_rdoc_files = ["CHANGES", "README", "MANIFEST"]
  s.files = ["CHANGES", "MANIFEST", "README", "ext/extconf_MacOS.rb"]
  s.homepage = "https://github.com/ibmdb/ruby-ibmdb"
  s.post_install_message = "\n*****************************************************************************\nSuccessfully installed ibm_db, the Ruby gem for IBM DB2/Informix.  The Ruby gem is licensed under the MIT License.   The package also includes IBM ODBC and CLI Driver from IBM, which could have been automatically downloaded as the Ruby gem is installed on your system/device.   The license agreement to the IBM driver is available in the folder \"$GEM_HOME/ibm_db-*/lib/clidriver/license\".  Check for additional dependencies, which may come with their own license agreement(s). Your use of the components of the package and dependencies constitutes your acceptance of their respective license agreements.  If you do not accept the terms of any license agreement(s), then delete the relevant component(s) from your system/device.\n*****************************************************************************\n\n"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.requirements = ["ActiveRecord, at least 4.2.0"]
  s.rubyforge_project = "rubyibm"
  s.rubygems_version = "2.4.5"
  s.summary = "Rails Driver and Adapter for IBM Data Servers: {DB2 on Linux/Unix/Windows, DB2 on zOS, DB2 on i5/OS, Informix (IDS)}"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 4.2.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 4.2.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 4.2.0"])
  end
end
