redis-server /opt/conf8101
redis-server /opt/conf8102
redis-server /opt/conf8103
redis-server /opt/conf8104
redis-server /opt/conf8105
redis-server /opt/conf8106

lip=`hostname --ip-address`

ip="$lip:8101 $lip:8102 $lip:8103"
redis-cli -a aaa -p 8101 --cluster create $ip --cluster-replicas 0 << EOF
yes
EOF


ip="$lip:8104 $lip:8105 $lip:8106"

redis-cli -a aaa -p 8104 --cluster create $ip --cluster-replicas 0 << EOF
yes
EOF

bash -i