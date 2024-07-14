# AppSync subscription demo

## pre-requisites

1. DynamoDB table created (check the `infrastructure` folder to find the Terraform code)
2. AppSync configured with DynamoDB integration (do it manually using the AWS Console, here you find how: [https://www.playingaws.com/posts/getting-started-with-aws-appsync-a-practical-approach-to-graphql/#setting-up-your-first-graphql-api-with-aws-appsync](https://www.playingaws.com/posts/getting-started-with-aws-appsync-a-practical-approach-to-graphql/#setting-up-your-first-graphql-api-with-aws-appsync))

## Run the website

1. Update your credentials in the code

```code
const AWS_REGION = "your-region"
const APPSYNC_ID = "your-id-included-in-the-host";
const APPSYNC_API_KEY = "your-api-key";
```

2. This is an HTML static website. Just open the html file in your browser
