$day=`date -uformat %j`

echo ""
echo "问题：今天是一年中的第几天？"
echo "答案：$day"
echo ""

$time=get-date
$utc_time=$time.ToUniversalTime()

echo "问题：现在的具体时间是多少？"
echo "答案：$time"
echo "答案：$utc_time (UTC)"
echo ""

pause