require 'active_support'
require 'json'
require 'rest_client'

class Hapi::Config

  def initialize job
    @resource = RestClient::Resource.new "#{Hapi.uri}/job/#{job}/config.xml"
    @config   = get_config
  end

  def disable
    @config['project']['disabled'] = true
  end

  def disabled?
    @config['project']['disabled']
  end

  def get_config
    Hash.from_xml @resource.get
  end

  def scm
    @config['project']['scm']['locations']['hudson.scm.SubversionSCM__ModuleLocation']['remote']
  end

  def scm= url
    @config['project']['scm']['locations']['hudson.scm.SubversionSCM__ModuleLocation']['remote'] = url
  end

  def post_config
    @resource.post @config.to_xml
  end

end
