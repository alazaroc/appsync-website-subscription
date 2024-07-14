resource "aws_dynamodb_table" "messages" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = var.dynamodb_table_name
  }
}


resource "aws_dynamodb_table_item" "item_1" {
  table_name = aws_dynamodb_table.messages.name
  hash_key = aws_dynamodb_table.messages.hash_key

  item = <<ITEM
{
  "id": {"S": "1"},
  "message": {"S": "This is a notification"}
}
ITEM
}
