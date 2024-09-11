# dN_dS

本次操作在github上的Codespaces上面进行。  
需要两个软件：  
- **[hyphy](https://github.com/veg/hyphy/archive/refs/tags/2.5.62.tar.gz)**  
- **[paml](https://github.com/abacus-gene/paml/releases/download/4.10.7/paml-4.10.7-linux-X86_64.tgz)**  

数据说明：  
    本次操作采用的是软件paml自带的数据集HIVNSsites（在paml软件的examples文件夹下） 里面主要是比对文件（phy格式），树文件，和配置文件（codeml.ctl）

## 基本知识  
- 选择压力（Selective Pressure） 是指自然环境对生物个体施加的一种压力，促使适应环境的个体生存下来，不适应的个体被淘汰，从而推动种群基因频率的变化。选择压力可以分为正选择、负选择和中性选择。  
- 同义替换(synonymous substitution) 基因编码序列中一个位点的替换，没有造成氨基酸产物的变化，这种替换被称为同义替换。  
- 非同义替换(non-synonymous substitution) 基因编码序列中一个位点的替换，造成氨基酸产物的变化，这种替换被称为非同义替换。  
- 同义替换率(synonymous substitutions rate, dS或KS) ：每同义位点的同义碱基替代数 用dS或KS表示。  
- 非同义替换率(non-synonymous substitutions rate, dN或KA) ：每非同义位点的非同义碱基替代数 用dN或KA表示。  
- omega(ω) 值(dN/dS或KA/KS比值的估计)  
    >当 ω > 1 时，意味着正选择 (positive selection)  
    >当 0 < ω < 1 意味着负选择 (negative selection)  
    >当 ω = 1 则表示中性进化(neutral selection)，即不受选择。  

## 使用
### paml 使用
```shell
/workspaces/dN_dS/software/paml-4.10.7/bin/codeml /workspaces/dN_dS/HIVNSsites/codeml.ctl
```
### hyphy 使用
```shell
/workspaces/dN_dS/software/hyphy-2.5.62/bin/hyphy BUSTED --alignment /workspaces/dN_dS/HIVNSsites/HIVenvSweden.txt /workspaces/dN_dS/HIVNSsites/HIVenvSweden.trees --output test.json
```


或者进入hyphy交互式环境操作：
```shell
$/workspaces/dN_dS/software/hyphy-2.5.62/hyphy
$1 #选择（1）
$5 #然后选择（5）BUSTED
$/workspaces/dN_dS/HIVNSsites/HIVenvSweden.txt #根据提示输入比对序列文件目录
$/workspaces/dN_dS/HIVNSsites/HIVenvSweden.trees #根据提示输入树文件目录
```

## 结果解读
### paml
看结果文件，这里是mcl文件
- 看各个模型的似然值：
```shell
......
NSsites Model 0: one-ratio
......
lnL(ntime: 23  np: 25):  -1137.688190      +0.000000
......
NSsites Model 1: NearlyNeutral (2 categories)
......
lnL(ntime: 23  np: 26):  -1114.641736      +0.000000
......
NSsites Model 2: PositiveSelection (3 categories)
......
lnL(ntime: 23  np: 28):  -1106.445004      +0.000000
......
NSsites Model 7: beta (10 categories)
......
lnL(ntime: 23  np: 26):  -1115.395312      +0.000000
......
NSsites Model 8: beta&w>1 (11 categories)
......
lnL(ntime: 23  np: 28):  -1106.388268      +0.000000
......
```
- 然后进行似然比检验（LRT）:  
$LR = 2 \times \rvert lnL_1-lnL_2 \rvert$   
- 然后对进行卡方检验($\chi^2$ Test),使用paml里的chi2程序
```shell
/workspaces/dN_dS/software/paml-4.10.7/bin/chi2 2 LR
```
| **Model**   | **np**          | **lnL**    | **P** **、ω**                                                |
| ----------- | --------------- | ---------- | ------------------------------------------------------------ |
| **m0**      | 25              | -1137.6882 | ω=0.90129                                                    |
| **m1a**     | 26              | -1114.6417 | p0=0.48418  p1=0.51582                                       |
|             |                 |            | ω0=0.07885   ω1=1                                            |
| **m2a**     | 28              | -1106.445  | p0=0.37712    p1=0.44169   p2=0.18119                        |
|             |                 |            | ω0=0.05998   ω1=1    ω2=3.62564                              |
| **m7a**     | 26              | -1115.3953 | p: 0.10000   0.10000 0.10000 0.10000   0.10000 0.10000 0.10000   0.10000 0.10000 0.10000 |
|             |                 |            | ω:   0.00000 0.00054 0.01687   0.14805 0.52843 0.87534   0.98376 0.99905 0.99999   1.00000 |
| **m8a**     | 28              | -1106.3883 | p:  0.07995 0.07995 0.07995   0.07995 0.07995 0.07995   0.07995 0.07995 0.07995   0.07995 0.20050 |
|             |                 |            | ω: 0.00000 0.00087   0.01830 0.12591 0.42349   0.77529 0.95196 0.99483   0.99983 1.00000 3.47036 |
| **M1a-M2a** | 2*｜lnL1-lnL2｜ | 16.393464  | df = 2 prob = 0.000275553 = 2.756e-04<0.005                  |
| **M7a-M8a** | 2*｜lnL1-lnL2｜ | 18.014088  | df = 2 prob = 0.000122544 = 1.225e-04<0.005                  |



### hyphy  
看json文件,将json文件上传至[Hyphy Vison](http://vision.hyphy.org/) 网站，查看结果
