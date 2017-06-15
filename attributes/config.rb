# https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-configuration-details.html

# prospector configuration files
default['filebeat']['prospectors'] = {}
# prospector configuration
default['filebeat']['config']['filebeat']['prospectors'] = []
# default['filebeat']['config']['filebeat']['spool_size'] = 1024
# default['filebeat']['config']['filebeat']['idle_timeout'] =  '5s'
=begin
# Add Prospectors using Node Attribute Example
apache_logs = {
    'paths' => ["/var/log/apache/*.log"],
    'input_type' => "log",
    'fields' => {  'logtype' => "apache"  },
    'document_type' => "apache",
    'fields_under_root' => true
}
default['filebeat']['prospectors']['access']['filebeat']['prospectors'] = [apache_logs]
=end

default['filebeat']['config']['output'] = {}
# Elasticsearch host attributes
# default['filebeat']['config']['output']['elasticsearch']['enable'] = true
# default['filebeat']['config']['output']['elasticsearch']['hosts'] = []
# default['filebeat']['config']['output']['elasticsearch']['save_topology'] = false
# default['filebeat']['config']['output']['elasticsearch']['max_retries'] = 3
# default['filebeat']['config']['output']['elasticsearch']['bulk_max_size'] = 1000
# default['filebeat']['config']['output']['elasticsearch']['flush_interval'] = nil
# default['filebeat']['config']['output']['elasticsearch']['protocol'] = 'http'
# default['filebeat']['config']['output']['elasticsearch']['username'] = nil
# default['filebeat']['config']['output']['elasticsearch']['password'] = nil
# default['filebeat']['config']['output']['elasticsearch']['index'] = 'filebeat'
# default['filebeat']['config']['output']['elasticsearch']['path'] = '/elasticsearch'
# default['filebeat']['config']['output']['elasticsearch']['tls']['certificate_authorities'] = ['/etc/ca.crt']
# default['filebeat']['config']['output']['elasticsearch']['tls']['certificate'] = '/etc/client.crt'
# default['filebeat']['config']['output']['elasticsearch']['tls']['certificate_key'] = '/etc/client.key'
# default['filebeat']['config']['output']['elasticsearch']['tls']['insecure'] = false

# Logstash Output config attributes
# default['filebeat']['config']['output']['logstash']['enable'] = true
# default['filebeat']['config']['output']['logstash']['hosts'] = []
# default['filebeat']['config']['output']['logstash']['loadbalance'] = true
# default['filebeat']['config']['output']['logstash']['save_topology'] = true
# default['filebeat']['config']['output']['logstash']['index'] = 'filebeat'
# default['filebeat']['config']['output']['logstash']['tls']['certificate_authorities'] = ['/etc/ca.crt']
# default['filebeat']['config']['output']['logstash']['tls']['certificate'] = '/etc/client.crt'
# default['filebeat']['config']['output']['logstash']['tls']['certificate_key'] = '/etc/client.key'
# default['filebeat']['config']['output']['logstash']['tls']['insecure'] = false

# Redis Output config attributes
# default['filebeat']['config']['output']['redis']['enable'] = true
# default['filebeat']['config']['output']['redis']['host'] = 'locahost'
# default['filebeat']['config']['output']['redis']['port'] = 6379
# default['filebeat']['config']['output']['redis']['save_topology'] = false
# default['filebeat']['config']['output']['redis']['index'] = 'filebeat'
# default['filebeat']['config']['output']['redis']['db'] = 0
# default['filebeat']['config']['output']['redis']['db_topology'] = 1
# default['filebeat']['config']['output']['redis']['password'] = ''
# default['filebeat']['config']['output']['redis']['timeout'] = 5
# default['filebeat']['config']['output']['redis']['reconnect_interval'] = 1


# Kafka Output config attributes
# default['filebeat']['config']['output']['kafka]['enabled'] = true
# default['filebeat']['config']['output']['kafka]['hosts'] = ['hostname:port']
# default['filebeat']['config']['output']['kafka]['topic'] =  'beats'
# default['filebeat']['config']['output']['kafka]['key'] =  ''
# default['filebeat']['config']['output']['kafka]['partition.hash']['reachable_only'] =  false
# default['filebeat']['config']['output']['kafka]['partition.hash']['hash'] =  []
# default['filebeat']['config']['output']['kafka]['username'] = ''
# default['filebeat']['config']['output']['kafka]['password'] = ''
# default['filebeat']['config']['output']['kafka]['version'] = '0.8.2.0'
# default['filebeat']['config']['output']['kafka]['metadata']['retry.max'] = 10
# default['filebeat']['config']['output']['kafka]['metadata']['retry.backoff'] = '750ms'
# default['filebeat']['config']['output']['kafka]['metadata']['refresh_frequency'] = '10m'
# default['filebeat']['config']['output']['kafka]['worker'] = 1
# default['filebeat']['config']['output']['kafka]['max_retries'] = 3
# default['filebeat']['config']['output']['kafka]['bulk_max_size'] = 2048
# default['filebeat']['config']['output']['kafka]['timeout'] = '30s'
# default['filebeat']['config']['output']['kafka]['broker_timeout'] = '10s'
# default['filebeat']['config']['output']['kafka]['channel_buffer_size'] = 256
# default['filebeat']['config']['output']['kafka]['keep_alive'] = 0
# default['filebeat']['config']['output']['kafka]['compression'] = 'gzip'
# default['filebeat']['config']['output']['kafka]['max_message_bytes'] = 1000000
# default['filebeat']['config']['output']['kafka]['required_acks'] = 1
# default['filebeat']['config']['output']['kafka]['flush_interval'] = '1s'
# default['filebeat']['config']['output']['kafka]['client_id'] = 'beats'
# default['filebeat']['config']['output']['kafka]['ssl.enabled'] = true
# default['filebeat']['config']['output']['kafka]['ssl.certificate_authorities'] = ['gzip']
# default['filebeat']['config']['output']['kafka]['ssl.verification_mode'] = 'full
# default['filebeat']['config']['output']['kafka]['ssl.supported_protocols'] = ['TLSv1.0','TLSv1.1','TLSv1.2']
# default['filebeat']['config']['output']['kafka]['ssl.certificate'] = '/etc/pki/client/cert.pem'
# default['filebeat']['config']['output']['kafka]['ssl.key'] = '/etc/pki/client/cert.key'
# default['filebeat']['config']['output']['kafka]['ssl.key_passphrase'] = ''
# default['filebeat']['config']['output']['kafka]['ssl.cipher_suites'] = []
# default['filebeat']['config']['output']['kafka]['ssl.curve_types'] = []



# Logging Output attributes
# default['filebeat']['config']['logging']['to_files'] = true
# if node['platform'] == 'windows'
#  default['filebeat']['config']['logging']['files']['path'] = '"#{node['filebeat']['conf_dir']}/logs"'
# end
# default['filebeat']['config']['logging']['files']['rotateeverybytes'] = 10485760
# default['filebeat']['config']['logging']['level'] = 'info'

# default['filebeat']['config']['output']['file']['path'] = '/tmp/filebeat'
# default['filebeat']['config']['output']['file']['filename'] = 'filebeat'
# default['filebeat']['config']['output']['file']['rotate_every_kb'] = 1_000
# default['filebeat']['config']['output']['file']['number_of_files'] = 7
# default['filebeat']['config']['procs']['enabled'] = false
# default['filebeat']['config']['procs']['enabled']['monitored'] = [{'process' => 'mysqld', 'cmdline_grep' => 'mysqld]
