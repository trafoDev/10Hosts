# 10Hosts

Instalacja HLF dla 10 hostów, pozwala na instalację zarówno na 1 VM jak i na odrębnych maszynach
Konfiguracja przygotowana dla **HLF 2.2.1** 

Wymagania:
- Instalacja wszystkich elementów wymaganych dla HLF - https://hyperledger-fabric.readthedocs.io/en/release-2.2/prereqs.html
- Zainstalowany pakiet jq - **sudo apt install jq** (wystarczy na hoście z CLI)
- Zainstalowane obrazy HLF (2.2.1) -  **curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.1 1.4.9**
- Uruchomienie sieci docker o nazwie wskazaneg w ./variables.sh - (opis utworzenia sieci znajduje się ponizej)

Instalacja:
- 10 organizacji od 0 do 9, w domenie hlftest.com
- 1 peer w każdej organizacji, nazwany  
- OSN po 1 odererze na organizację.
- CLI w Org1
- pojedynczy kanał (fabcarchannel) z jednym CC (fabcar)
- wszystkie peer'y wskazane jako anchor we własnych organizacjach

Konfiguracja (plik ./variables.sh):
- nazwa kanału systemowego    **SYS_CHANNEL=systemchannel**
- nazwa kanału dla CC         **CHANNEL_ID=fabcarchannel** 
- nazwa instalowanego CC      **CC_NAME=fabcar** 
- nazwa sieci                 **NETWORK_NAME=hlf_test_net**
- polityka potwierdzania      **ENDORSEMENT_POLICY=...**

Uruchomienie sieci opartej o docker sworm:
- Operacje na głównym hoście
  - docker swarm init --advertise-addr <adres IP hosta>
  - docker swarm join-token manager (informacje z tej funkcji należy wykorzystać dla funkcji na kolejnych hostach)
  - docker network create --attachable --driver overlay hlf_test_net
- Operacje na głównym hoście
  - docker swarm join <token pobrany z operacji na głównym hoście> --advertise-addr <adres IP hosta>

Uruchomienie sieci opartej o docker dla instalacji na pojedynczej VM:
- docker network create hlf_test_net  
  
Materiał kryptograficzny:
- materiał kryptograficzny generowany jest raz (zakłąda się reużywalność certyfikatów dla uproszczenia) 
- konfiguracja do generacji certyfikatów znajduje sie w katalogu **artifacts.crypto** 
- praca z materiałem kryptograficznym:
  - utworzenia organizacji i genesis.block - ./artifacts.crypto/org.crypto.create.sh
  - utworzenia konfiguracji kanału - ./artifacts.crypto/channel.crypto.create.sh
  - usunięcie całości materiału - ./artifacts.crypto/all.crypto.clear.sh

Uruchomienie sieci na 1 VM:
- pobrać repo z GitHub
- jeśli nie stworzono wcześniej utworzyć sieć **hlf_test_net**
- wykorzystać wygenerowany wcześniej materiał kryptograficzny (można też wygenerować własny jak podano wyżej)
- uduchomić skrypt startujący sieć ./all.up.sh (skrypt poza uruchomieniem sieci i instalacją CC, dokonuje też inicjalizacji i odpytania sieci)
  
Uruchomienie sieci na 10 VM:
- pobrać repo z GitHub na każdy z hstów
- jeśli nie stworzono wcześniej utworzyć sieć **hlf_test_net** 
- wykorzystać wygenerowany wcześniej materiał kryptograficzny (można też wygenerować własny jak podano wyżej na jednym z hostów i przekopiować na pozostałe)
- uruchomić skrypt na każdym hoście kolejno skrypty startujące komponenty **./host.n.up.sh**  gdzie **n**-numer hosta 
- z hosta 1 (tam zainstalowane jest CLI) wykonać kolejne skrypty (można też nimi uruchomić sieć na pojedynczej VM):
  - **channel.up.sh** - uruchomienie kanału 
  - **channel.anchor.sh** - zadeklarowanie wszystkich peer'ów w ich organizacjach jako anchor 
  - **cc.pack.sh** - spakowanie CC
  - **cc.install.all.sh** - instalacja CC na wszystkich hostach
  - **cc.approve.all.sh** - akceptacja CC we wszystkich organizacjach
  - **cc.commit.sh** - zatwierdzenie CC we wszystkich organizacjach
  
Skrypty operujące na CC załączonym w repozytorium (na tej podstawie można tworzyć kolejne):
- **cc.init.sh** - inicjalizacja CC fabcar
- **cc.query.sh** - odpytanie BC z każdej organizacji o stan obiektu CAR0
- **cc.invoke.1.sh** - zmiana właściela CAR0 - propozycja wysyłana tylko do Org1
- **cc.invoke.all.sh** - zmiana właściela CAR0 - propozycja wysyłana do wszystkich organizacji
