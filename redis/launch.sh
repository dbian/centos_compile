redis-server /opt/conf8101
redis-server /opt/conf8102
redis-server /opt/conf8103
redis-server /opt/conf8104
redis-server /opt/conf8105
redis-server /opt/conf8106



ip="127.0.0.1:8101 127.0.0.1:8102 127.0.0.1:8103"
redis-cli -a aaa -p 8101 --cluster create $ip --cluster-replicas 0 << EOF
yes
EOF


ip="127.0.0.1:8104 127.0.0.1:8105 127.0.0.1:8106"

redis-cli -a aaa -p 8104 --cluster create $ip --cluster-replicas 0 << EOF
yes
EOF

while :
do
sleep 1000
done