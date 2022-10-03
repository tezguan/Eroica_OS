::Ekran boyutu ayarlama
chcp 65001
set column=93
set /a lines=(%column%/5)*2
mode con: cols=%column% lines=%lines%

::Yöneticilik kontrol ediliyor.

wget -P  https://example.com/sitemap.xml
@echo off
goto check_Permissions

:check_Permissions
@echo off
pushd %SystemRoot%
openfiles.exe 1>nul 2>&1
if not %errorlevel% equ 0 (
    Echo Yönetici olarak çalıştırmalısınız.
) else (
    goto internete
)
popd
Pause
    
    pause >nul
	exit

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

::İnternet bağlantısı kontrol ediliyor.

:internete
ping -n 1 google.com > NUL
	if %errorlevel%==1 goto NoInternet else goto :disclaimer

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Yasal Bildirge
:disclaimer
cls
ECHO                                   YASAL BİLDİRGE
ECHO  Bu script içerisinde bulunan her şeyi yapmak sizin sorumluluğunuzdadır.
Echo.
ECHO Kendi sorumluluğunuzda işlem yapın. Olabilecek zarardan kendiniz sorumlusunuz.
ECHO.
ECHO.
set discevap=
ECHO 	Yasal bildirge doğrultusunda, bilgisayarınıza veya size gelen herhangi bir sorunun

ECHO.
ECHO  sorumluluğunu kabul etmediğimizi Kabul Ediyor musunuz?
ECHO. 
ECHO. 
set /p discevap= "   "ediyorum" yazarak yasal bildirimizi kabul etmiş olursunuz ve ilerleyebilirsiniz: "


if '%discevap%'=='ediyorum' (
	goto :main
) else (
	goto :disclaimererror
)

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Ana Menü
:main

cls
ECHO                Program Kurulumu                  (1)
Echo.
ECHO                Servis Ayarları                   (2)
Echo.
ECHO                Otomatik Kurulumlar               (3)
Echo.
ECHO                Eroica OS Hakkında                (4)
Echo.
ECHO                Otomatik Kurulumlar Detaylı Bilgi (5)
Echo.
ECHO                Ana Menüye Dön                    (0)
set menusoru=
set /p menusoru=
if %menusoru%==1 goto :program_kurulum
if %menusoru%==2 goto :ServisAyarlari
if %menusoru%==3 goto :otomatikkurulumlar
if %menusoru%==4 goto :EroicaHakkinda
if %menusoru%==5 goto :OtomatikDetay
if %menusoru%==0 goto :main
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Program Kurulumları
:program_kurulum
cls
ECHO                Yayıncı Programları               (1)
Echo.
ECHO                Oyuncu Programları                (2)
Echo.
ECHO                Müzisyen Programları              (3)
Echo.
ECHO                Genel Programlar                  (4)
Echo.
ECHO                Güvenlik Programları              (5)
Echo.
ECHO                Ana Menü                          (0)
set program_soru=
set /p program_soru=":  "
if %program_soru%==1 goto :yayinci_programlari
if %program_soru%==2 goto :programkurulum
if %program_soru%==3 goto :muzisyen_programlari
if %program_soru%==4 goto :genel_programlar
if %program_soru%==5 goto :programkurulum
if %program_soru%==6 goto :programkurulum
if %program_soru%==0 goto :main

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Yayıncı Programları
:yayinci_programlari
cls
ECHO                Open Broadcast Software  (En Son) (1)
Echo.
ECHO                Reaper Eklentileri                (2)
Echo.
ECHO                DroidCam OBS Uygulaması           (3)
Echo.
ECHO                Chatterino                        (4)
Echo.
ECHO                OBS NDI                           (5)
Echo.
ECHO                Ana Menüye Dön                    (0)

set yayinci_program_soru=
set /p yayinci_program_soru=":  "
if %yayinci_program_soru%==1 goto :PR_OBS
if %yayinci_program_soru%==2 goto :PR_ReaPlugs
if %yayinci_program_soru%==3 goto :PR_OBSDroid
if %yayinci_program_soru%==4 goto :yayinci_programlari
if %yayinci_program_soru%==5 goto :yayinci_programlari
if %yayinci_program_soru%==6 goto :yayinci_programlari
if %yayinci_program_soru%==0 goto :main

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Genel Programlar
:genel_programlar
cls
ECHO                Steam                             (1)
Echo.
ECHO                Discord                           (2)
Echo.
ECHO                Google Chrome                     (3)
Echo.
ECHO                Spotify                           (4)
Echo.
ECHO                VLC Media Player                  (5)
Echo.
ECHO                Ana Menüye Dön                    (0)

set genel_program_soru=
set /p genel_program_soru=":  "
if %genel_program_soru%==1 goto :PR_Steam
if %genel_program_soru%==2 goto :PR_Discord
if %genel_program_soru%==3 goto :PR_Chrome
if %genel_program_soru%==4 goto :PR_Spotify
if %genel_program_soru%==5 goto :genel_programlari
if %genel_program_soru%==6 goto :genel_programlari
if %genel_program_soru%==0 goto :main



:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
					::Oyuncu Programları
:oyuncu_programlari
cls
ECHO                Steam                             (1)
Echo.
ECHO                Discord                           (2)
Echo.
ECHO                Origin                            (3)
Echo.
ECHO                NVCleanstall                      (4)
Echo.
ECHO                AMD Otomatik Sürücü               (5)
Echo.
ECHO                MSI Utility V3                    (6)
Echo.
ECHO                Ana Menüye Dön                    (0)
set oyuncu_program_soru=
set /p oyuncu_program_soru=":  "
if %oyuncu_program_soru%==1 goto :PR_Steam
if %oyuncu_program_soru%==2 goto :PR_Discord
if %oyuncu_program_soru%==3 goto :oyuncu_programlari
if %oyuncu_program_soru%==4 goto :PR_NVCleanstall
if %oyuncu_program_soru%==5 goto :oyuncu_programlari
if %oyuncu_program_soru%==6 goto :PR_MSIUtilv3
if %oyuncu_program_soru%==0 goto :main


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
					::Müzisyen Programları
:muzisyen_programlari
ECHO Henüz hazır değil
REAPER
ECHO               Reaper DAW                         (1)
Echo.
ECHO               Ana Menüye Dön                     (0)
goto :main



set muzisyen_program_soru=
set /p muzisyen_program_soru=":  "
if %muzisyen_program_soru%==1 goto :PR_Reaper
if %muzisyen_program_soru%==1 goto :PR_Reaper
if %muzisyen_program_soru%==1 goto :PR_Reaper
if %muzisyen_program_soru%==1 goto :PR_Reaper
if %muzisyen_program_soru%==1 goto :PR_Reaper
if %muzisyen_program_soru%==0 goto :main








:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Otomatik Kurulumlar
:otomatik_kurulumlar
cls
ECHO                Otomatik Yayıncı Profili          (1)
Echo.
ECHO                Otomatik Oyuncu Profili           (2)
Echo.
ECHO                Otomatik Müzisyen Profili         (3)
Echo.
ECHO                Otomatik Yazılımcı Profili        (4)
Echo.
ECHO                Otomatik Güvenlik Profili         (5)
Echo.
ECHO                Hafif Windows Deneyimi            (6)
Echo.
ECHO                Ana Menüye Dön                    (0)

set otomatik_program_soru=
set /p oyuncu_program_soru=":  "
if %otomatik_program_soru%==1 goto :otomatik_kurulumlar
if %otomatik_program_soru%==2 goto :otomatik_kurulumlar
if %otomatik_program_soru%==3 goto :otomatik_kurulumlar
if %otomatik_program_soru%==4 goto :otomatik_kurulumlar
if %otomatik_program_soru%==5 goto :otomatik_kurulumlar
if %otomatik_program_soru%==6 goto :otomatik_kurulumlar
if %otomatik_program_soru%==7 goto :otomatik_kurulumlar
if %otomatik_program_soru%==0 goto :main
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
				::Otomatik Yayıncı Profili
:Otomatik_Yayinci_Profili
cls
ECHO                Gereksiz Servisleri Kapatma                (1)
Echo.
ECHO                Regedit Ayarları                           (2)
Echo.
ECHO                Mouse İvme Kapatma (%100 Ekran Çözünürlüğü (3)
Echo.
ECHO                Mouse İvme Kapatma (%125 Ekran Çözünürlüğü (4)
Echo.
ECHO                Mouse İvme Kapatma (%150 Ekran Çözünürlüğü (5)
Echo.
ECHO                Güç Profili Yükleme                        (6)
Echo.
ECHO                
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Servis Ayarları
:ServisAyarlari
cls
ECHO                Oyuncu Ayarları                   (1)
Echo.
ECHO                Yayıncı Ayarları                  (2)
Echo.
ECHO                Yazılımcı Ayarları                (3)
Echo.
ECHO                Güvenlik Ayarları (Hantallaştırır)(4)
Echo.
Echo.
Echo.
set servissec=
set /p servissec= "Birini Seçin:  "


if %servissec%==1 (
	goto :WindowsLiteServices
	
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

					::Eroica OS Hakkında
:EroicaHakkinda
cls
ECHO                        Eroica OS nedir? Neden Eroica ismi? Amaç ve vizyonumuz ne? 
ECHO.
Echo.
ECHO      Eroica OS nedir?
ECHO.
ECHO 	Eroica OS, insanların format sonrası kurulumla vakitlerini harcamayacakları, sadece   ^
ihtiyaçları olan şeyleri bir kaç tıkla aktif edebilecekleri, sadece ihtiyaç duyduğu kadarını ^
kullanacağı otomasyon ve performans amaçlı hazırlanmış bir Windows ISO'sudur.
ECHO.
ECHO.
ECHO.
ECHO      Neden Eroica ismi?
ECHO.
ECHO 	Eroica Beethoven'ın Üçüncü Senfonisinin ismi aslında. Hayranlık duyduğum bir senfoni. Eroica ilk olarak Napoleon Bonaparte'a ithaf edildi. Tabii ki bu ithafta adı Eroica değildi. 
ECHO.
ECHO.
ECHO    Beethoven; Bonaparte'ın 1804 yılında kendisini Fransa'nın imparatoru ilan ettiğini duyduğunda eserin ilk sayfasındaki Bonaparte'a İthafen (?) yazısını karalayıp
ECHO.
ECHO Esere "Eroica (Kahramanca)" ismini veriyor, ayrıca şöyle ekliyor: "Harika bir adamın anısını kutlamak için bestelenmiştir." (Kaynak: Britannica) 
ECHO.
ECHO.
ECHO Ben de bu çalışmayı harika bir adamın (Beethoven'ın) anısına yapmaya çalışıyorum.  
Echo.
ECHO Anamenüye dönmek için bir tuşa basın.
pause
goto :main
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

				::Otomatik Kurulum Detayları
:OtomatikDetay
cls
ECHO            Yayıncı Otomatik Kurulum Detay       (1)
Echo.
ECHO            Oyuncu Otomatik Kurulum Detay        (2)
Echo.



:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

				::Yayıncı Otomatik Kurulum Detay
:yayincikurulumdetay
cls
ECHO    Yayını rahat açabilmeniz adına, kurulumla başınızı ağrıtmayacak, sizin yerinize
Echo.
ECHO  ayarlarınızı yapacak, işletim sisteminde yalnızca yayın yaparken ihtiyaç duyduğunuz
Echo.
ECHO  şeyleri açacak, gerisini kapatacak. OBS, Discord, Chatterino, Process Lasso.
Echo.
ECHO             Kapatılacak servis ve ayarlar için 


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

				::WindowsLiteServisler
:WindowsLiteServices
cls
Echo Servisler kapatılıyor, biraz sürebilir.
sc config NcbService start=disabled
sc config DiagTrack start=disabled
sc config Browser start=disabled
sc config VSS start=disabled
sc config BDESVC start=disabled
sc config lfsvc start=disabled
sc config workfolderssvc start=disabled
sc config StorSvc start=disabled
sc config TabletInputService start=disabled
sc config Fax start=disabled
sc config HvHost start=disabled
sc config vmicvss start=disabled
sc config vmicguestinterface start=disabled
sc config vmicshutdown start=disabled
sc config vmicvmsession start=disabled
sc config vmicheartbeat start=disabled
sc config vmicrdv start=disabled
sc config vmickvpexchange start=disabled
sc config vmictimesync start=disabled
sc config LanmanWorkstation start=disabled
sc config MicrosoftEdgeElevationService start=disabled
sc config edgeupdate start=disabled
sc config edgeupdatem start=disabled
sc config InstallService start=disabled
sc config NetTcpPortSharing start=disabled
sc config ssh-agent start=disabled
sc config UsoSvc start=disabled
sc config tzautoupdate start=disabled
sc config SEMgrSvc start=disabled
sc config shpamsvc start=disabled
sc config LanmanServer start=disabled
sc config SysMain start=disabled
sc config TapiSrv start=disabled
sc config PhoneSvc start=disabled
sc config Themes start=disabled
sc config RemoteRegistry start=disabled
sc config TermService start=disabled
sc config UmRdpService start=disabled
sc config SessionEnv start=disabled
sc config RpcLocator start=disabled
sc config WpnService start=disabled
sc config WbioSrvc start=disabled
sc config WerSvc start=disabled
sc config wisvc start=disabled
sc config FrameServer start=disabled
sc config LicenseManager start=disabled
sc config WMPNetworkSvc start=disabled
sc config MixedRealityOpenXRSvc start=disabled
sc config icssvc start=disabled
sc config WSearch start=disabled
sc config wuauserv start=disabled
sc config XboxGipSvc start=disabled
sc config XboxNetApiSvc start=disabled
sc config XblAuthManager start=disabled
sc config XblGameSave start=disabled
sc config Spooler start=disabled
sc config RemoteAccess start=disabled
sc config  start=disabled
sc config  start=disabled
sc config  start=disabled
sc config  start=disabled
sc config  start=disabled
sc config  start=disabled
sc config  start=disabled
Echo.
ECHO Başarılı. Ana Menü için 1'e basın.
set oyuncuayarsonrasi=
if %oyuncuayarsonrasi%==1 (
	goto :main
) else (
	ECHO Başarılı. Ana Menü için 1'e basın.
goto :main
)


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

				::Hatalar
:disclaimererror
ECHO İlerlemek için yasal bildiriyi kabul etmelisiniz.
pause
exit

:NoInternet
ECHO Üzgünüm, ilerlemek için bir ağ bağlantısına ihtiyacınız var.
set/p<nul = Çıkmak için herhangi bir tuşa basın ...&pause>nul
exit

:NoAdmin
cls
ECHO Lütfen yönetici olarak çalıştırın.
set/p<nul = Çıkmak için herhangi bir tuşa basın ...&pause>nul
exit



:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

				::Oyuncu Programları

:PR_NVCleanstall
cd /d %~dp0
wget https://de1-dl.techpowerup.com/files/AmVxsgo2AFx-13Is9Y_Mzw/1664861235/NVCleanstall_1.13.0.exe --output-document NVCleanstall.exe
ECHO NVCleanstall'ı kendiniz kurmalısınız, otomatik kurulmayacak.
ECHO Geri dönmek için bir tuşa basın
goto :oyuncu_programlari

:PR_MSIUtilv3
cd /d %~dp0
wget  http://download2340.mediafire.com/424qn33eh6hg/ewpy1p0rr132thk/MSI_util_v3.zip --output-document MSI_Util.exe
ECHO Sadece ekran kartınızı MSI moda sokun ve önceliğini yüksek yapın. Başka bir şeye dokunmayın.
ECHO Geri dönmek için bir tuşa basın
goto :oyuncu_programlari


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
				::Yayıncı Programları
				
:PR_OBS
cd /d %~dp0
wget https://cdn-fastly.obsproject.com/downloads/OBS-Studio-28.0.2-Full-Installer-x64.exe --output-document OBS.exe
"OBS.exe" /S /install /quiet /norestart
del /f "OBS.exe"
goto :yayinci_programlari

:PR_ReaPlugs
cd /d %~dp0
wget https://www.reaper.fm/reaplugs/reaplugs236_x64-install.exe --output-document Reaplugs.exe
"Reaplugs.exe" /S /install /quiet /norestart
del /f "Reaplugs.exe"
goto :yayinci_programlari

:PR_OBSDroid

cd /d %~dp0
wget https://github.com/dev47apps/droidcam-obs-plugin/releases/download/1.6.0/DroidCamOBS.Setup.1.6.0.exe --output-document DroidOBS.exe
"DroidOBS.exe" /S /install /quiet /norestart
del /f "DroidOBS.exe"
goto :yayinci_programlari


:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
				::Müzisyen Programları
:PR_Reaper
cd /d %~dp0
wget https://www.reaper.fm/files/6.x/reaper668_x64-install.exe --output-document Reaper.exe
"Reaper.exe" /S /install /quiet /norestart
del /f "Reaper.exe"
goto :muzisyen_programlari

:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
				::Genel Programlar
:PR_Chrome
cd /d %~dp0
wget https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B9D774146-47E2-387B-EEFE-CA8C14044600%7D%26lang%3Den%26browser%3D5%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe --output-document Chrome.exe
"Chrome.exe" /Silent /install /quiet /norestart
del /f "Chrome.exe"
goto :genel_programlar

:PR_Steam
cd /d %~dp0
wget https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe --output-document Steam.Exe
"Steam.exe" /S /Install /quiet /norestart
del /f "Steam.exe"
goto :genel_programlar

:PR_Discord
cd /d %~dp0
wget https://discord.com/api/download?platform=win --output-document Discord.exe
"Discord.exe" /s /install /quiet /norestart
del /f "Discord.exe"
goto :genel_programlar

:PR_Spotify
cd /d %~dp0
wget https://download.scdn.co/SpotifySetup.exe --output-document Spotify.exe
"Spotify.exe" /Silent /S /install /quiet /norestart
del /f "Spotify.exe"
goto :genel_programlar

:PR_VLC
cd /d %~dp0
wget https://get.videolan.org/vlc/3.0.17.4/win64/vlc-3.0.17.4-win64.exe --output-document VLC.exe
"VLC.exe" /S /install /quiet /norestart
del /f "VLC.exe"
goto :genel_programlar