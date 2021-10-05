peer lifecycle chaincode queryinstalled

peer lifecycle chaincode querycommitted --channelID productchannel --name products

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.product.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/product.com/orderers/orderer.product.com/msp/tlscacerts/tlsca.product.com-cert.pem -C productchannel -n products --peerAddresses localhost:7051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city1.product.com/peers/peer0.city1.product.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt --peerAddresses localhost:11051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt -c '{"Args":["AddProduct","Apple","Fruit","25","city1","50"]}'
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.product.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/product.com/orderers/orderer.product.com/msp/tlscacerts/tlsca.product.com-cert.pem -C productchannel -n products --peerAddresses localhost:7051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city1.product.com/peers/peer0.city1.product.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt --peerAddresses localhost:11051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt -c '{"Args":["AddProduct","Banana","Fruit","12","city3","75"]}'
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.product.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/product.com/orderers/orderer.product.com/msp/tlscacerts/tlsca.product.com-cert.pem -C productchannel -n products --peerAddresses localhost:7051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city1.product.com/peers/peer0.city1.product.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt --peerAddresses localhost:11051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt -c '{"Args":["AddProduct","Orange","Fruit","10","city2","100"]}'
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.product.com --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/product.com/orderers/orderer.product.com/msp/tlscacerts/tlsca.product.com-cert.pem -C productchannel -n products --peerAddresses localhost:7051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city1.product.com/peers/peer0.city1.product.com/tls/ca.crt --peerAddresses localhost:9051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt --peerAddresses localhost:11051 --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/city2.product.com/peers/peer0.city2.product.com/tls/ca.crt -c '{"Args":["AddProduct","Avocardo","Fruit","12","city1","250"]}'


peer chaincode query -C productchannel -n products -c '{"Args":["ViewAllProducts"]}'

peer chaincode invoke -n products -C productchannel -c '{"Args":["AddProduct","Apple","Fruit","25","city1","50"]}'

peer chaincode query -C productchannel -n products -c '{"Args":["ViewProduct","Apple"]}'