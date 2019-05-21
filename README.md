# Introduce

The famous R packages for Chinese word segmentation are Rwordseg and [jieba](https://github.com/qinwf/jiebaR), this case I use Jieba to segment **chines compamy name**

some reference:

- 分詞(jiebaR):
    jiebaR:https://github.com/qinwf/jiebaR
    https://blog.csdn.net/wangishero/article/details/52570505
    https://blog.csdn.net/sinat_26917383/article/details/51056068
    https://blog.csdn.net/hongweigg/article/details/49895473
    *R语言做文本挖掘 Part2分词处理:https://blog.csdn.net/cl1143015961/article/details/44108143

- R语言Data Frame数据框常用操作:https://www.cnblogs.com/studyzy/p/4316118.html
-subset如何表达符合多个条件:https://www.douban.com/group/topic/63379757/
- r语言中,with,which用法
-排序:https://www.cnblogs.com/emanlee/p/4255898.html
-R中排序函数总结:https://blog.csdn.net/kelanj/article/details/80945540


install.packages("jiebaR")
library('jiebaRD')
library('jiebaR')
library(readxl)

# Steps:
1. 導入數據
2.分詞器分詞
3.过滤掉1个字的词
4.計算詞頻
5.創建要過濾掉的詞(例如"省","市","县","有限公司"...)
6.过滤掉特定條件
7.过滤掉只出现过一次的词
8.频数排序
9.詞彙頻率圖
10.文字雲

# R functions


