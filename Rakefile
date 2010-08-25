# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.plugin :isolate

Hoe.spec 'hapi' do
  developer('hekaldama', 'adam@avil.la')

  #self.extra_rdoc_files = FileList["*.rdoc"]
  #self.history_file     = "CHANGELOG.rdoc"
  #self.readme_file      = "README.rdoc"

  extra_deps << ["activesupport", "~> 2.3.8"]
  extra_deps << ["json",          "~> 1.2.0"]
  extra_deps << ["rest-client",   "= 1.0.4"]

  extra_dev_deps << ["git",      "= 1.2.5"]
  extra_dev_deps << ["minitest", ">= 1.7.0"]
end

# vim: syntax=ruby
