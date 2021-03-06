## Introduce

The famous R packages for Chinese word segmentation are Rwordseg and [jiebaR](https://github.com/qinwf/jiebaR), this case I use JiebaR to segment **chines compamy name**

```
install.packages('jiebaRD')
install.packages('jiebaR')
install.packages(readxl)
install.packages(ggplot2)
linstall.packages(wordcloud)
linstall.packages(wordcloud2)

```
## Steps:
1. 導入數據
2. 分詞器分詞
3. 过滤掉**1个字**的词
4. 計算詞頻
5. 創建要過濾掉的詞(例如"省","市","县","有限公司"...)
6. 过滤掉step5中,特定條件的詞
7. 过滤掉只**出现过一次**的词
8. 频数排序
9. 詞彙頻率圖&文字雲
10. 對原字段進行關鍵詞匹配歸類

![gemo_bar](https://github.com/erlcssont29i/Chinese-word-segmentation/blob/master/demo_bar_0515.jpeg)
![123](https://github.com/erlcssont29i/Chinese-word-segmentation/blob/master/wordcloud0515.jpeg)

## R functions
- 分詞器&分詞: worker( ),  segment( )
- 詞頻: freq( )
- 關鍵詞比對:grep( )
- with( ),which( )
- 子集(不)符合多條件: subset( )
- 排序: sort( ),rank( ),order( )
- 文字雲: wordcloud2( ) 

## Other reference :
- [搜狗詞庫](https://pinyin.sogou.com/dict/cate/index/167) ![123](https://github.com/erlcssont29i/Chinese-word-segmentation/blob/master/%E6%90%9C%E7%8B%97%E8%A9%9E%E5%BA%AB.png)

- About jiebaR:

    - https://blog.csdn.net/wangishero/article/details/52570505
    - https://blog.csdn.net/sinat_26917383/article/details/51056068
    - https://blog.csdn.net/hongweigg/article/details/49895473
    - https://blog.csdn.net/cl1143015961/article/details/44108143
    

- [R语言Data Frame数据框常用操作](https://www.cnblogs.com/studyzy/p/4316118.html)
- [subset如何表达符合多个条件](https://www.douban.com/group/topic/63379757/)
- [數據框排序](https://www.cnblogs.com/emanlee/p/4255898.html)
- [R中排序函数总结](https://blog.csdn.net/kelanj/article/details/80945540)
- [ggplot2包介绍学习](http://www.cnblogs.com/nxld/p/6059603.html)
- [绘制条形图（ggplot2）](https://blog.csdn.net/qq_42564846/article/details/82786533)

