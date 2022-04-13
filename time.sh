package shell
while true
do
sleep 900s
osascript -e 'display alert "开始休息！！" as critical'
sleep 120s
osascript -e 'display alert "开始工作！！" as critical'

done
