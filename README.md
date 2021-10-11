# 10Hosts

Instalacja HLF dla 10 hostów, pozwala na instalację zarówno na 1 VM jak i na odrębnych maszynach


Wymagania:
- Instalacja wszystkich elementów wymaganych dla HLF - https://hyperledger-fabric.readthedocs.io/en/release-2.2/prereqs.html
- Uruchomienie sieci docker o nazwie wskazaneg w ./variables.sh - startowo 'hlf_test_net'

Instalacja:
- 10 organizacji od 0 do 9, w domenie hlftest.com
- 1 peer w każdej organizacji, nazwany  
- OSN po 1 odererze na organizację.
- CLI w Org1

Konfiguracja (plik ./variables.sh):
- nazwa kanału systemowego    SYS_CHANNEL=systemchannel
- nazwa kanału dla CC         CHANNEL_ID=fabcarchannel 
- nazwa instalowanego CC      CC_NAME=fabcar 
- nazwa sieci                 NETWORK_NAME=hlf_test_net
- polityka potwierdzania      ENDORSEMENT_POLICY=...
