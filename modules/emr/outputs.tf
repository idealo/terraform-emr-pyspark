output "id" {
  value = "${aws_emr_cluster.emr-spark-cluster.id}"
}

output "name" {
  value = "${aws_emr_cluster.emr-spark-cluster.name}"
}

output "master_public_dns" {
  value = "${aws_emr_cluster.emr-spark-cluster.master_public_dns}"
}
