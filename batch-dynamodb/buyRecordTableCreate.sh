aws dynamodb create-table --endpoint-url http://0.0.0.0:8000 --table-name buyRecord --attribute-definitions AttributeName=date,AttributeType=S AttributeName=time,AttributeType=S AttributeName=product,AttributeType=S AttributeName=userId,AttributeType=S --key-schema AttributeName=date,KeyType=HASH AttributeName=time,KeyType=RANGE --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 --global-secondary-indexes '[{"IndexName":"user-buy","Projection":{"ProjectionType":"ALL"},"ProvisionedThroughput":{"WriteCapacityUnits":1,"ReadCapacityUnits":1},"KeySchema":[{"KeyType":"HASH","AttributeName":"userId"},{"KeyType":"RANGE","AttributeName":"product"}]}]'
