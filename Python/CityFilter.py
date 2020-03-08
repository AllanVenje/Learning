# -*- encoding:utf-8 -*-
# Copyright (c) 2020 MIT.
# All rights reserved.
# Author: Venje Zhu
# Date: 2020/3/6
# from cpca import drawer, transform
from chinese_province_city_area_mapper.transformer import CPCATransformer
from chinese_province_city_area_mapper import myumap
import pandas as pd
import sys

def test():
    sample_str = ["江西省南昌市东湖区中大青山湖花园25栋1单元202室",
                 "遵义市红花岗区海尔大道东方星城B4-27-4",
                 "上海春城闵行区莲花南路1108弄39号502，陈斌 ，188 2120 0363",
                 "湖南省长沙市雨花区万科金域华府一期8栋202",
                 "福建省鼓楼区软件大道89号",
                 "上海市浦东新区张杨路1515弄国际华城12号2903室"]
    my_cpca = CPCATransformer(myumap.umap)
    addr_final = my_cpca.transform(sample_str)
    print(addr_final)

if __name__ == '__main__':
    # test()
    if len(sys.argv) < 2:
        print("请按照格式输入：CityFilter [Excel文件路径]")
    city_location_str = []
    df = pd.read_excel(sys.argv[1], usecols=[0])
    data = df.loc[:]
    print("读取指定行的数据：\n{0}".format(data))
    for raw in df.values:
        str = ''.join(raw)
        city_location_str.append(str)
    print("开始解析省市区数据，请稍等......\n")
    # df_addr = pd.DataFrame(transform(city_location_str, open_warning=False, lookahead=20))
    my_cpca = CPCATransformer(myumap.umap)
    my_cpca.umap = {"鼓楼区":"南京市", "大理市":"大理市", "朝阳区":"北京市"}
    df_addr = pd.DataFrame(my_cpca.transform(city_location_str))
    print("数据处理完毕，分类显示如下：\n")
    print(df_addr)
    df_addr.insert(loc=0, column="原始收发地址", value=city_location_str)
    print(">>> 正在生成新的Excel地址簿，请稍等... <<<")
    df_addr.to_excel("ReNewAddress.xlsx", sheet_name="renew")
    print(">>> Excel生成结束 <<<")
