# manifests/init.pp - module to manage pyzor
class pyzor {
  case $operatingsystem {
    debian,ubuntu: { include pyzor::debian }
    default: { fail("no such \$operatingsystem ($operatingsystem) supported yet!")  }
  }
}
