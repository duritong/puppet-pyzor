# manifests/init.pp - module to manage pyzor
class pyzor(
  $use_shorewall = false
) {
  include pyzor::base

  if $use_shorewall {
    include shorewall::rules::out::pyzor
  }
}
