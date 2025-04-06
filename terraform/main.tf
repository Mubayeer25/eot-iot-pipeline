resource "aws_eks_cluster" "eot" {
  name     = "iot-pipeline"
  role_arn = aws_iam_role.cluster.arn
  vpc_config {
    subnet_ids = [aws_subnet.main.id]
  }
}