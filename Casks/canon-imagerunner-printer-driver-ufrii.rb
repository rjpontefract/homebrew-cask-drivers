cask 'canon-imagerunner-printer-driver-ufrii' do
  version '10.11.00'
  sha256 'f00b5dff45b0e6642fb17714a180d78eb93b352b21a5fef4b96d3f798a286126'

  url "https://downloads.canon.com/bisg2016/drivers/mac/UFRII_#{version}_Mac.zip"
  appcast 'https://www.usa.canon.com/internet/PA_NWSupport/driversDownloads?model=15802&os=MACOS_V10_12&type=DS&lang=English',
          checkpoint: 'aaf9d3de067c050ec91e0fc79f3b7da258a06c752be4a15baefb0e55504cb530'
  name 'Canon imageRUNNER UFRII Printer Driver'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/copiers-mfps-fax-machines/support-multifunction/imagerunner-2018'

  pkg 'Office/UFRII_LT_LIPS_LX_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.CUPSPrinter.*'
end
