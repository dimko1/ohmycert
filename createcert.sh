openssl genrsa -out certAuthority.key 2048
openssl req -x509 -new -key certAuthority.key -out certAuthority.cer -days 730 -subj  /CN=$1
openssl genrsa -out certificate.key 2048
openssl req -new -out certificate.req -key certificate.key -subj /CN=$2
openssl x509 -req -in certificate.req -out certificate.cer -CAkey certAuthority.key -CA certAuthority.cer -days 365 -CAcreateserial -CAserial serial 