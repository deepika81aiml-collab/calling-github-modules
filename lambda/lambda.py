def lambda_handler(event, context):
    print("Hello World from Lambda!")

    return {
        "statusCode": 200,
        "body": "Hello World"
    }