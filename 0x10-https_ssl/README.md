# __ 0x10-https_ssl __

This projject involves further configuration of my domain aly-mtsumi.tech by adding subdomains:
    * www points to lb-01 IP, the load balancer with HA proxy
    * lb-01 to points to lb-01's IP, the load balancer 
    * web-01 points to your web-01 IP, the first server
    * web-02 to web-02 IP




## __Tasks__ :
### __ 0-World wide web __ :
 - A Bash script that will display information about subdomains
### __ 1-HAproxy SSL termination __:
 - Create a certificate using certbot and configure HAproxy to accept encrypted traffic for your subdomain www.
### __ 2-No loophole in your website traffic __:
 - A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure HAproxy to automatically redirect HTTP traffic to HTTPS