### to add node###
resource "null_resource" "addNode" {
  provisioner "remote-exec" {
      inline = [
        "docker login -u token -p '${var.reg_token}' ${var.dockerRegistry}",
        "cd ${var.clusterLocation}",
"docker run -e LICENSE=accept --net=host -v $(pwd):/installer/cluster ${var.dockerRegistry}/mdelder/icp-inception:${var.image_tag} ${var.nodeType} -l ${var.NewNodeIPs}",
  "echo ${var.dependsOn}",
      ]
  connection {
    host = "${var.bootIP}"
    type     = "ssh"
    user     = "root"
    password = "${var.root_password}"
  }
 }
}