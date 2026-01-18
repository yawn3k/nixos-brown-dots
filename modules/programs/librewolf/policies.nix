{
  ExtensionSettings = {
    # uBlock Origin
    "uBlock0@raymondhill.net" = {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      installation_mode = "force_installed";
    };
    # ClearURLs
    "{74145f27-f039-47ce-a470-a662b129930a}" = {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/clearurls/latest.xpi";
      installation_mode = "force_installed";
    };
    # Dark Reader
    "addon@darkreader.org" = {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/darkreader/latest.xpi";
      installation_mode = "force_installed";
    };
    # SponsorBlock
    "sponsorBlocker@ajay.app" = {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";
      installation_mode = "force_installed";
    };
  };

  SearchEngines = {
    Default = "Brave";
    Remove = [ "Bing" "Google" "DuckDuckGo" "eBay" "Wikipedia (en)" ];
    Add = [
      {
        Name = "Brave";
        URLTemplate = "https://search.brave.com/search?q={searchTerms}";
        IconURL = "https://brave.com/static-assets/images/brave-logo-sans-text.svg";
        Alias = "@b";
      }
      {
        Name = "MyNixOS";
        URLTemplate = "https://mynixos.com/search?q={searchTerms}";
        IconURL = "https://mynixos.com/favicon.ico";
        Alias = "@nix";
      }
    ];
  };


  #ManagedBookmarks = builtins.fromJSON (builtins.readFile ./bookmarks.json);
  EnableTrackingProtection = {
    Value = true;
    Locked = true;
    Cryptomining = true;
    Fingerprinting = true;
    EmailTracking = true;
  };
  DontCheckDefaultBrowser = true;
  # NoDefaultBookmarks = true;
  OfferToSaveLogins = false;
  AutofillAddressEnabled = true;
  AutofillCreditCardEnabled = false;
  DisableAppUpdate = true;
  DisableFeedbackCommands = true;
  DisableFirefoxStudies = true;
  DisablePocket = true;
  DisableTelemetry = true;
  DisplayMenuBar = "never";
  DisplayBookmarksToolbar = "never";
  DisableFirefoxAccounts = true;
  DisableFormHistory = true;
  DisableSetDesktopBackground = true;
  UserMessaging = {
    ExtensionRecommendations = false;
    FeatureRecommendations = false;
    UrlbarInterventions = false;
    SkipOnboarding = true;
    MoreFromMozilla = false;
    FirefoxLabs = false;
    Locked = true;
  };
  FirefoxHome = {
    Search = false;
    TopSites = false;
    SponsoredTopSites = false;
    Highlights = false;
    Pocket = false;
    SponsoredPocket = false;
    Snippets = false;
    Locked = true;
  };
  FirefoxSuggest = {
    WebSuggestions = false;
    SponsoredSuggestions = false;
    ImproveSuggest = false;
    Locked = true;
  };
  Homepage = {
    StartPage = "previous-session";
    Locked = true;
  };
  Permissions = {
    Camera = {
      BlockNewRequests = true;
      Locked = true;
    };
    Location = {
      BlockNewRequests = true;
      Locked = true;
    };
    Notifications = {
      BlockNewRequests = true;
      Locked = true;
    };
    Mic = {
      BlockNewRequests = true;
      Locked = true;
      Allow."1" = "https://discord.com/";
    };
    Autoplay = {
      Default = "block-audio-video";
      Locked = true;
    };
    VirtualReality = {
      BlockNewRequests = true;
      Locked = true;
    };
  };
  PictureInPicture = {
    Enabled = false;
    Locked = true;
  };
  PopupBlocking = {
    Default = true;
    Locked = true;
  };
  SanitizeOnShutdown = {
    Cache = false;
    Cookies = false;
    History = false;
    SiteSettings = false;
    Sessions = false;
    FormData = true;
    Locked = true;
  };
  # DNSOverHTTPS = {
  #   Locked = true;
  #   Enabled = true;
  #   Fallback = false;
  #   ProviderURL = "cloudflare-dns.com";
  # };
  Preferences = {
    "widget.gtk.libadwaita-colors.enabled" = {
      Value = false;
      Status = "locked";
    };
    "places.history.enabled" = {
      Value = false;
      Status = "locked";
    };
    "browser.download.folderList" = {
      Value = 0;
      Status = "lockad";
    };
    "browser.download.alwaysOpenPanel" = {
      Value = false;
      Status = "locked";
    };
    "general.autoScroll" = {
      Value = true;
      Status = "locked";
    };
    "toolkit.legacyUserProfileCustomizations.stylesheets" = { # Enables loading of userChrome.css
      Value = false;
      Status = "locked";
    };
    "browser.warnOnQuitShortcut" = {
      Value = true;
      Status = "locked";
    };
    "browser.sessionstore.restore_pinned_tabs_on_demand" = {
      Value = true;
      Status = "locked";
    };
    "browser.uiCustomization.state" = {
      Value = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"sponsorblocker_ajay_app-browser-action\",\"moz-addon-prod_7tv_app-browser-action\",\"moz-addon_7tv_app-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"soundfixer_unrelenting_technology-browser-action\",\"_3c078156-979c-498b-8990-85f7987dd929_-browser-action\",\"_7a7a4a92-a2a0-41d1-9fd7-1e92480d612d_-browser-action\",\"_6f06a23b-cde8-478b-b1b9-f559bb3e9e84_-browser-action\",\"firefox_tampermonkey_net-browser-action\",\"_988dd4f5-e8d5-49bf-a766-ff75b0e19fe2_-browser-action\",\"_e6fc2bbd-183e-4518-9ea5-04a8a913ab00_-browser-action\",\"vpn_proton_ch-browser-action\",\"addon_darkreader_org-browser-action\",\"_fca67f41-776b-438a-9382-662171858615_-browser-action\",\"_hoxx-vpn-browser-action\",\"_74145f27-f039-47ce-a470-a662b129930a_-browser-action\",\"_8ad4bea8-ad8d-4e98-b434-a76065dee6cb_-browser-action\",\"enhancerforyoutube_maximerf_addons_mozilla_org-browser-action\",\"extension_one-tab_com-browser-action\",\"_a831defa-a6c9-4ca9-9593-9ccaf98462d9_-browser-action\",\"_aecec67f-0d10-4fa7-b7c7-609a2db280cf_-browser-action\",\"firefoxcolor_mozilla_com-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"customizableui-special-spring30\",\"urlbar-container\",\"customizableui-special-spring29\",\"vertical-spacer\",\"downloads-button\",\"unified-extensions-button\",\"alltabs-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"tabbrowser-tabs\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"import-button\",\"personal-bookmarks\"]},\"seen\":[\"save-to-pocket-button\",\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_7a7a4a92-a2a0-41d1-9fd7-1e92480d612d_-browser-action\",\"_6f06a23b-cde8-478b-b1b9-f559bb3e9e84_-browser-action\",\"firefox_tampermonkey_net-browser-action\",\"_3c078156-979c-498b-8990-85f7987dd929_-browser-action\",\"soundfixer_unrelenting_technology-browser-action\",\"_988dd4f5-e8d5-49bf-a766-ff75b0e19fe2_-browser-action\",\"moz-addon_7tv_app-browser-action\",\"_e6fc2bbd-183e-4518-9ea5-04a8a913ab00_-browser-action\",\"vpn_proton_ch-browser-action\",\"moz-addon-prod_7tv_app-browser-action\",\"addon_darkreader_org-browser-action\",\"sponsorblocker_ajay_app-browser-action\",\"_fca67f41-776b-438a-9382-662171858615_-browser-action\",\"_hoxx-vpn-browser-action\",\"_74145f27-f039-47ce-a470-a662b129930a_-browser-action\",\"_8ad4bea8-ad8d-4e98-b434-a76065dee6cb_-browser-action\",\"enhancerforyoutube_maximerf_addons_mozilla_org-browser-action\",\"extension_one-tab_com-browser-action\",\"_a831defa-a6c9-4ca9-9593-9ccaf98462d9_-browser-action\",\"_aecec67f-0d10-4fa7-b7c7-609a2db280cf_-browser-action\",\"screenshot-button\",\"firefoxcolor_mozilla_com-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\",\"widget-overflow-fixed-list\",\"vertical-tabs\"],\"currentVersion\":23,\"newElementCount\":30}";
      Status = "locked";
    };
    "browser.uidensity" = {
      Value = 1;
      Status = "locked";
    };
  };
}
