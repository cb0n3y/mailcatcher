# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mailcatcher::setruby
class mailcatcher::setruby {
  package { 'ruby':
    ensure       => '2.7',
    # name     => $mailcatcher::ruby_version,
    provider     => $mailcatcher::module_mngmt,
    # enable_only  => true,
  }
  package { $mailcatcher::packages:
    ensure => present,
  }

  # Package['enable ruby module'] -> Package['ruby-devel']
  Package['ruby'] -> Package['ruby-devel']
}
