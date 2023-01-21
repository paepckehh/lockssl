sed -i '' -e "s/21 Jun 2022/LockSSL ( RELEASE:$LOCKSSL_RELEASE ) ( COMMIT:$(cat openssl/.commit | cut -c 1-12) )/g" opensslv.h
sed -i '' -e "s/xx XXX xxxx/LockSSL ( RELEASE:$LOCKSSL_RELEASE ) ( COMMIT:$(cat openssl/.commit | cut -c 1-12) )/g" opensslv.h
sed -i '' -e "s/\"1.1.1\"/\"111\"/g" opensslv.h
sed -i '' -e "s/\"1.1\"/\"111\"/g" opensslv.h
