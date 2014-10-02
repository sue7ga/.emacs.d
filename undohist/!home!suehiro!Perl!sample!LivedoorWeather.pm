
((digest . "efc6c4d4d23590d90748d51caf23aa09") (undo-list nil (#("my $tokyo = LivedoorWeather->new(400040);
my $city = &get_forecast();
my $city_json = eval{get_ref($city)};

if($@){
  print \"nothing\",\"\\n\";
}

print $city_json->{pinpointLocations}->[0]->{name},\"\\n\";
" 0 2 (face font-lock-keyword-face font-lock-multiline t fontified t) 2 3 (fontified t) 3 9 (face font-lock-variable-name-face fontified t) 9 41 (fontified t) 41 42 (font-lock-multiline t fontified t) 42 44 (face font-lock-keyword-face font-lock-multiline t fontified t) 44 45 (fontified t) 45 50 (face font-lock-variable-name-face fontified t) 50 69 (fontified t) 69 70 (font-lock-multiline t fontified t) 70 72 (face font-lock-keyword-face font-lock-multiline t fontified t) 72 73 (fontified t) 73 83 (face font-lock-variable-name-face fontified t) 83 86 (fontified t) 86 90 (face font-lock-keyword-face fontified t) 90 108 (fontified t) 108 109 (font-lock-multiline t fontified t) 109 111 (face font-lock-keyword-face font-lock-multiline t fontified t) 111 119 (fontified t) 119 124 (face cperl-nonoverridable-face fontified t) 124 125 (fontified t) 125 134 (face font-lock-string-face fontified t) 134 135 (fontified t) 135 139 (face font-lock-string-face fontified t) 139 143 (fontified t) 143 144 (font-lock-multiline t fontified t) 144 149 (face cperl-nonoverridable-face font-lock-multiline t fontified t) 149 163 (fontified t) 163 180 (face font-lock-string-face fontified t) 180 189 (fontified t) 189 193 (face font-lock-string-face fontified t) 193 195 (fontified t) 195 199 (face font-lock-string-face fontified t) 199 201 (fontified t)) . -214) (t 21232 . 16627) nil (nil rear-nonsticky nil 1098 . 1099) (nil fontified nil 1 . 1099) (1 . 1099) (t . -1)))
