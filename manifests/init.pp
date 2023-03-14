#
# @summary
#   Install foreman_envsync
#
# @param image
#   OCI image to use
#
# @param image_tag
#   OCI image tag to use
#
class foreman_envsync (
  String[1] $image = 'ghcr.io/lsst-it/foreman_envsync',
  String[1] $image_tag = 'latest',
) {
  $params = {
    'image'     => $image,
    'image_tag' => $image_tag,
  }

  file { '/bin/foreman_envsync':
    ensure  => file,
    mode    => '0755',
    content => epp("${module_name}/foreman_envsync.epp", $params),
  }
}
