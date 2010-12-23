require File.dirname(__FILE__) + '/lib/app_config'

c = AppConfig.new
["config.yml","config.local.yml"].each do|relative_config_filename|
  absolute_config_filename = File.join(Rails.root,'config',relative_config_filename)
  c.use_file!(absolute_config_filename)
end
c.use_section!(Rails.env)
::Conf = c
