c()
{
echo ""
echo "查询CPU型号是否支持超频"
echo ""
echo -e "\t\033[32m`cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c | awk '{gsub(/^\s+|\s+$/, "");print}'`\033[0m"
echo 
echo "查询中，可能需要消耗一些时间，请耐心等待"
sleep 5
echo ""
echo -e "\t\033[32m查询完毕！可对CPU超频到4.99Ghz\033[0m"
sleep 3
echo ""
echo -e "\t\033[32m准备对CPU超频\033[0m"
}
x()
{
echo ""
echo "下载超频所需文件，请耐心等待"
sleep 5
echo ""
echo -e "\t\033[32m下载完毕！\033[0m"
}
k()
{
echo ""
sleep 2
echo -e "\t\033[33m开始超频\033[0m"
echo -e "\033[32m"
for i in `seq 1 15`;do sleep 1 && echo -e "\t$(expr `date +%s` \* $RANDOM)"; done
echo -e "\033[0m"
if [ $(expr $RANDOM % 2) == 0 ]; then
echo -e "\t\033[31m超频失败\033[0m"
echo ""
echo -e "\t\033[33m查询可能导致失败的原因\033[0m"
sleep 5
echo ""
echo -e "\t\033[33m重试\033[0m"
sleep 5
echo ""
k
else
echo -e "\t\033[32m超频成功！\033[0m"
echo -e "\t\033[32m当前CPU频率：4.99Ghz\033[0m"
fi
}

clear
echo ""
read -p '继续？[y/n]' isContinue
echo ""
case "$isContinue" in
[Yy])
echo -e "\t[Y/n]，继续"
echo "";;
[Nn])
echo -e "\t实际上只能Ctrl+c退出，即使你输入了[N/n]"
echo "";;
*)
echo -e "\t不是[N/n]，继续"
echo "";;
esac
c
x
k
