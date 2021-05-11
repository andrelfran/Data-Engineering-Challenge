import boto3

def lambda_handler(event, context):
  if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('OrderLocation')
    response = table.put_item(
       Item={
            'status': status,
            'location': location,
         	'dateEvent': dateEvent
        }

    return event



