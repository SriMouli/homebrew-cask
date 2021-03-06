cask "chronycontrol" do
  version "1.4.1"
  sha256 "aad365450dea578130bce2b61a344be64d76b9af242afefdc92370cc6b82f664"

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  appcast "https://www.whatroute.net/chronycontrolappcast.xml"
  name "ChronyControl"
  homepage "https://whatroute.net/chronycontrol.html"

  app "ChronyControl.app"

  uninstall launchctl: [
    "org.tuxfamily.chronyd",
    "org.tuxfamily.chronyc",
  ],
            delete:    [
              "/etc/chrony.d",
              "/var/db/chrony",
              "/Library/LaunchDaemons/org.tuxfamily.chronyd",
              "/Library/LaunchDaemons/org.tuxfamily.chronyc",
            ]

  zap trash: "/var/log/chrony"
end
