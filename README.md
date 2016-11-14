Pulling From Docker Hub:
```
$ docker pull suzukaze/centos6.8-ruby
$ docker run -it suzukaze/centos6.8-ruby /bin/bash
[root@9b51aa33ef41 ~]# irb
irb(main):001:0> puts "hello, ruby"
hello, ruby
=> nil
```

Building a Dockerfile:
```
$ docker build -t centos6.8-ruby:2.3.0 
$ docker run -it centos6.8-ruby:2.3.0 /bin/bash
[root@834d2f24f9d3 ~]# irb
irb(main):001:0> puts "hello, ruby"
hello, ruby
=> nil
```
