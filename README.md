# Learning: This is my learning summary

# 阿里云 maven仓库地址配置

# 1. maven 配置文件配置settings.xml中设置mirror节点
<mirror>  
    <id>nexus-aliyun</id>  
    <mirrorOf>central</mirrorOf>    
    <name>Nexus aliyun</name>  
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>  
</mirror> 

# 2. pom.xml 配置repository节点
<repository>
    <id>nexus-aliyun</id>
    <name>Nexus aliyun</name>
    <layout>default</layout>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    <snapshots>
        <enabled>false</enabled>
    </snapshots>
    <releases>
        <enabled>true</enabled>
    </releases>
</repository>
