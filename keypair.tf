resource "aws_key_pair" "kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1" {
  key_name   = "kubernetes.ops-work.net-a0:63:0f:f8:e5:bb:f9:e3:f6:3c:f6:33:ac:19:78:d1"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.ops-work.net-a0630ff8e5bbf9e3f63cf633ac1978d1_public_key")}"
}