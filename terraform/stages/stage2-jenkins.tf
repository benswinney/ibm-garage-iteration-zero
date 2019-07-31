module "dev_tools_jenkins_release" {
  source = "../modules/tools/jenkins_release"

  ibmcloud_api_key                              = "${module.dev_cluster.ibmcloud_api_key}"
  resource_group_name                           = "${module.dev_cluster.resource_group_name}"
  cluster_ingress_hostname                      = "${module.dev_cluster.ingress_hostname}"
  cluster_config_file                           = "${module.dev_cluster.config_file_path}"
  cluster_name                                  = "${module.dev_cluster.name}"
  server_url                                    = "${module.dev_cluster.server_url}"
  cluster_type                                  = "${var.cluster_type}"
  releases_namespace                            = "${module.dev_cluster_namespaces.tools_namespace_name}"
}