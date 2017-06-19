URL="https://sale.jd.com/act/XUh2CDEPdI6YuzZf.html"
CODE="af555c28-4eaf-4ab4-9f9d-9feb818ce6e5"
HOUR=00
MINUTE=00
LOG_FILE="log_lottery.txt"
LOTTERY_FILE="my_lottery.csv"
if [ -e $LOG_FILE ]; then
    rm $LOG_FILE
fi
#python py/jd_lottery.py -f $LOTTERY_FILE -l $LOG_FILE
python py/jd_lottery.py -c $CODE -hh $HOUR -m $MINUTE -l $LOG_FILE
USER="jd_coupon_log"
PASS="jd123456"
TO="jd_coupon_log@163.com"
if [ -e $LOG_FILE ]; then
    echo "Send email to $TO ..."
    python py/email163.py -u $USER -p $PASS -t $TO -f $LOG_FILE
fi
