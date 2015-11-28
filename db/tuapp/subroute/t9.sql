delete from ref.subroute_new where route = 'T9' and direction = 'SAN_JUAN'; with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.062768 18.389401,-66.062315 18.389971,-66.062305 18.390023,-66.062335 18.390092,-66.062411 18.390138,-66.062524 18.390235,-66.062535 18.390333,-66.062487 18.390441,-66.062315 18.390626,-66.061965 18.390923,-66.061748 18.391089,-66.060917 18.391676,-66.059186 18.392647,-66.058245 18.393146,-66.056621 18.39412,-66.055346 18.395033,-66.053749 18.396229,-66.053588 18.396333,-66.053365 18.396434,-66.053131 18.396427,-66.052904 18.396362,-66.052159 18.395873,-66.051932 18.39575,-66.051582 18.395616,-66.049728 18.395453,-66.047928 18.395326,-66.046613 18.395147,-66.04561 18.39514,-66.045304 18.395117,-66.043899 18.395033,-66.043006 18.394974,-66.042659 18.394997,-66.042505 18.395042,-66.042453 18.395254,-66.042546 18.395515,-66.042872 18.396183,-66.043058 18.396792,-66.043261 18.397451,-66.043322 18.397728,-66.04337 18.397992,-66.043401 18.398256,-66.043425 18.398598,-66.043403 18.400534,-66.043402 18.401317,-66.043344 18.402144,-66.043528 18.403939,-66.043669 18.405445,-66.043753 18.406376,-66.043847 18.409084,-66.043839 18.409482,-66.043654 18.410313,-66.04338 18.411425,-66.042894 18.413202,-66.042813 18.413879,-66.042813 18.414528,-66.042867 18.415212,-66.043146 18.416816,-66.043533 18.418962,-66.043988 18.421213,-66.04409 18.421835,-66.044164 18.422196,-66.044258 18.422439,-66.044328 18.422557,-66.045715 18.424304,-66.045906 18.424549,-66.046051 18.424664,-66.046242 18.424777,-66.047248 18.425389,-66.04767 18.425641,-66.047827 18.425777,-66.047955 18.425914,-66.04857 18.426703,-66.048729 18.426952,-66.048759 18.427134,-66.048727 18.427295,-66.048634 18.427431,-66.048502 18.427561,-66.048354 18.427719,-66.048158 18.428006,-66.047773 18.428571,-66.047469 18.429032,-66.046662 18.430271,-66.046535 18.430449,-66.046347 18.430634,-66.046174 18.430756,-66.04595 18.430884,-66.045703 18.430975,-66.045527 18.431015,-66.045329 18.431039,-66.045138 18.431057,-66.044816 18.431173,-66.044457 18.431349,-66.044215 18.431497,-66.044115 18.431621,-66.04404 18.431772,-66.044036 18.431942,-66.044047 18.432089,-66.044586 18.43367,-66.044968 18.434746,-66.045037 18.434856,-66.045135 18.434921,-66.045458 18.434982,-66.047023 18.435215,-66.048408 18.435415,-66.0499 18.435662,-66.050147 18.435722,-66.050433 18.43582,-66.050713 18.435963,-66.051529 18.43636,-66.052743 18.436944,-66.053647 18.437374,-66.053948 18.437497,-66.054166 18.437533,-66.056129 18.437793,-66.057397 18.437958,-66.057806 18.438012,-66.057954 18.438011,-66.058158 18.438003,-66.058717 18.437956,-66.059353 18.437898,-66.059444 18.437867,-66.059497 18.437815,-66.059485 18.437704,-66.059432 18.437315,-66.059377 18.436234,-66.059363 18.436071,-66.059321 18.435577,-66.059312 18.435518,-66.05933 18.435439,-66.059416 18.435363,-66.059471 18.435341,-66.05958 18.435331,-66.059766 18.43534,-66.060021 18.435371,-66.060366 18.435437,-66.060441 18.435508,-66.060464 18.435604,-66.060446 18.435718,-66.060417 18.43584,-66.06029 18.436396,-66.060219 18.436707,-66.060189 18.436991,-66.060202 18.43726,-66.06027 18.437507,-66.06048 18.437835,-66.060844 18.438283,-66.061723 18.439325,-66.062741 18.440531,-66.063016 18.440832,-66.063278 18.441084,-66.063831 18.441531,-66.064377 18.441959,-66.064859 18.442216,-66.065097 18.442315,-66.065682 18.442563,-66.066444 18.442863,-66.066954 18.443075,-66.067664 18.443399,-66.067963 18.443551,-66.068582 18.443857,-66.069327 18.44421,-66.069547 18.444323,-66.069793 18.444473,-66.071246 18.445604,-66.072392 18.446483,-66.073129 18.447057,-66.073942 18.447652,-66.075823 18.448894,-66.077486 18.449969,-66.078924 18.450682,-66.080729 18.451541,-66.0812 18.451713,-66.081878 18.45191,-66.082884 18.452143,-66.083382 18.452247,-66.083561 18.452306,-66.083731 18.452378,-66.085491 18.453188,-66.087144 18.453932,-66.087246 18.453988,-66.087364 18.454101,-66.087425 18.454192,-66.087487 18.45434,-66.087516 18.454689,-66.087554 18.455221,-66.087572 18.455391,-66.087633 18.455616,-66.08775 18.455791,-66.08796 18.455952,-66.088268 18.456142,-66.088344 18.456193,-66.088385 18.45626,-66.088371 18.456333,-66.088287 18.456455,-66.088126 18.456677,-66.087852 18.45697,-66.087688 18.457111,-66.087524 18.457254,-66.087334 18.457355,-66.087126 18.457449,-66.086963 18.457475,-66.086811 18.457527,-66.08666 18.457627,-66.086477 18.457808,-66.086396 18.457942,-66.086334 18.458119,-66.086314 18.458267,-66.086444 18.459488,-66.08653 18.460139,-66.086583 18.460302,-66.086609 18.460383,-66.086794 18.460909,-66.087131 18.461144,-66.087737 18.461365,-66.088382 18.461807,-66.088412 18.461843,-66.088777 18.461829,-66.08905 18.461859,-66.089654 18.462082,-66.090179 18.462287,-66.090592 18.462443,-66.09131 18.462724,-66.092979 18.463392,-66.093837 18.463757,-66.094521 18.463763,-66.097234 18.463968,-66.099663 18.464099,-66.10226 18.464292,-66.10296 18.464505,-66.104495 18.464904,-66.105675 18.465221,-66.106203 18.465288,-66.106539 18.465232,-66.107097 18.465318,-66.107674 18.465239,-66.107739 18.46515,-66.10781 18.463944,-66.10787 18.463901,-66.10794 18.463897,-66.108587 18.46394,-66.110092 18.46402,-66.110459 18.464034,-66.110513 18.464082,-66.11051 18.464286,-66.110464 18.464349,-66.110462 18.464416,-66.110509 18.464589,-66.110576 18.464809)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'T9','SAN_JUAN', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_new where route = 'T9' and direction = 'CAPETILLO'; with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.110584 18.464839,-66.110615 18.464941,-66.110669 18.46498,-66.110823 18.464994,-66.11107 18.464948,-66.111191 18.464875,-66.111069 18.464134,-66.110998 18.464029,-66.110783 18.463958,-66.109967 18.463955,-66.109459 18.463938,-66.10704 18.463808,-66.106911 18.463831,-66.106711 18.464103,-66.106139 18.465005,-66.105768 18.465199,-66.105602 18.465155,-66.105155 18.465027,-66.104681 18.464898,-66.104532 18.464859,-66.10378 18.464664,-66.103057 18.464473,-66.102404 18.46427,-66.102168 18.464233,-66.101411 18.464178,-66.100509 18.464122,-66.099514 18.464049,-66.098987 18.464026,-66.097967 18.463969,-66.097221 18.463912,-66.096801 18.463883,-66.095738 18.463802,-66.094497 18.463713,-66.093917 18.463711,-66.092534 18.463169,-66.091054 18.462585,-66.09022 18.462256,-66.089547 18.462002,-66.089028 18.461815,-66.088715 18.461791,-66.088457 18.461812,-66.088415 18.461811,-66.088373 18.46182,-66.087987 18.461885,-66.087872 18.461878,-66.087728 18.461818,-66.087695 18.461787,-66.087645 18.461733,-66.087506 18.461526,-66.087429 18.461363,-66.087393 18.46122,-66.087384 18.461186,-66.087363 18.461026,-66.087349 18.460773,-66.087358 18.460142,-66.087295 18.459763,-66.087198 18.45919,-66.087088 18.458696,-66.087071 18.458473,-66.087106 18.458017,-66.087125 18.457776,-66.087153 18.457644,-66.087224 18.45755,-66.087348 18.457474,-66.087537 18.457402,-66.087776 18.457276,-66.08796 18.457131,-66.088222 18.456892,-66.088526 18.456485,-66.088543 18.456357,-66.088518 18.456239,-66.088361 18.456111,-66.088134 18.455962,-66.087958 18.455863,-66.087796 18.455729,-66.087736 18.455647,-66.087672 18.455532,-66.087638 18.455367,-66.087615 18.45518,-66.087593 18.454702,-66.087554 18.454311,-66.087501 18.454139,-66.087458 18.454068,-66.087408 18.454,-66.087331 18.453943,-66.087265 18.453906,-66.086992 18.453769,-66.086122 18.453408,-66.085238 18.452994,-66.08492 18.452859,-66.084436 18.45264,-66.083984 18.452435,-66.083828 18.452359,-66.083618 18.452275,-66.083408 18.452202,-66.08301 18.452088,-66.082312 18.45192,-66.081431 18.451702,-66.080655 18.451418,-66.080345 18.451273,-66.078757 18.450502,-66.0781 18.450178,-66.077506 18.449872,-66.076994 18.449557,-66.076093 18.448954,-66.075351 18.448453,-66.074389 18.44783,-66.073747 18.447412,-66.073045 18.44688,-66.071551 18.44571,-66.070593 18.444967,-66.070276 18.444726,-66.069824 18.444373,-66.069429 18.444135,-66.068779 18.443847,-66.068077 18.443488,-66.067646 18.443282,-66.067188 18.44307,-66.06625 18.442696,-66.065069 18.442206,-66.064616 18.441982,-66.064316 18.441784,-66.063984 18.44153,-66.063454 18.441103,-66.063087 18.440781,-66.062412 18.440021,-66.061714 18.439183,-66.06113 18.438497,-66.060709 18.437988,-66.060566 18.437825,-66.060394 18.437553,-66.0603 18.437328,-66.06027 18.437149,-66.060277 18.436945,-66.060316 18.43663,-66.06041 18.436226,-66.060411 18.436104,-66.060389 18.436072,-66.060342 18.436004,-66.059965 18.43601,-66.059429 18.436023,-66.059363 18.436071,-66.059341 18.436087,-66.059304 18.436187,-66.059315 18.436311,-66.059379 18.4375,-66.059423 18.43775,-66.059402 18.437819,-66.059347 18.437861,-66.059251 18.437876,-66.058965 18.437903,-66.058669 18.437932,-66.058456 18.437942,-66.057964 18.437978,-66.057746 18.437965,-66.057233 18.437906,-66.055969 18.437732,-66.055626 18.437678,-66.055292 18.437633,-66.05452 18.437526,-66.054125 18.437479,-66.053941 18.437438,-66.053769 18.437365,-66.05353 18.437257,-66.053271 18.437128,-66.052631 18.436817,-66.052256 18.436648,-66.051094 18.436104,-66.05046 18.435787,-66.050115 18.435659,-66.049862 18.435612,-66.049447 18.435533,-66.048107 18.435324,-66.047748 18.435264,-66.046884 18.435146,-66.046284 18.435055,-66.045455 18.434925,-66.045183 18.43488,-66.045103 18.434823,-66.045053 18.434738,-66.044997 18.43461,-66.044915 18.434368,-66.04464 18.433608,-66.044275 18.43258,-66.044115 18.432111,-66.044082 18.43197,-66.044091 18.431792,-66.044134 18.431674,-66.044217 18.431561,-66.044289 18.431501,-66.044469 18.431399,-66.044881 18.431215,-66.045115 18.431156,-66.045251 18.431153,-66.045576 18.431116,-66.045818 18.431045,-66.046079 18.430925,-66.046302 18.430786,-66.046505 18.430633,-66.046717 18.430378,-66.046905 18.430084,-66.047103 18.429763,-66.047389 18.429317,-66.04755 18.429072,-66.047923 18.428558,-66.048186 18.428146,-66.048433 18.427791,-66.048676 18.427515,-66.048798 18.427368,-66.048858 18.427178,-66.048859 18.427056,-66.048821 18.426912,-66.048731 18.426773,-66.048622 18.426634,-66.048226 18.426129,-66.048075 18.425935,-66.047941 18.425708,-66.047839 18.425642,-66.047011 18.425169,-66.046308 18.424747,-66.046039 18.42458,-66.045925 18.424475,-66.045731 18.424227,-66.045447 18.423867,-66.045148 18.423472,-66.044585 18.422788,-66.044419 18.42256,-66.044376 18.422447,-66.044275 18.421863,-66.044072 18.420662,-66.043879 18.41963,-66.043777 18.419039,-66.043695 18.418562,-66.043495 18.417435,-66.043383 18.416831,-66.04323 18.416045,-66.043104 18.415261,-66.043051 18.414637,-66.043033 18.414174,-66.043048 18.413755,-66.043112 18.413307,-66.043244 18.41277,-66.043624 18.411317,-66.04408 18.409553,-66.044106 18.409129,-66.044064 18.408136,-66.043999 18.406553,-66.043877 18.405256,-66.043623 18.402859,-66.043547 18.402147,-66.043507 18.401709,-66.043536 18.398571,-66.043531 18.398271,-66.043512 18.39799,-66.043415 18.397428,-66.04306 18.396216,-66.043128 18.395911,-66.043308 18.395589,-66.043599 18.395345,-66.043881 18.395211,-66.044269 18.395197,-66.045236 18.395257,-66.045736 18.395262,-66.046212 18.395252,-66.046868 18.395285,-66.047985 18.395432,-66.049491 18.395533,-66.051298 18.39569,-66.051827 18.395828,-66.052196 18.396008,-66.052827 18.396428,-66.053342 18.396736,-66.05358 18.396842,-66.054085 18.39693,-66.054445 18.396847,-66.054765 18.396695,-66.054999 18.396511,-66.05512 18.396211,-66.055173 18.395741,-66.055314 18.395257,-66.055538 18.395008,-66.056645 18.394257,-66.057529 18.39375,-66.058515 18.393201,-66.06074 18.391998,-66.061157 18.391745,-66.061814 18.391253,-66.062586 18.390585,-66.062739 18.39042,-66.062952 18.390351,-66.063117 18.390188,-66.063295 18.389937,-66.063367 18.389833)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'T9','CAPETILLO', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;