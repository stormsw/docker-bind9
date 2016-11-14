;
; BIND data file for local loopback interface
;
$TTL    604800
@	IN	SOA	ns1.int.thomsonreuters.com. ns2.int.thomsonreuters.com. (
                          2         ; Serial
                     604800         ; Refresh
                      86400         ; Retry
                    2419200         ; Expire
                     604800 )       ; Negative Cache TTL
  ;
int.thomsonreuters.com.	IN  NS	ns1.int.thomsonreuters.com.
int.thomsonreuters.com.	IN  A   172.29.135.30
ns1			IN  A   172.29.135.30
ns2      		IN  A   172.29.135.30
tfstta			IN  A   10.184.3.1
bower			IN  A   10.52.207.109
wsd			IN  A   10.223.192.36
git.sami		IN  A   10.52.131.68
ui			IN  A   10.184.40.85
bams-sami               IN  A   10.216.133.102
www     		IN  CNAME	int.thomsonreuters.com.
