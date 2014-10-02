
((digest . "6fce82de92e31837aed5bdc6ebb4652f") (undo-list nil (161 . 175) nil (" " . -161) nil ("." . -162) nil (154 . 163) nil ("0" . -154) nil (149 . 155) nil ("5" . -149) nil ("6" . -150) nil (150 . 151) nil ("]" . -150) nil ("6" . -151) nil (149 . 152) nil ("7" . -149) nil (148 . 150) nil ("g" . -148) nil (146 . 149) nil (126 . 146) nil ("h" . -126) nil ("b" . -127) nil ("u" . -128) nil (117 . 129) nil (97 . 117) nil ("
" . -97) ((marker . 383) . -1) nil ("
" . -96) ((marker . 96) . -1) ((marker . 96) . -1) ((marker . 96) . -1) nil ("{% endhighlight %}" . 97) nil ("
" . 97) nil ("
" . 97) nil ("}  " . 97) nil ("
" . 97) nil (" die $response->status_line;" . 97) nil ("
" . 97) nil ("}else{" . 97) nil ("
" . 97) nil (" print $res->{nowonair_list}->{g1}->{previous}->{id};" . 97) nil ("
" . 97) nil (" my $res = decode_json($response->content);" . 97) nil ("
" . 97) nil ("if($response->is_success){" . 97) nil ("
" . 97) nil ("
" . 97) nil ("my $response = $ua->get($url);" . 97) nil ("
" . 97) nil ("my $ua = LWP::UserAgent->new;" . 97) nil ("
" . 97) nil ("my $url = 'http://api.nhk.or.jp/v1/pg/now/130/g1.json?key=UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm';" . 97) nil ("
" . 97) nil ("
" . 97) nil ("use JSON qw/decode_json/;" . 97) nil ("
" . 97) nil ("use LWP::UserAgent;" . 97) nil ("
" . 97) nil ("use URI;" . 97) nil ("
" . 97) nil ("use Data::Dumper;" . 97) nil ("
" . 97) nil ("use utf8;" . 97) nil ("
" . 97) nil ("use warnings;" . 97) nil ("
" . 97) nil ("use strict;" . 97) nil ("
" . 97) nil ("
" . 97) nil ("{% highlight perl %}" . 97) ((marker*) . 20) ((marker) . -1) ((marker*) . 1) ((marker) . -20) nil ("{% highlight perl %}

use strict;
use warnings;
use utf8;
use Data::Dumper;
use URI;
use LWP::UserAgent;
use JSON qw/decode_json/;

my $url = 'http://api.nhk.or.jp/v1/pg/now/130/g1.json?key=UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm';
my $ua = LWP::UserAgent->new;
my $response = $ua->get($url);

if($response->is_success){
 my $res = decode_json($response->content);
 print $res->{nowonair_list}->{g1}->{previous}->{id};
}else{
 die $response->status_line;
}  

{% endhighlight %}
" . 570) ((marker . 59) . -287) ((marker . 59) . -287) ((marker . 74) . -314) ((marker . 74) . -314) ((marker . 92) . -358) ((marker . 92) . -358) ((marker . 96) . -412) ((marker . 96) . -412) nil (570 . 1042) nil (569 . 570) nil (97 . 569) (t 21261 . 17140) nil ("{% highlight perl %}

use strict;
use warnings;
use utf8;
use Data::Dumper;
use URI;
use LWP::UserAgent;
use JSON qw/decode_json/;

my $url = 'http://api.nhk.or.jp/v1/pg/now/130/g1.json?key=UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm';
my $ua = LWP::UserAgent->new;
my $response = $ua->get($url);

if($response->is_success){
 my $res = decode_json($response->content);
 print $res->{nowonair_list}->{g1}->{previous}->{id};
}else{
 die $response->status_line;
}  

{% endhighlight %}
" . -97) nil (570 . 1371) (t 21261 . 17090) nil ("
NHK番組表APIが便利そうだったので、コードを書いてみた。ブログちょっとでも書いてみて、成長を記録しないとと思いたったため。
Now On Air APIを利用して、

Resource URL

{% highlight perl %}
http://api.nhk.or.jp/v1/pg/now/{area}/{service}.json?key={apikey}
{% endhighlight %}

上記のResource URLにて、パラメタである{}内を指定すると、それに対するJSONが返される.
今回パラメタは、area  130:東京, service g1:NHK総合1 apikeyで指定した。apikeyは申請すれば自分固有のものがもらえる。

ハマった点としては、$res->する前で、decode_jsonすること。

{% highlight perl %}
use JSON qw/decode_json/
my $res = decode_json($response->content);
{% endhighlight %}

これで、JSONとして、値を取り出せる。decode_jsonしないで、最初ははつまっていて、エラーとしては、

{% highlight perl %}

Can't use string (\"{\"nowonair_list\":{\"g1\":{\"previou\"...) as a HASH ref while \"strict refs\" in use

{% endhighlight %}

これである.

文字列として扱っていたので、JSONの値としては、ハッシュで取り出せないということだ。
decode_jsonしたら、JSONとして扱うことができるので、ひとまず解決。

これを使ったPerlプログラムはまた続き。
" . -570) (t 21261 . 16871) nil ("
" . -1036) nil ("
" . -968) nil (568 . 570) nil ("
" . -568) (t 21261 . 16572) nil (" " . -78) nil (" " . -67) nil (67 . 68) nil (" " . -67) (t 21261 . 16053) nil (1040 . 1041) nil ("{" . 1040) nil ("
" . -830) nil (909 . 910) nil ("
" . -909) nil (769 . 774) nil ("t" . -769) nil ("l" . -770) nil (762 . 771) nil ("h" . -762) nil ("i" . -763) nil ("g" . -764) nil ("h" . -765) nil ("l" . -766) nil ("i" . -767) nil ("g" . -768) nil ("h" . -769) nil ("t" . -770) nil (" " . -771) nil ("p" . -772) nil ("e" . -773) nil ("r" . -774) nil ("l" . -775) nil (759 . 779) nil (759 . 760) nil (672 . 692) nil (671 . 672) nil (910 . 930) nil ("{% highlight perl %}" . 910) nil ("
" . -635) nil (120 . 121) nil (550 . 551) nil ("
" . -119) nil ("
" . -550) nil (120 . 121) nil ("
" . -120) (t 21261 . 15894) nil (57 . 58) nil ("7" . -57) nil (57 . 58) nil ("7" . -57) nil (56 . 58) nil ("2" . -56) nil ("0" . -57) nil (53 . 55) nil ("0" . -53) nil ("-" . -54) nil ("2" . -55) nil (53 . 56) nil ("1" . -53) nil ("0" . -54) nil (54 . 55) nil ("2" . -54) nil (51 . 52) nil ("3" . -51) nil (116 . 117) nil (1334 . 1335) nil (927 . 928) nil (912 . 913) nil (" " . -912) nil (" " . -927) nil (" " . -116) nil (120 . 121) nil (909 . 910) nil (1197 . 1198) nil (1098 . 1099) nil (999 . 1000) nil (930 . 931) nil ("n" . -909) nil (909 . 910) nil (550 . 551) nil ("
" . -569) (t 21261 . 15489) nil (1328 . 1329) nil (1326 . 1328) nil (1324 . 1326) nil (1323 . 1324) nil (1318 . 1323) nil (1314 . 1318) nil (1311 . 1314) nil (1308 . 1311) nil ("続" . -1308) nil ("き" . -1309) nil (1308 . 1310) nil (1306 . 1308) nil (1305 . 1306) nil (1303 . 1305) nil (1299 . 1303) nil (1293 . 1299) nil (1290 . 1293) nil (1288 . 1290) nil (1285 . 1288) nil (1281 . 1285) nil (1277 . 1281) nil (1266 . 1277) nil ("d" . -1266) nil ("e" . -1267) nil (1266 . 1268) nil ("
" . -1266) nil (1265 . 1267) nil (1251 . 1252) nil (1247 . 1251) nil (1254 . 1260) nil (1251 . 1254) nil (1247 . 1251) nil (1242 . 1247) nil (1241 . 1242) nil (1240 . 1241) nil (1238 . 1240) nil ("N" . -1238) nil (1236 . 1239) nil (1233 . 1236) nil (1228 . 1233) nil ("、" . -1228) nil (1225 . 1229) nil (1222 . 1225) nil (1220 . 1222) nil (1219 . 1220) nil (1197 . 1209) nil ("e" . -1197) nil ("n" . -1198) nil ("d" . -1199) nil ("h" . -1200) nil ("i" . -1201) nil ("g" . -1202) nil ("h" . -1203) nil (1197 . 1204) nil ("h" . -1197) nil ("i" . -1198) nil ("g" . -1199) nil ("h" . -1200) nil ("l" . -1201) nil ("i" . -1202) nil ("g" . -1203) nil ("h" . -1204) nil ("t" . -1205) nil (" " . -1206) nil ("p" . -1207) nil ("e" . -1208) nil ("r" . -1209) nil ("l" . -1210) nil (1194 . 1214) nil (1194 . 1195) nil (1075 . 1095) nil (1074 . 1075) nil (" " . -99) nil (99 . 100) nil (1174 . 1179) nil (1172 . 1174) nil (1075 . 1172) nil ("C" . -1075) nil ("a" . -1076) (t 21261 . 15347) nil (1075 . 1077) nil ("decode_jsonすること。" . 1075) nil (1075 . 1091) (t 21261 . 15297) nil ("decode_jsonすること。" . 1075) nil (1075 . 1091) nil (1073 . 1075) nil (1068 . 1073) nil (1065 . 1068) nil (1058 . 1065) nil (1057 . 1058) nil (1054 . 1057) nil (1049 . 1054) nil (1038 . 1049) nil ("d" . -1038) nil ("e" . -1039) nil ("c" . -1040) nil ("o" . -1041) nil ("e" . -1042) nil ("d" . -1043) nil ("e" . -1044) nil (1038 . 1045) nil (1037 . 1038) nil (1032 . 1037) nil (1031 . 1032) nil (1030 . 1031) nil (1026 . 1030) nil (1022 . 1026) nil (1018 . 1022) nil (1017 . 1018) nil ("
" . -997) nil (997 . 998) nil (986 . 997) nil ("_" . -986) nil (978 . 987) nil (958 . 978) nil ("%" . -958) nil (958 . 959) nil ("%" . -958) nil ("$" . -959) nil (955 . 960) nil (934 . 954) nil ("j" . -934) nil (930 . 935) nil ("
" . -929) nil (892 . 908) nil ("decode_jsonすること。" . 914) nil (930 . 932) nil (929 . 930) nil ("、" . -929) nil (925 . 930) nil (914 . 925) nil ("
" . -892) nil (916 . 934) nil (914 . 917) nil (894 . 914) nil ("{" . -894) nil ("%" . -895) nil (894 . 896) nil (892 . 894) nil ("d" . -892) nil ("e" . -893) nil ("c" . -894) nil ("o" . -895) nil ("d" . -896) nil (892 . 897) nil ("d" . -892) nil ("e" . -893) nil ("c" . -894) nil ("o" . -895) nil ("e" . -896) nil ("e" . -897) nil (892 . 898) nil (890 . 892) nil (887 . 890) nil (881 . 887) nil ("$" . -881) nil ("r" . -882) nil ("e" . -883) nil (881 . 884) nil ("d" . -881) nil ("e" . -882) nil (881 . 883) nil (876 . 881) nil (871 . 876) nil ("
" . -871) nil (869 . 871) nil (868 . 869) nil ("の" . -868) nil ("で" . -869) nil (864 . 870) nil (861 . 864) nil (858 . 861) nil ("の" . -858) nil (856 . 859) nil (853 . 856) nil (851 . 853) nil (850 . 851) nil (844 . 850) nil (841 . 844) nil (839 . 841) nil (838 . 839) nil (832 . 838) nil ("a" . -832) nil ("p" . -833) nil ("k" . -834) nil (832 . 835) nil (812 . 813) nil (" " . -831) nil (829 . 832) nil (827 . 829) nil ("s" . -827) nil ("o" . -828) nil (823 . 829) nil (816 . 823) nil ("c" . -816) nil ("i" . -817) nil ("o" . -818) nil (813 . 819) nil ("s" . -813) nil ("e" . -814) nil ("r" . -815) nil ("v" . -816) nil ("i" . -817) nil ("c" . -818) nil ("e" . -819) nil (812 . 820) nil ("　" . -813) nil ("　" . -814) nil (814 . 815) nil (813 . 814) nil (812 . 813) nil (810 . 812) nil (807 . 810) nil ("4" . -807) nil (800 . 808) nil (798 . 800) nil (794 . 798) nil (792 . 794) nil (790 . 792) nil (789 . 790) nil (785 . 789) nil (784 . 785) nil ("
" . -784) nil (784 . 785) nil (780 . 784) nil (777 . 780) nil (774 . 777) nil (770 . 774) nil (768 . 770) nil (767 . 768) nil ("の" . -767) nil (766 . 768) nil (764 . 766) nil (761 . 764) nil (757 . 761) nil (754 . 757) nil (742 . 754) nil ("R" . -742) nil ("e" . -743) nil ("s" . -744) nil ("o" . -745) nil ("y" . -746) nil ("u" . -747) nil (742 . 748) nil ("R" . -742) nil ("e" . -743) nil ("s" . -744) nil (742 . 745) nil (739 . 742) nil ("こ" . -739) nil ("れ" . -740) nil ("を" . -741) nil (739 . 742) nil (737 . 739) nil (732 . 737) nil (712 . 732) nil (692 . 712) nil (672 . 692) nil (670 . 672) nil (658 . 670) nil ("R" . -658) nil ("E" . -659) nil (658 . 660) nil (657 . 658) nil ("
" . -657) nil ("R" . -658) nil ("e" . -659) nil (658 . 660) nil (656 . 658) nil (653 . 656) nil (651 . 653) nil (650 . 651) nil (644 . 650) nil ("r" . -644) nil ("i" . -645) nil (636 . 646) nil (634 . 636) nil (629 . 634) nil (626 . 629) nil (621 . 626) nil (619 . 621) nil (618 . 619) nil (616 . 618) nil (613 . 616) nil (610 . 613) nil (608 . 610) nil (604 . 608) nil ("は" . -604) nil (604 . 605) nil ("が" . -604) nil (604 . 605) nil (601 . 604) nil (598 . 601) nil (595 . 598) nil (594 . 595) nil (591 . 594) nil (583 . 591) nil (581 . 583) nil (580 . 581) nil (577 . 580) nil (576 . 577) nil (574 . 576) nil (571 . 574) nil ("こ" . -571) nil ("れ" . -572) nil ("で" . -573) nil ("、" . -574) nil (571 . 575) nil ("k" . -571) nil ("o" . -572) nil ("r" . -573) nil ("e" . -574) nil (571 . 575) nil (568 . 571) nil ("
" . -547) nil (120 . 548) nil ("
" . -122) nil (" " . -123) nil ("
" . -124) nil ("
" . -125) (t 21261 . 14825) nil (123 . 124) nil (122 . 123) nil (120 . 122) nil (120 . 122) nil (137 . 139) nil ("^" . -137) nil (127 . 138) nil ("h" . -127) nil ("i" . -128) nil ("h" . -129) nil ("g" . -130) nil ("l" . -131) nil (127 . 132) nil ("h" . -127) nil ("g" . -128) nil ("i" . -129) nil (127 . 130) nil ("h" . -127) nil ("i" . -128) nil ("g" . -129) nil ("h" . -130) nil (121 . 131) nil (119 . 121) nil (102 . 119) nil ("h" . -102) nil ("i" . -103) nil ("g" . -104) nil ("h" . -105) nil ("l" . -106) nil ("i" . -107) nil ("g" . -108) nil ("h" . -109) nil ("t" . -110) nil (" " . -111) nil (100 . 112) nil ("$" . -100) nil ("%" . -101) nil (99 . 102) nil ("
" . -99) nil ("
" . 100) nil ("
" . 100) nil ("まぁ、まだまだ追加していくので、emacsについては、Anythingやauto-installなど大きく分けて記事にしたいと思います." . 100) nil ("
" . 100) nil ("
" . 100) nil ("その下は、init.elに設定を記載し、スクロールバーを非表示にしたり、フルスクリーンにしたり、文字色や行数表示など、自分が欲しい機能を設定した." . 100) nil ("
" . 100) nil ("
" . 100) nil ("auto-installも設定し、elispディレクトリに配置するように設定." . 100) nil ("
" . 100) nil ("
" . 100) nil ("まず、上から軽く説明していくと、emacsの日本語入力のために、mozcを読み込み、パスを通す." . 100) nil ("
" . 100) nil ("
" . 100) nil ("<script src=\"https://gist.github.com/sue7ga/e0c930091a7845e05c9c.js\"></script>" . 100) nil ("
" . 100) nil ("
" . 100) nil ("コードは以下" . 100) nil ("
" . 100) nil ("
" . 100) nil ("elispにElispインストールディレクトリとし、設定する." . 100) nil ("
" . 100) nil ("confディレクトリに分割設定用ディレクトリ" . 100) nil ("
" . 100) nil ("init.elに設定ファイルを配置し、" . 100) nil ("
" . 100) nil ("
" . 100) nil ("基本的には、~/.emacs.dディレクトリ下に配置する." . 100) nil (88 . 92) nil ("s" . -88) nil ("e" . -89) nil ("t" . -90) nil ("t" . -91) nil ("i" . -92) nil ("n" . -93) nil ("g" . -94) nil ("s" . -95) nil (83 . 87) nil ("e" . -83) nil ("m" . -84) nil ("a" . -85) nil ("c" . -86) nil ("s" . -87) nil (70 . 74) nil ("e" . -70) nil ("m" . -71) nil ("a" . -72) nil ("c" . -73) nil ("s" . -74) nil (37 . 41) nil (36 . 37) nil (33 . 36) nil (30 . 33) nil (29 . 30) nil (25 . 29) nil ("e" . -25) nil ("m" . -26) nil ("a" . -27) nil ("c" . -28) nil ("s" . -29) nil ("設" . -30) nil ("定" . -31) nil ("フ" . -32) nil ("ァ" . -33) nil ("イ" . -34) nil ("ル" . -35) nil (1 . 532) (t . -1)))
