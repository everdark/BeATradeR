###�T�w����(Fixed Fraction)###
###�ݭn��Jprofit�l�q�V�q###

source("6_Stop_no_Limit.R", encoding = 'BIG5',echo = FALSE) ### �ݭn��Jprofit�l�q�V�q ##	 

initM=150000		##��l���

capital=initM	##�{�����
delta=30000
risk=0.02		##���I���

FixedRat=rep(0,length(profit))
m=1			##��m�Ѷ}�l
PS=1

while (PS>=1 && m<length(profit)){
	if (capital<initM){PS=1}else{
	PS=floor((1+(1+8*(capital-initM)/delta)^0.5)/2)}	## �p���m�Ѫ��U��f��
capital=capital+PS*profit[m]*50				## �p���m�Ѫ����
FixedRat[m]=PS*profit[m]
m=m+1}

###############�Z�ļҲ�#######
source("performance Fun.R", encoding = 'BIG5',echo = FALSE)
par(mfrow=c(1,2))
performance(profit)
performance(FixedRat)