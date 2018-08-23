sudo docker build -t transaction-aggregator transaction-aggregator
id_ta=$(sudo docker images -q transaction-aggregator)
echo $id_ta > transaction-aggregator/id_ta
sudo docker tag transaction-aggregator ec2-54-194-196-190.eu-west-1.compute.amazonaws.com:5000/transaction-aggregator:$id_ta
sudo docker push ec2-54-194-196-190.eu-west-1.compute.amazonaws.com:5000/transaction-aggregator:$id_ta
