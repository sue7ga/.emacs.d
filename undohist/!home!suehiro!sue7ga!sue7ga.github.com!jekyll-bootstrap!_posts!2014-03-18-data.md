
((digest . "9da0ce19fbeda8ec94ce5d50907189f7") (undo-list nil (84 . 149) nil ("{% highlight perl %}

use strict;
use warnings;

my $prefecture;
my $infos = {};

while(my $data = <DATA>){
 my $id;
 my $city;
 my $info = {};

 if($data =~ /^(\\D+?)(県|地方|府|都)$/){
   $prefecture = $1;
 }else{
   ($id,$city) = split /：/,$data;
   my %city = (city=> $city,id=>$id);
   push @{$infos->{$prefecture}},\\%city;
 }
}

use Data::Dumper;
print Dumper $infos;

__DATA__
150030：高田
150040：相川
長野県
200010：長野
200020：松本
200030：飯田
富山県
160010：富山
160020：伏木
石川県
170010：金沢
170020：輪島
福井県
180010：福井
180020：敦賀
愛知県
230010：名古屋
230020：豊橋
岐阜県
210010：岐阜
210020：高山
静岡県
220010：静岡
220020：網代
220030：三島
220040：浜松
三重県
240010：津
240020：尾鷲
大阪府

{% endhighlight %}
" . -84) (t 21287 . 31329) ((marker . 1) . -244) ((marker . 1) . -644) ((marker . 1) . -644) ((marker) . -625) ((marker) . -625) ((marker) . -624) ((marker) . -624) ((marker) . -620) ((marker) . -620) ((marker) . -610) ((marker) . -610) ((marker) . -601) ((marker) . -601) ((marker) . -597) ((marker) . -597) ((marker) . -587) ((marker) . -587) ((marker) . -577) ((marker) . -577) ((marker) . -567) ((marker) . -567) ((marker) . -557) ((marker) . -557) ((marker) . -553) ((marker) . -553) ((marker) . -543) ((marker) . -543) ((marker) . -533) ((marker) . -533) ((marker) . -529) ((marker) . -529) ((marker) . -519) ((marker) . -519) ((marker) . -508) ((marker) . -508) ((marker) . -244) ((marker) . -244) ((marker) . -282) ((marker) . -282) ((marker) . -323) ((marker) . -323) ((marker) . -326) ((marker) . -326) ((marker) . -328) ((marker) . -328) ((marker) . -329) ((marker) . -329) ((marker) . -347) ((marker) . -347) ((marker) . -368) ((marker) . -368) ((marker) . -369) ((marker) . -369) ((marker) . -378) ((marker) . -378) ((marker) . -388) ((marker) . -388) ((marker) . -398) ((marker) . -398) ((marker) . -402) ((marker) . -402) ((marker) . -412) ((marker) . -412) ((marker) . -422) ((marker) . -422) ((marker) . -432) ((marker) . -432) ((marker) . -436) ((marker) . -436) ((marker) . -446) ((marker) . -446) ((marker) . -456) ((marker) . -456) ((marker) . -460) ((marker) . -460) ((marker) . -470) ((marker) . -470) ((marker) . -480) ((marker) . -480) ((marker) . -484) ((marker) . -484) ((marker) . -494) ((marker) . -494) ((marker) . -504) ((marker) . -504) nil (60 . 61) nil ("D" . -60) (t 21287 . 31256) nil (728 . 729) (t 21287 . 31142) nil ("
" . -708) nil (922 . 924) nil (917 . 922) nil (914 . 917) nil (913 . 914) nil ("凍" . -913) nil (912 . 914) nil ("回" . -912) nil ("を" . -913) nil (913 . 914) nil (911 . 913) nil ("別" . -911) nil ("海" . -912) nil (911 . 913) nil (900 . 911) nil (899 . 900) nil (896 . 899) nil (894 . 896) nil (893 . 894) nil ("m" . -893) nil ("お" . -894) nil (894 . 895) nil (891 . 894) nil (886 . 891) nil (885 . 886) nil ("、" . -885) nil ("
" . -886) nil (886 . 887) nil (882 . 886) nil (879 . 882) nil (878 . 879) nil (876 . 878) nil (873 . 876) nil (870 . 873) nil (869 . 870) nil ("て" . -869) nil ("あ" . -870) nil ("げ" . -871) nil ("る" . -872) nil ("。" . -873) nil (870 . 874) nil (867 . 870) nil (864 . 867) nil (860 . 864) nil (856 . 860) nil (855 . 856) nil (853 . 855) nil (852 . 853) nil (850 . 852) nil (843 . 846) nil ("キ" . -843) nil ("ー" . -844) nil (848 . 849) nil (845 . 848) nil (843 . 845) nil (842 . 843) nil (838 . 842) nil (837 . 838) nil (834 . 837) nil (833 . 834) nil ("w" . -833) nil ("o" . -834) nil ("
" . -835) nil (835 . 836) nil (833 . 835) nil (827 . 833) nil ("$" . -827) nil ("i" . -828) nil ("n" . -829) nil ("f" . -830) nil ("o" . -831) nil ("s" . -832) nil (827 . 833) nil (825 . 827) nil (824 . 825) nil (821 . 824) nil (820 . 821) nil (818 . 820) nil (815 . 818) nil (812 . 815) nil (809 . 812) nil (805 . 809) nil ("ア" . -805) nil ("ッ" . -806) nil ("シ" . -807) nil ("ュ" . -808) nil (805 . 809) nil (803 . 805) nil (802 . 803) nil (798 . 802) nil (793 . 798) nil (791 . 793) nil (790 . 791) nil (788 . 790) nil (787 . 788) nil (785 . 787) nil ("c" . -785) nil ("i" . -786) nil ("t" . -787) nil ("y" . -788) nil (785 . 789) nil (784 . 785) nil (782 . 784) nil (781 . 782) nil (777 . 781) nil (771 . 777) nil (769 . 771) nil (768 . 769) nil ("う" . -768) nil ("ぃ" . -769) nil ("お" . -770) nil (768 . 771) nil (766 . 768) nil (763 . 766) nil (762 . 763) nil (761 . 762) nil (758 . 761) nil (757 . 758) nil (752 . 757) nil (748 . 752) nil (747 . 748) nil (745 . 747) nil (744 . 745) nil (741 . 744) nil (738 . 741) nil (730 . 738) nil (453 . 461) nil (452 . 453) nil (nil fontified t 695 . 699) (nil fontified t 473 . 695) (nil fontified t 453 . 473) (453 . 699) nil (452 . 453) nil (452 . 453) nil (#("150030：高田
150040：相川
長野県
200010：長野
200020：松本
200030：飯田
富山県
160010：富山
160020：伏木
石川県
170010：金沢
170020：輪島
福井県
180010：福井
180020：敦賀
愛知県
230010：名古屋
230020：豊橋
岐阜県
210010：岐阜
210020：高山
静岡県
220010：静岡
220020：網代
220030：三島
220040：浜松
三重県
240010：津
240020：尾鷲
大阪府
" 0 20 (fontified t) 20 242 (fontified t) 242 246 (fontified t)) . 472) (nil fontified nil 472 . 492) (nil fontified nil 492 . 714) (nil fontified nil 714 . 718) nil (nil fontified t 714 . 718) (nil fontified t 492 . 714) (nil fontified t 472 . 492) (472 . 718) nil ("_" . -473) nil ("_" . -474) nil (473 . 475) nil (471 . 473) nil (459 . 471) nil ("l" . -459) nil (454 . 460) nil ("$" . -454) nil (453 . 455) nil (103 . 104) nil ("{" . -103) nil (87 . 104) nil ("h" . -87) nil ("i" . -88) nil ("h" . -89) nil ("g" . -90) nil ("l" . -91) nil ("i" . -92) nil ("h" . -93) nil ("g" . -94) nil ("t" . -95) nil (" " . -96) nil (85 . 97) nil ("$" . -85) nil ("%" . -86) nil (84 . 87) nil (83 . 84) nil (nil fontified t 415 . 432) (nil fontified t 410 . 415) (nil fontified t 409 . 410) (nil fontified t 408 . 409) (nil fontified t 396 . 408) (nil fontified t 395 . 396) (nil fontified t 392 . 395) (nil fontified t 391 . 392) (nil fontified t 384 . 391) (nil fontified t 379 . 384) (nil fontified t 352 . 379) (nil fontified t 348 . 352) (nil fontified t 337 . 348) (nil fontified t 335 . 337) (nil fontified t 326 . 335) (nil fontified t 322 . 326) (nil fontified t 318 . 322) (nil fontified t 313 . 318) (nil fontified t 312 . 313) (nil fontified t 310 . 312) (nil fontified t 299 . 310) (nil fontified t 298 . 299) (nil fontified t 297 . 298) (nil fontified t 296 . 297) (nil fontified t 295 . 296) (nil fontified t 290 . 295) (nil fontified t 271 . 290) (nil fontified t 267 . 271) (nil fontified t 241 . 267) (nil fontified t 240 . 241) (nil fontified t 239 . 240) (nil fontified t 238 . 239) (nil fontified t 237 . 238) (nil fontified t 236 . 237) (nil fontified t 235 . 236) (nil fontified t 234 . 235) (nil fontified t 232 . 234) (nil fontified t 231 . 232) (nil fontified t 230 . 231) (nil fontified t 229 . 230) (nil fontified t 228 . 229) (nil fontified t 227 . 228) (nil fontified t 226 . 227) (nil fontified t 225 . 226) (nil fontified t 224 . 225) (nil fontified t 223 . 224) (nil fontified t 222 . 223) (nil fontified t 221 . 222) (nil fontified t 211 . 221) (nil fontified t 209 . 211) (nil fontified t 200 . 209) (nil fontified t 195 . 200) (nil fontified t 194 . 195) (nil fontified t 192 . 194) (nil fontified t 189 . 192) (nil fontified t 184 . 189) (nil fontified t 183 . 184) (nil fontified t 181 . 183) (nil fontified t 178 . 181) (nil fontified t 175 . 178) (nil fontified t 174 . 175) (nil fontified t 172 . 174) (nil fontified t 159 . 172) (nil fontified t 154 . 159) (nil fontified t 153 . 154) (nil fontified t 151 . 153) (nil fontified t 150 . 151) (nil fontified t 145 . 150) (nil fontified t 144 . 145) (nil fontified t 137 . 144) (nil fontified t 131 . 137) (nil fontified t 130 . 131) (nil fontified t 128 . 130) (nil fontified t 127 . 128) (nil fontified t 126 . 127) (nil fontified t 115 . 126) (nil fontified t 114 . 115) (nil fontified t 112 . 114) (nil fontified t 111 . 112) (nil fontified t 109 . 111) (nil fontified t 101 . 109) (nil fontified t 100 . 101) (nil fontified t 97 . 100) (nil fontified t 96 . 97) (nil fontified t 95 . 96) (nil fontified t 89 . 95) (nil fontified t 88 . 89) (nil fontified t 85 . 88) (85 . 432) nil (83 . 85) nil ("," . -77) nil ("s" . -78) nil ("e" . -79) nil ("t" . -80) nil ("t" . -81) nil ("i" . -82) nil ("n" . -83) nil ("g" . -84) nil ("s" . -85) nil (73 . 77) nil ("g" . -73) nil ("i" . -74) nil ("t" . -75) nil ("t" . -64) nil (60 . 65) nil ("g" . -60) nil ("i" . -61) nil ("t" . -62) nil (47 . 48) nil ("7" . -47) nil ("8" . -48) nil ("`" . -49) nil (41 . 50) nil ("5" . -41) nil (41 . 42) nil ("3" . -41) nil ("-" . -42) nil ("1" . -43) nil ("2" . -44) nil ("-" . -45) nil ("2" . -46) nil ("3" . -47) nil (29 . 31) nil (25 . 29) nil ("G" . -25) nil ("i" . -26) nil ("t" . -27) nil ("を" . -28) nil ("は" . -29) nil ("じ" . -30) nil ("め" . -31) nil ("か" . -32) nil ("ら" . -33) nil ("丁" . -34) nil ("寧" . -35) nil ("に" . -36) nil (1 . 96) (t . -1)))
