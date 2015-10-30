;
; BIND data file for local loopback interface
;
$TTL    604800
@	IN	SOA	ns1.int.thomson.com. ns2.int.thomson.com. (
                          2         ; Serial
                     604800         ; Refresh
                      86400         ; Retry
                    2419200         ; Expire
                     604800 )       ; Negative Cache TTL
  ;
int.thomson.com.      IN  NS	ns1.int.thomson.com.
int.thomson.com.      IN  A	172.29.135.30
ns1		      IN  A	172.29.135.30
ns2		      IN  A	172.29.135.30
tfstta		      IN  A	10.184.3.1
fef      	      IN  A	10.184.40.85
www     	      IN  CNAME	int.thomson.com.
