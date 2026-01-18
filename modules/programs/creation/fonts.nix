{ pkgs, ... }:
let
  fonts = {
    # Collletttivo
    ronzino = {
      url = "https://github.com/collletttivo/ronzino/archive/24df8cdde479fef13948de629c3b10849e1dffb5.zip";
      sha256 = "0bsgd205d8xw523hx2kncx8x7nq2xpq6rnd5n7cs0yds1n74f1z8";
    };
    aujournuit = {
      url = "https://github.com/collletttivo/aujournuit/archive/285feb55bafc5df138f009dc3d05583e75393376.zip";
      sha256 = "1dcnm3bnprma6jl89b7b7z7vvmjsd6saddsp6411cagqqcignf3c";
    };
    absans = {
      url = "https://github.com/collletttivo/absans/archive/e1ba5d9a2359934df024b4ebef4c1be76e0db263.zip";
      sha256 = "06g28f24qdm36shvrl2jx793hb11ccpqh2jvvnbf1rjjk0bp21hd";
    };
    maziuns-display = {
      url = "https://github.com/collletttivo/mazius-display/archive/5798d69b14f0b7c1691f031f2ecb98ebdb709b54.zip";
      sha256 = "0wbx03x3skrkkj0i1j9a5kihy7wqwb95ik9gilwb0x9bwm6jzkph";
    };
    coconat = {
      url = "https://github.com/collletttivo/coconat/archive/75f0bf21470de362ebee2f173e99505b7a7e977b.zip";
      sha256 = "0ph2nhlcw9ikq24dhjacj1j8x223gk8zjys9a9580ayrihmkqp2v";
    };
    ribes = {
      url = "https://github.com/collletttivo/ribes/archive/e5f58f6ef719ff69b599a3155c66f4cecaed0a0f.zip";
      sha256 = "11qsi4pd1scia3hrzf0d5kaay5bb3lvavmjnnxg5qnkfwgibkhic";
    };
    sinistre = {
      url = "https://github.com/collletttivo/sinistre/archive/3308f8b884a066951a4da38586abae3b247bf915.zip";
      sha256 = "0f8gbc59ci5lnfnx6dpv0s7dvc03qr6i04g7jp8abgp4xmm1zk1s";
    };
    mattone = {
      url = "https://github.com/collletttivo/mattone/archive/a580a43d6438ad9d6787aafac60ca259fc5a6486.zip";
      sha256 = "01hr7fns2jbcyjph4gliwz5pw2sya9a97zcwnqa6h5zkrd059fy6";
    };
    apfel-grotezk = {
      url = "https://github.com/collletttivo/apfel-grotezk/archive/8b4c9f2682d274d7fae81d8eceef24f7f2fba4ea.zip";
      sha256 = "06wfbn5ml201jj4h2nvgll3nzsjn2frw35h4iznqvr5j9b9zsiqp";
    };
    ortica = {
      url = "https://github.com/collletttivo/ortica/archive/27bf44d3ea5057b7abcd09a8922d43d0b37a4f06.zip";
      sha256 = "1n7mccrcwar9mlsycpprg2a8mzmvjhp66q05i252zggqg486n38p";
    };
    messapia = {
      url = "https://github.com/collletttivo/messapia/archive/c7fbc664055d3f16f5d7431271f738ab5cdc6373.zip";
      sha256 = "03fkbd4i91pq4r3fmcnjrhw2as6gm7a2xp52wlrq6l765q0j1jff";
    };
    halibut = {
      url = "https://github.com/collletttivo/halibut/archive/13df8fd7ea926f9a47049ec1426fcce186909ee8.zip";
      sha256 = "0fmjmb14w17i2qr9mf19f97qhimv5hc16f7bbl7jcg92bf0j5d6d";
    };
    sprat = {
      url = "https://github.com/collletttivo/sprat/archive/bdf9c50243d647290ecb21555b03a1aafba447ac.zip";
      sha256 = "1h8jjwjmv4hrz4a7xjfmc9x0x2hasf0gm91b40gbvbb9sfna6pwk";
    };
    sneaky-times = {
      url = "https://github.com/collletttivo/sneaky-times/archive/7094a621508090d479ccb95ce6a6b8827b3f9d4e.zip";
      sha256 = "1grp2n0ligz80z87f7mrl6y95m6fvqy6dwiz432g26cwlci8i3x5";
    };
    necto-mono = {
      url = "https://github.com/collletttivo/necto-mono/archive/db9edb73bace38d64f36f29e698d9c7547045ce6.zip";
      sha256 = "0n37h5icl2hzja6nsnxvyn34ysaa544h7l2hj7kj6jyadr5iq0rs";
    };
    # Rest
    avara = {
      url = "https://fontlibrary.org/assets/downloads/avara/6b5edf3969ff9c68c8252ed4e75d7d29/avara.zip";
      sha256 = "0zb0yhym8l7rqh01w9mz5bn48430cp411ws2m54ajpvvydbd6ax1";
    };
    bagnard = {
      url = "https://fontlibrary.org/assets/downloads/bagnard/9747d80ddaf841eb2779ed45ea1d8ac2/bagnard.zip";
      sha256 = "1a1c3b178qcfg37gi0spksacfriwdyi3252n0d22jcxbkvkm8xi3";
    };
    xolonium = {
      url = "https://fontlibrary.org/assets/downloads/xolonium/e00c124f3e1b130e5ec2a7eee2f4f1b8/xolonium.zip";
      sha256 = "1phkxd87lvxlligx6c1rlpa10s5c3941z1awmvj0vq3yv02i80aq";
    };
    bagnard-sans = {
      url = "https://fontlibrary.org/assets/downloads/bagnard-sans/c1f19ea483f6b4671656a50a9b4f56a9/bagnard-sans.zip";
      sha256 = "1d8q2zn729bvydxjv25sknr02zi2pbl07g2zl7xyhdkm72ck5d0a";
    };
    mplus-m-type1 = {
      url = "https://fontlibrary.org/assets/downloads/m-m-type-1/215232028d5eda348fa2779b727768c8/m-m-type-1.zip";
      sha256 = "1qp9ii7i047ny9b3gsgd9gsb0cyjr6zph4n07gl21dwkdji5bkq6";
    };
    gapsans = {
      url = "https://fontlibrary.org/assets/downloads/gapsans/094957e1fdb3f16e25c0b69c84cafbb0/gapsans.zip";
      sha256 = "13gqvlfbaqxiscsyn0mc0bzawy2k4kljqnswiq9pfcr63p8i7wz9";
    };
    bluu-next = {
      url = "https://fontlibrary.org/assets/downloads/bluu/0c5474fbe27e5d9e2024b6444b3fce7d/bluu.zip";
      sha256 = "14p3rk333p3hlhl6985cgj4shdaknxcc6a3l6x35y5gj5pi108cz";
    };
    terminal-grotesque = {
      url = "https://fontlibrary.org/assets/downloads/terminal-grotesque/01a2094cd0b7142d7a4442898188b009/terminal-grotesque.zip";
      sha256 = "0y4w0nydbpy05q63x54q5pp0wcfk04d1mmzkh50i3hmcl0wq7m5j";
    };
    cotham = {
      url = "https://fontlibrary.org/assets/downloads/cotham/5bb696427267954ad2afce092662ea1a/cotham.zip";
      sha256 = "1v6vld4g5j1hc5d4visfr4gwg2p515n04808pcaxfsrkxlvbd0px";
    };
    reglo = {
      url = "https://fontlibrary.org/assets/downloads/reglo/aa835e5f5c4670df6c6f86cd71fc94da/reglo.zip";
      sha256 = "0salcqcqi8rmarjkv36d3nx4x8myx7gys7jncfb626v3l0cbcxwn";
    };
    grana-padano = {
      url = "https://fontlibrary.org/assets/downloads/grana-padano/67c44957a5109298272b45dd1fb7c616/grana-padano.zip";
      sha256 = "1ragij6czr8ig9d47w8dbh4q4z1rbq9bm3an1xakqprl0b7mpf81";
    };
    chicagoflf = {
      url = "https://fontlibrary.org/assets/downloads/chicagoflf/a2e4a3d14e40fa7076a0a1bc06f3de43/chicagoflf.zip";
      sha256 = "0759jfi2dq3gbz5fg69ggyyamzicf42cpxvy59qh1mrbyclcblh8";
    };
    vremena-grotesk = {
      url = "https://fontlibrary.org/assets/downloads/vremena-grotesk/665ebeedbb6c3709c5da255933e386ea/vremena-grotesk.zip";
      sha256 = "15sl4qwcwal4cmmlfv0xq730z9k6dlfhk9zll95gx1vw5l8xgi0q";
    };
    vremena = {
      url = "https://fontlibrary.org/assets/downloads/vremena/d86754c2f3a74a2b86aca905117c16ea/vremena.zip";
      sha256 = "0iba2ciyq75slnmzyljz9cbvpij74rlji6vni682gdjwnylc2y28";
    };
    aveira = {
      url = "https://fontlibrary.org/assets/downloads/averia/dc61396d0f8e3b0130933b1227022c20/averia.zip";
      sha256 = "03ynlzl7bk7mkh5mkyiz254azk9grv319j4b6adi3gg242p42bzl";
    };
    jazzy-pixel = {
      url = "https://www.1001fonts.com/download/jazzypixel.zip";
      sha256 = "1rfx7f1c89piil5xcbhjvrayxbchf86nqa7paxdqq8w27rx3857v";
    };
    mochesa = {
      url = "https://www.1001fonts.com/download/mochesa.zip";
      sha256 = "sha256-/N2AWnBt3f3r6lPz+AXultbdXvjHBsP51MKyRapMA8E=";
    };
    bold-pixels = {
      url = "https://www.1001fonts.com/download/boldpixels.zip";
      sha256 = "092arrh8gfx8fg7alakm3dlbkhjs9l8z9izvlf3dxphcvpbyr2fv";
    };
    viscerale-brush = {
      url = "https://www.1001fonts.com/download/viscerale-brush.zip";
      sha256 = "0fazp72gd2bmxbphigwh2qwfaxsl6p4bmiz7ghc5qw5a9dlq6d1m";
    };
    coolvetica = {
      url = "https://www.1001fonts.com/download/coolvetica.zip";
      sha256 = "0g2ky6yskfbbvkfwxxgmdx90cw1fz0pnsikn9w7npf2yh7ngi94k";
    };
    dubiel = {
      url = "https://www.1001fonts.com/download/dubiel.zip";
      sha256 = "0181warc8cbrkhjvwdz4cyhqp7r19r3g1d1hfjsbyq02cwhj828f";
    };
    kilsonburg = {
      url = "https://www.1001fonts.com/download/kilsonburg.zip";
      sha256 = "00cxpw2i9jakzjwnw831p36p4pqv5v501hq2rpyi1r04acgv43zj";
    };
    pupcat = {
      url = "https://www.1001fonts.com/download/pupcat.zip";
      sha256 = "1yphhj4p95x256azvb72569axfn10zz2498c7xav4q59pvicy04x";
    };
    tulisan-tangan-ku = {
      url = "https://www.1001fonts.com/download/tulisan-tangan-ku.zip";
      sha256 = "1ld1k8j9yyy50lnd15l03084m5pzns49pxbv7xla0bbq8jz62c2q";
    };
    cubano = {
      url = "https://font.download/dl/font/cubano.zip";
      sha256 = "0ar7zpnxk0y7yszqysf0n249a5c0dzy60lvp01f1mhjvy7lrr0a9";
    };
  };
  makeFont = name: data: pkgs.stdenv.mkDerivation {
    name = "custom-font-${name}";
    src = pkgs.fetchzip {
      url = data.url;
      sha256 = data.sha256;
      stripRoot = false;
    };
    installPhase = ''
      mkdir -p $out/share/fonts/
      # cp -r $src/* $out/share/fonts/
      find $src -type f \( -iname "*.ttf" -o -iname "*.otf" -o -iname "*.woff" -o -iname "*.woff2" \) -exec cp {} $out/share/fonts/ \;
    '';
  };
  allFonts = builtins.mapAttrs makeFont fonts;
in
{
  fonts.packages = with pkgs; [
    google-fonts
    cantarell-fonts
    nerd-fonts.adwaita-mono
    adwaita-fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    sarasa-gothic
    twitter-color-emoji
    libertine
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term
    nerd-fonts.jetbrains-mono
    fantasque-sans-mono
    aileron
    cooper-hewitt
    junicode
    office-code-pro
    dosis
    gelasio
    icomoon-feather
    iosevka
    times-newer-roman
    monocraft
    oswald
    roboto
    montserrat
    open-sans
    texlivePackages.playfair
    minecraftia
  ] ++ (builtins.attrValues allFonts);
}
