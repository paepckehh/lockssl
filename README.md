# OVERVIEW

[paepcke.de/lockssl](https://paepcke.de/lockssl)

* OpenSSL patchset
* tracks permanently OpenSSL_1_1_1 branch / head 
* removes and reorders openssl TLS1.2 and below legacy cipher agility:
	- ECDHE-ECDSA-CHACHA20-POLY1305 (new fixed preference)
	- ECDHE-ECDSA-AES256-GCM-SHA384
	- ECDHE-ECDSA-AES128-GCM-SHA256
	- ECDHE-RSA-CHACHA20-POLY1305
	- ECDHE-RSA-AES256-GCM-SHA384
	- ECDHE-RSA-AES128-GCM-SHA256
* locks and reoders kex (key exchange algo preferences):
	- X25519 (new fixed preference)
	- secp521r1 
	- secp384r1
	- secp256r1 
* 100% api compatible with OpenSSL_1_1_1 branch (main/head)

# EXPLICIT WARNING

The reduced and reordered cipher/key-exchange agility may protect against downgrade attacks and avoids version details leaking (protection against automated attack frameworks) at the price of an very individual TLS Fingerprint. This does (intentionally!) NOT improve your privacy! Your Client can and will be identified via TLS Fingerprinting and targeted with this patch.

# INFO

If you do not need any TLS legacy compatibility (eg. closed env) do not use this patch, just lock your OpenSSL to TLS1.3-only mode and remove the session resume feature. 

# CONTRIBUTION

Yes, Please! PRs Welcome! 
