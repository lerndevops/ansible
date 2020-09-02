## AWX Setup Ubuntu 

``` 
pre-req

ubuntu 18.04 with 2cpu 4GB Ram 

```

1. apt install python3

2. apt install python3-pip

3. apt install python3-docker

4. install docker 

5. pip3 install docker-compose

6. install ansible 

7. cd /tmp ; git clone https://github.com/ansible/awx

8. cd /tmp/awx/installer

9. ansible-playbook -i inventory install.yml
