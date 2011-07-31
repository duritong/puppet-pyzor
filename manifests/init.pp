# manifests/init.pp - module to manage pyzor
class pyzor {
  case $operatingsystem {
    default: { include pyzor::base  }
  }
}
