import boto3
from botocore.exceptions import ClientError

def lambda_handler(event, context):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('OrderLocation')

    try:
        response = table.get_item(Key={'orderID': orderID})
    except ClientError as e:
        print(e.response['Error']['Message'])
    else:
        return response['Item']

    return event.response
