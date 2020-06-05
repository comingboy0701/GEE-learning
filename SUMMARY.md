# Table of contents

* [介绍](README.md)

## 第一章 安装和配置 <a id="di-1-zhang"></a>

* [第1节 认识GEE](di-1-zhang/1.1-jie.md)
* [第2节 安装步骤](di-1-zhang/1.2-jie/README.md)
  * [2.1节 在 Colaboratory 云端配置 GEE 的开发环境](di-1-zhang/1.2-jie/1.2.1-jie.md)
  * [2.2节 在 window7&python2.7 配置 GEE 的开发环境](di-1-zhang/1.2-jie/1.2.2-jie.md)
  * [2.3节 补充-客户端连接远程服务器的Jupyter](di-1-zhang/1.2-jie/1.2.3-jie.md)
  * [2.4节 补充-安装 anaconda3 以及安装虚拟环境](di-1-zhang/1.2-jie/1.2.4-jie.md)
* [第3节 学习资源](di-1-zhang/1.3-jie.md)
* [第4节-学习方法](di-1-zhang/1.4-jie.md)

## 第三章 GEE数据结构 <a id="di-3-zhang"></a>

* [第1节 总体概括](di-3-zhang/3.1-jie.md)
* [第2节 数据类型](di-3-zhang/3.2-jie/README.md)
  * [2.1节 数据类型-1](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/README.md)
    * [1 ee.String](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/1-jie.md)
    * [2 ee.Number](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/2-jie.md)
    * [3 ee.Array](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/3-jie.md)
    * [4 ee.List](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/4-jie.md)
    * [5 ee.Dictionary](di-3-zhang/3.2-jie/2.1-jie-shu-ju-lei-xing-1/5-jie.md)
  * [2.2节 数据类型-2](di-3-zhang/3.2-jie/2.2-jie/README.md)
    * [1 Geometry](di-3-zhang/3.2-jie/2.2-jie/1-jie.md)
    * [2 Feature](di-3-zhang/3.2-jie/2.2-jie/2-jie.md)
    * [3 Featurecollection](di-3-zhang/3.2-jie/2.2-jie/3-jie.md)
    * [4 Image](di-3-zhang/3.2-jie/2.2-jie/4-jie.md)
    * [5 Imagecollection](di-3-zhang/3.2-jie/2.2-jie/5-jie.md)
  * [2.3节 数据类型-3](di-3-zhang/3.2-jie/2.3-jie/README.md)
    * [1 ee.Date](di-3-zhang/3.2-jie/2.3-jie/1-jie.md)
    * [2 ee.ConfusionMatrix](di-3-zhang/3.2-jie/2.3-jie/2-jie.md)
* [第3节 算法结构](di-3-zhang/3.3-jie/README.md)
  * [3.1节 循坏for,while,map,evaluate和iterate的异同](di-3-zhang/3.3-jie/3.3.1-jie.md)
  * [3.2节 条件if,switch和ee.Algorithms.If的异同](di-3-zhang/3.3-jie/3.3.2-jie.md)
  * [3.3节 异常try catch finally](di-3-zhang/3.3-jie/3.3-jie-1.md)

## 第四章 GEE函数接口 <a id="di-4-zhang"></a>

* [第1节 函数定义](di-4-zhang/4.1-jie.md)
* [第2节 API接口](di-4-zhang/4.2-jie/README.md)
  * [2.1节 连接ee.Join](di-4-zhang/4.2-jie/2.1-jie.md)
  * [2.2节 筛选ee.Filter](di-4-zhang/4.2-jie/2.2-jie.md)
  * [2.3节 核操作](di-4-zhang/4.2-jie/2.3-jie.md)

## 第五章 案例 <a id="di-5-zhang"></a>

* [第1节 matlab读取GEE下载的tif影像并自定义颜色画图显示](di-5-zhang/5.1-jie.md)
* [第2节 python 读取GEE下载的tif影像并自定义颜色画图显示](di-5-zhang/5.2-jie.md)
* [第3节 python和matlab对 tif 影像进行读写操作](di-5-zhang/5.3-jie.md)
* [第4节 植被指数的三种计算方式expression,normalizedDifference,手动计算](di-5-zhang/5.4-jie.md)
* [第5节 统计不同土地利用类型的面积](di-5-zhang/5.5-jie.md)
* [第6节 数字化训练样本利用SVM进行土地利用分类](di-5-zhang/5.6-jie.md)
* [第7节 数字化训练样本进行土地利用分类的个人经验](di-5-zhang/5.7-jie.md)
* [第8节 通过阈值法对水体信息进行提取](di-5-zhang/5.8-jie.md)
* [第9节 植被指数的计算\(1\)-宽带绿度](di-5-zhang/5.9-jie.md)
* [第10节 植被指数的计算\(2\)-窄带绿度](di-5-zhang/5.10-jie.md)
* [第11节 快速检测山东山火面积和明火位置](di-5-zhang/5.11-jie.md)

## 第六章 arcgis学习笔记 <a id="di-6-zhang"></a>

* [第1节 批量裁剪和批量重采样](di-6-zhang/6.1-jie.md)
* [第2节 根据DEM提取河网](di-6-zhang/6.2-jie.md)

## 第七章 matlab学习笔记 <a id="di-7-zhang"></a>

* [第1节 matlab画图01-双纵轴](di-7-zhang/7.1-jie.md)
* [第2节 matlab画图02-四纵轴](di-7-zhang/7.2-jie.md)
* [第3节 matlab画图03-多纵轴](di-7-zhang/7.3-jie.md)
* [第4节 matlab画图04-gif\|avi](di-7-zhang/7.4-jie.md)
* [第5节 matlab画图05-gif\|avi](di-7-zhang/7.5-jie.md)
* [第6节 matlab画图06-gif\|avi](di-7-zhang/7.6-jie.md)

## 第八章 Python学习笔记 <a id="di-8-zhang"></a>

* [第1节 python画图01-双纵轴](di-8-zhang/8.1-jie.md)
* [第2节 python画图02-三纵轴](di-8-zhang/8.2-jie.md)
* [第3节 python画图03-相关性](di-8-zhang/8.3-jie.md)

## 第九章 CV学习笔记

