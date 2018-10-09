### 数据下载地址自动生成
### 国家海洋环境监测中心
### 管理员：李炳南
### 时间：2015年12月15日
###______________________________________________

$RUNDIR="D:\01-Working\2017\20171229-chen-数据下载"
cd $RUNDIR

#年份
$YEAR=2017

#不同变量说明
$TIT='A', 'T'
$NAD='L3m_MO_SST_sst_4km', 'L3m_MO_RRS_Rrs_488_4km', 'L3m_MO_RRS_Rrs_531_4km', 'L3m_MO_RRS_Rrs_547_4km', 'L3m_MO_RRS_Rrs_645_4km', 'L3m_MO_RRS_Rrs_667_4km', 'L3m_MO_CHL_chlor_a_4km', 'L3m_MO_PAR_par_4km'

#遍历A、T
for($i=0;$i -le $TIT.Count-1;$i++)
{
    #遍历不同的内容
    for($j=0;$j -le $NAD.Count-1;$j++)
    {
        #遍历不同的月份
        for($m=1;$m -le 12;$m++)
        {
            $MONTH=$m

            switch($MONTH)
            {
                1 {$monstr="$YEAR"+"001"+"$YEAR"+"031"}
                2 {$monstr="$YEAR"+"032"+"$YEAR"+"059"}
	            3 {$monstr="$YEAR"+"060"+"$YEAR"+"090"}
	            4 {$monstr="$YEAR"+"091"+"$YEAR"+"120"}
	            5 {$monstr="$YEAR"+"121"+"$YEAR"+"151"}
	            6 {$monstr="$YEAR"+"152"+"$YEAR"+"181"}
	            7 {$monstr="$YEAR"+"182"+"$YEAR"+"212"}
	            8 {$monstr="$YEAR"+"213"+"$YEAR"+"243"}
	            9 {$monstr="$YEAR"+"244"+"$YEAR"+"273"}
	            10 {$monstr="$YEAR"+"274"+"$YEAR"+"304"}
	            11 {$monstr="$YEAR"+"305"+"$YEAR"+"334"}
	            12 {$monstr="$YEAR"+"335"+"$YEAR"+"365"}
            }

            if($YEAR % 4 -eq 0)
            {
                switch($MONTH)
                {
                    1 {$monstr="$YEAR"+"001"+"$YEAR"+"031"}
                    2 {$monstr="$YEAR"+"032"+"$YEAR"+"060"}
	                3 {$monstr="$YEAR"+"061"+"$YEAR"+"091"}
	                4 {$monstr="$YEAR"+"092"+"$YEAR"+"121"}
	                5 {$monstr="$YEAR"+"122"+"$YEAR"+"152"}
	                6 {$monstr="$YEAR"+"153"+"$YEAR"+"182"}
	                7 {$monstr="$YEAR"+"183"+"$YEAR"+"213"}
	                8 {$monstr="$YEAR"+"214"+"$YEAR"+"244"}
	                9 {$monstr="$YEAR"+"245"+"$YEAR"+"274"}
	                10 {$monstr="$YEAR"+"275"+"$YEAR"+"305"}
	                11 {$monstr="$YEAR"+"306"+"$YEAR"+"335"}
	                12 {$monstr="$YEAR"+"336"+"$YEAR"+"366"}
                }
            }

            #文件名称
            $FILE=$TIT[$i]+$monstr+"."+$NAD[$j]+".nc"

            #获取下载地址
            $SITE="https://oceandata.sci.gsfc.nasa.gov/cgi/getfile/" + $FILE

            #打印地址
            $SITE
        }
        
        
    }
}







