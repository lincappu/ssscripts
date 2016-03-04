# ssscripts
this script is set up to ss proxy server automaticly.                                                          
环境：centos7，其他环境运行有问题。     
下载下来后，运行first.sh即可。     
如果只是想在某个服务器上搭建ss proxy server，只需要first.sh和ssscripys.tar.gz这两个文件即可。
如果有一台主服务器，所有的文件都放在这个主服务器上，搭建ss proxy server时从这个主服务器拷贝文件到要搭建的服务器上，里面有一个expect的scp脚本， 直接运行0.sh，输入ip，自拷贝文件到服务器上，然后到服务器上运行first.sh即可。                                                       
完成。       
