raw_config = File.read(RAILS_ROOT + "/config/amazon_config.yml")
AMAZON_CONFIG = YAML.load(raw_config)[RAILS_ENV].symbolize_keys
