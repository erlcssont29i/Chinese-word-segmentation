install.packages("jiebaR")
library('jiebaRD')
library('jiebaR')
library(readxl)

# 導入數據
company <- read_excel("query_hive_5538.xlsx")
wk= worker()  #wk= worker(bylines = TRUE) 分段分詞

#分詞
words<- segment(company$company_name,wk)

#过滤掉1个字的词
words<- subset(words,nchar(as.character(words))>1)

# 計算詞頻

# test.freq =table(unlist(test))
word.freq = freq(words)#<- table(unlist(test))
#test.freq = freq(unlist(test))#<- table(unlist(test))
#test.freg= test.freq[order(-test.freq)]

#过滤掉特定條件
   r语言常用函数apply及subset函数: https://blog.csdn.net/lijinxiu123/article/details/51378700

nono<-c('公司','有限公司','有限责任','分公司','实业公司','jingdiejn','chengpu','qiyu','shanxiang','ruiwen','jindi','jinhong','leichi',
        'jinchuang','ynsw','yingyao','chuangyou','benyi','jiuyi','diejin','pntest','nrsm','ydzq','tianqi','baodiesh')

city<- grep('市',word.freq$char, value = T)
county<- grep('县',word.freq$char, value = T)
province<- grep('省',word.freq$char, value = T)
area<-grep('区',word.freq$char, value = T)


china_area<-c(
  '北京','天津','上海','重庆',
  '河北','石家庄','保定','张家口','承德','唐山','秦皇岛','邢台','沧州','衡水','邯郸','廊坊',
  '山西','太原','大同','朔州','阳泉','长治','晋城','忻州','晋中','临汾','运城','吕梁',
  '内蒙古','呼和浩特','包头','乌海','赤峰','通辽','呼伦贝尔','鄂尔多斯','乌兰察布','巴彦淖尔','锡林郭勒','阿拉善','兴安',
  '辽宁','沈阳','大连','锦州','抚顺','本溪','铁岭','辽阳','朝阳','鞍山','丹东','营口','盘锦','葫芦岛','阜新',
  '吉林','长春','白城','松原','通化','辽源','四平','白山','延边',
  '黑龙江','哈尔滨','齐齐哈尔','黑河','大庆','伊春','鹤岗','佳木斯','双鸭山','七台河','鸡西','牡丹江','绥化',
  '江苏','南京','苏州','扬州','徐州','泰州','常州','宿迁','淮安','连云港','南通','镇江','无锡','盐城',
  '浙江','杭州','绍兴','宁波','湖州','衢州','台州','温州','嘉兴','金华','舟山','丽水',
  '安徽','合肥','安庆','宿州','阜阳','淮南','淮北','毫州','蚌埠','六安','宣城','池州','滁州','马鞍山','黄山','铜陵','芜湖','巢湖',
  '福建','福州','厦门','泉州','漳州','三明','莆田','龙岩','南平','宁德',
  '江西','南昌','九江','鹰潭','赣州','新余','上饶','景德镇','宜春','抚州','吉安','萍乡',
  '山东','济南','青岛','淄博','枣庄','东营','潍坊','烟台','济宁','泰安','威海','日照','莱芜','德州','临沂','聊城','滨州','荷泽',
  '河南','郑州','开封','洛阳','焦作','鹤壁','新乡','安阳','濮阳','许昌','漯河','南阳','商丘','信阳','周口','平顶山','三门峡','驻马店',
  '湖北','武汉','黄石','十堰','宜昌','荆州','襄樊','荆门','鄂州','孝感','黄冈','咸宁','随州',
  '湖南','长沙','株洲','湘潭','衡阳','邵阳','岳阳','益阳','郴州','永州','常德','怀化','娄底','张家界',
  '广东','广州','深圳','珠海','汕头','韶关','河源','梅州','惠州','汕尾','东莞','中山','江门','佛山','阳江','湛江','茂名','肇庆','清远','云浮','潮州','揭阳',
  '广西','南宁','桂林','柳州','梧州','钦州','贺州','北海','贵港','玉林','河池','来宾','崇左','防城港',
  '海南','海口','三亚','三沙',
  '四川','成都','自贡','德阳','泸州','绵阳','内江','广元','遂宁','乐山','南充','宜宾','广安','达州','巴中','雅安','眉山','资阳','攀枝花','绵竹','资阳','阿坝藏族','甘孜','凉山',
  '贵州','贵阳','遵义','安顺','六盘水','毕节地区','铜仁地区','黔西南州','黔东南州','黔南州',
  '云南','昆明','曲靖','玉溪','保山','昭通','丽江','思茅','临沧',
  '西藏','拉萨','昌都地区','林芝地区','山南地区','日喀则地区','那曲地区','阿里地区',
  '陕西','西安','宝鸡','咸阳','铜川','渭南','延安','汉中','榆林','安康','商洛',
  '甘肃','兰州','金昌','白银','天水','武威','张掖','庆阳','平凉','定西','陇南','嘉峪关','酒泉','临夏','甘南',
  '青海','西宁','海东','海西','海南','海北','黄南','果洛','玉树','新疆')


other_area<-c(
  '中国','长江','北方','山区','西南','中海','东南','南海','城镇','蓬江区','海外','葫芦岛','台湾','古冶区','华夏',
  '乌鲁木齐','宁夏','前海','襄阳','义乌','长兴','南海','柯桥区','银川','顺德','广西南宁','北京华','香港','滨海',
  '大理','吴江','双江','鄞州','四海','兴达','丹阳','永安','巴州','金泰','大唐','湖南华','镇海','英国')

# test_1=subset(word.freq,char != '有限公司'& char != '上海')
# test_2=with(word.freq,word.freq[which(char %in% c('有限公司','上海')),])
# 在iris数据集里，筛选Species字段，以sa结尾的行。subset(iris,grepl('sa$',Species))

word.freq=subset(word.freq,!(char %in% nono) & !(char %in% city) & !(char %in% county) & !(char %in% province) & !(char %in% area)
                 &!(char %in% china_area) &!(char %in% other_area)
                 )

#按词频过滤词，过滤掉只出现过一次的词，这里可以根据需要调整过滤的词频数
word.freq_2=subset(word.freq, word.freq$freq>=2)

#频数排序(*大 到 小用"-")
    # R软件中排序:sort(),rank(),order()
word.freq_2= word.freq_2[order(-word.freq_2$freq),]


#  company_tech<-subset(company,grepl('互联网',fname))
# segment(慈溪市市场监督管理局宗汉市场监管所,wk)



# 詞彙頻率圖
library(ggplot2)



# 文字雲
library(wordcloud)
mycolors<- brewer.pal(8,"Dark2")
windowsFonts(myFont=windowsFont("华文彩云"))
weibo.top150 <- head(word.freq_2,150) #取前150个词


wordcloud(word.freq_2$char,word.freq_2$freq,random.order=FALSE,
random.color=FALSE,colors=mycolors,family="myFont")

