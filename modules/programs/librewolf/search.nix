{
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
}
