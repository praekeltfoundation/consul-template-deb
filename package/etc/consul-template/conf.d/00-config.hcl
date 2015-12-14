# Consul Template configuration file

# The address to the Consul HTTP API
consul = "127.0.0.1:8500"

# token = "abcd1234" // May also be specified via the envvar CONSUL_TOKEN

retry = "10s"
max_stale = "10m"
log_level = "warn"

## Hashicorp Vault settings
# vault {
#   address = "https://vault.service.consul:8200"
#   token = "abcd1234" // May also be specified via the envvar VAULT_TOKEN
#   renew = true
#   ssl {
#     enabled = true
#     verify = true
#     cert = "/path/to/client/cert.pem"
#     ca_cert = "/path/to/ca/cert.pem"
#   }
# }

## Consul basic HTTP auth settings
# auth {
#   enabled = true
#   username = "test"
#   password = "test"
# }

## Consul SSL settings
# ssl {
#   enabled = true
#   verify = false
#   cert = "/path/to/client/cert.pem"
#   ca_cert = "/path/to/ca/cert.pem"
# }

## Consul Template deduplication of template rendering
# deduplicate {
#   enabled = true
#   prefix = "consul-template/dedup/"
# }

# Template configurations should be stored in `/etc/consul-template/conf.d`.
# Templates themselves should be stored in `/etc/consul-template/templates`.
# This is by convention - Consul Template will recursively (and in lexicographic
# order) load and merge all the configuration files in
# `/etc/consul-template/conf.d`. Templates can be stored anywhere, but it is
# useful to have a common place for them.
