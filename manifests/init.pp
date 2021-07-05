# manifests/init.pp - module to manage pyzor
class pyzor (
  $use_firewall = false
) {
  include pyzor::base

  if $use_firewall {
    include firewall::rules::out::pyzor
  }
}
