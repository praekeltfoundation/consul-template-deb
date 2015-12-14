# consul-template-deb
Files for packaging [Consul Template](https://github.com/hashicorp/consul-template) as a .deb file for (at the moment) Ubuntu Trusty.

Builds a .deb package using Praekelt's packaging and deployment tool, [Sideloader](https://github.com/praekelt/sideloader/).

**NOTE:** Currently only Ubuntu 14.04 (a.k.a. Trusty) on amd64 platforms is supported. Other versions of Ubuntu on amd64 that use Upstart should work too but are untested.

Consul Template binary signatures are verified using Hashicorp's PGP public key. The key is available [here](https://hashicorp.com/security.html) and needs to be added to the build user's default keyring for builds to complete.

The built package will include:
* The Consul Template binary
* An Upstart init script
* A basic config file to get things up and running
* An example template file and configuration

#### Some notes:
* The Consul Template binary is installed to `/usr/bin/consul-template`.
* Runtime defaults:
  * `-pid-file`: `/var/run/consul-template.pid`
  * `-config`: `/etc/consul-template/conf.d`
* The above defaults can be overridden by overriding the `CONSUL_TEMPLATE_OPTS` variable in `/etc/default/consul-template`.
