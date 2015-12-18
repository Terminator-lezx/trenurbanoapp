delete from ref.subroute_new where route = 'D45' and direction = 'LOIZA';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.060284 18.435388,-66.060444 18.435469,-66.060492 18.435585,-66.0604 18.435951,-66.060192 18.436013,-66.059465 18.43601,-66.059355 18.43604,-66.059289 18.436203,-66.059433 18.437748,-66.059471 18.437911,-66.059637 18.438211,-66.059804 18.438448,-66.059752 18.438617,-66.058741 18.439385,-66.057768 18.440129,-66.056986 18.440721,-66.056028 18.441459,-66.055819 18.441633,-66.055594 18.441697,-66.054471 18.441639,-66.054048 18.441589,-66.053929 18.441635,-66.053629 18.442207,-66.053561 18.442348,-66.053253 18.443523,-66.052853 18.44507,-66.052445 18.446777,-66.052426 18.447031,-66.052366 18.447117,-66.052086 18.447114,-66.050865 18.44702,-66.050057 18.446942,-66.048539 18.446776,-66.047781 18.446696,-66.046538 18.446674,-66.045481 18.446626,-66.044005 18.446535,-66.04273 18.446433,-66.041636 18.446385,-66.041085 18.446392,-66.03703 18.446122,-66.03638 18.445978,-66.035842 18.445833,-66.035238 18.445629,-66.034989 18.445551,-66.034811 18.445575,-66.034729 18.445648,-66.034669 18.445894,-66.034582 18.446031,-66.034457 18.446163,-66.034189 18.446289,-66.034076 18.446409,-66.033949 18.446423,-66.033871 18.446387,-66.033469 18.446061,-66.032875 18.445655,-66.032222 18.445227,-66.032084 18.445151,-66.030307 18.444553,-66.029022 18.44417,-66.02736 18.443711,-66.022931 18.442566,-66.021552 18.442293,-66.021148 18.442259,-66.020463 18.442274,-66.019542 18.442311,-66.018148 18.442317,-66.017614 18.442287,-66.015296 18.441885,-66.014719 18.44178,-66.014459 18.441625,-66.014346 18.441389,-66.014228 18.441292,-66.013993 18.441257,-66.013077 18.44174,-66.012671 18.441914,-66.012561 18.441942,-66.011961 18.442018,-66.01075 18.442168,-66.010252 18.442258,-66.009909 18.442356,-66.009343 18.442571,-66.00774 18.443222,-66.005683 18.444061,-66.003682 18.444883,-66.002767 18.44524,-66.002166 18.445487,-66.000378 18.446199,-65.999357 18.446618,-65.99702 18.44756,-65.996538 18.447789,-65.99615 18.448006,-65.995726 18.448297,-65.995431 18.448558,-65.994994 18.449007,-65.994659 18.449469,-65.994448 18.449845,-65.9942 18.450411,-65.994055 18.450974,-65.99397 18.451748,-65.993931 18.453586,-65.993899 18.455506,-65.993858 18.4559,-65.993776 18.456278,-65.993622 18.456705,-65.993356 18.457203,-65.993083 18.457615,-65.992604 18.458233,-65.992272 18.458617,-65.99205 18.458781,-65.991704 18.458962,-65.991496 18.459011,-65.991284 18.459022,-65.989207 18.458557,-65.988826 18.458536,-65.988524 18.458598,-65.988215 18.458693,-65.988084 18.45873,-65.987947 18.458755,-65.987739 18.458746,-65.98762 18.458722,-65.987524 18.45868,-65.987452 18.458636,-65.987324 18.458523,-65.986833 18.458062,-65.986429 18.45776,-65.985409 18.457008,-65.985055 18.456804,-65.984089 18.45629,-65.983938 18.456251,-65.983752 18.45623,-65.983373 18.456227,-65.982796 18.456271,-65.982387 18.456327,-65.982005 18.456421,-65.981752 18.456477,-65.98136 18.456576,-65.981106 18.456694,-65.980889 18.456855,-65.980516 18.457178,-65.98019 18.457523,-65.979954 18.45772,-65.979758 18.457786,-65.979566 18.457791,-65.97939 18.457747,-65.978634 18.457295,-65.978473 18.457216,-65.978275 18.457149,-65.977971 18.457112,-65.977259 18.457127,-65.976757 18.457134,-65.976596 18.457109,-65.976301 18.457031,-65.975925 18.456811,-65.97451 18.45596,-65.973875 18.455588,-65.973576 18.455464,-65.972153 18.454889,-65.971301 18.454508,-65.969784 18.453894,-65.968966 18.453555,-65.968591 18.453354,-65.967914 18.452975,-65.96772 18.4529,-65.967526 18.452855,-65.96737 18.45284,-65.966896 18.452857,-65.966463 18.452874,-65.965886 18.452905,-65.965596 18.452858,-65.965348 18.45277,-65.965043 18.452678,-65.964902 18.45266,-65.964731 18.452645,-65.964546 18.452609,-65.964162 18.452514,-65.963375 18.452305,-65.962195 18.451958,-65.961746 18.451818,-65.961085 18.4516,-65.960454 18.451384,-65.960022 18.451269,-65.95974 18.451211,-65.958247 18.450779,-65.957849 18.450699,-65.957302 18.450609,-65.95703 18.450538,-65.956629 18.450442,-65.956038 18.450266,-65.955786 18.450205,-65.955485 18.450164,-65.95519 18.450138,-65.954821 18.450086,-65.954452 18.450006,-65.954005 18.449945,-65.953435 18.449887,-65.953103 18.449827,-65.952293 18.449658,-65.951886 18.449605,-65.951615 18.449569,-65.951325 18.449529,-65.950669 18.449449,-65.950261 18.449396,-65.949657 18.449288,-65.949211 18.44922,-65.948732 18.449101,-65.948189 18.448953,-65.947219 18.448709,-65.946806 18.448554,-65.946366 18.448379,-65.945933 18.448192,-65.94518 18.447848,-65.944441 18.447521,-65.943945 18.44728,-65.943762 18.447224,-65.942849 18.44698,-65.942579 18.446925,-65.942257 18.446803,-65.941417 18.4465,-65.941133 18.446432,-65.940792 18.446375,-65.940279 18.446343,-65.939776 18.44636,-65.939287 18.446371,-65.938969 18.446357,-65.938723 18.446308,-65.938496 18.446237,-65.937959 18.44606,-65.937432 18.445887,-65.937198 18.445849,-65.936951 18.445814,-65.936384 18.445736,-65.935992 18.445662,-65.935384 18.445565,-65.934746 18.445473,-65.934055 18.445411,-65.933771 18.445384,-65.933499 18.445339,-65.933204 18.445271,-65.933005 18.445232,-65.93287 18.445253,-65.93274 18.445316,-65.931853 18.445894,-65.931645 18.445981,-65.931465 18.446015,-65.931236 18.446023,-65.931034 18.445985,-65.929563 18.445512,-65.928885 18.445353,-65.92822 18.445167,-65.927478 18.444855,-65.927068 18.44468,-65.926884 18.444623,-65.926633 18.444573,-65.925821 18.444379,-65.925249 18.444283,-65.924358 18.444131,-65.924145 18.444123,-65.924008 18.444139,-65.923783 18.444213,-65.92357 18.444289,-65.923389 18.444333,-65.92274 18.444504,-65.922484 18.444558,-65.922311 18.444575,-65.921228 18.444512,-65.920808 18.444464,-65.920507 18.444397,-65.919729 18.444186,-65.919445 18.444141,-65.91926 18.44414,-65.918805 18.444176,-65.917925 18.444168,-65.917693 18.444139,-65.917472 18.444156,-65.916764 18.44428,-65.916554 18.444285,-65.916276 18.444317,-65.916082 18.444369,-65.91587 18.444457,-65.91555 18.444567,-65.915151 18.444668,-65.914631 18.444761,-65.914208 18.444911,-65.912596 18.445568,-65.911636 18.445991,-65.911327 18.446154,-65.911152 18.446223,-65.910942 18.446292,-65.910615 18.446333,-65.910437 18.446334,-65.909971 18.446336,-65.909538 18.446297,-65.909122 18.446275,-65.908875 18.446281,-65.908634 18.446322,-65.907834 18.446528,-65.907508 18.446653,-65.907129 18.446834,-65.906533 18.447139,-65.905999 18.447535,-65.905735 18.447758,-65.905545 18.447996,-65.905325 18.448342,-65.904938 18.449035,-65.904719 18.449574,-65.904398 18.450503,-65.904295 18.450657,-65.904192 18.45073,-65.904038 18.450783,-65.90385 18.450804,-65.903544 18.450742,-65.903311 18.450682,-65.902852 18.450591,-65.902661 18.450531,-65.902548 18.450462,-65.902402 18.450293,-65.902214 18.449989,-65.902135 18.449881,-65.902028 18.449804,-65.901701 18.449636,-65.901463 18.449554,-65.901136 18.44948,-65.900832 18.449389,-65.900433 18.449232,-65.899888 18.449119,-65.899767 18.44907,-65.899628 18.448973,-65.899499 18.448887,-65.899363 18.44882,-65.899224 18.448778,-65.899022 18.448746,-65.898873 18.448738,-65.898728 18.448744,-65.898598 18.448757,-65.898007 18.448818,-65.897829 18.4488,-65.897654 18.448734,-65.897504 18.448649,-65.896631 18.447911,-65.895217 18.446679,-65.893884 18.445565,-65.892546 18.44444,-65.891993 18.443963,-65.891016 18.443087,-65.890506 18.442578,-65.890076 18.442099,-65.889761 18.441799,-65.889401 18.441464,-65.888951 18.441026,-65.888443 18.440516,-65.887529 18.439613,-65.886698 18.438792,-65.885953 18.438064,-65.885615 18.437712,-65.885472 18.43752,-65.885249 18.437104,-65.884874 18.436217,-65.884554 18.435429,-65.883826 18.433677,-65.882915 18.431482,-65.882387 18.430226,-65.882264 18.429953,-65.882156 18.429801,-65.882026 18.429662,-65.881501 18.429152,-65.880686 18.428381,-65.880468 18.428155,-65.880323 18.427959,-65.88007 18.42769,-65.879932 18.427538,-65.879884 18.427425,-65.879807 18.427326)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'D45','LOIZA', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_new where route = 'D45' and direction = 'SAGRADO_CORAZON';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-65.879793 18.427309,-65.879736 18.427258,-65.879665 18.427196,-65.87962 18.427183,-65.879583 18.427187,-65.879558 18.427205,-65.879525 18.427236,-65.879519 18.427268,-65.879538 18.427316,-65.879574 18.427359,-65.880647 18.428392,-65.881868 18.429591,-65.882147 18.429857,-65.882288 18.430088,-65.883258 18.432431,-65.884693 18.435856,-65.885154 18.436975,-65.88532 18.437345,-65.885457 18.437559,-65.885618 18.437779,-65.88597 18.438131,-65.886737 18.438893,-65.887663 18.439807,-65.888154 18.440279,-65.888921 18.441038,-65.889712 18.441811,-65.890031 18.442109,-65.890181 18.442264,-65.890481 18.442596,-65.890899 18.443019,-65.891249 18.443353,-65.891646 18.443718,-65.892204 18.444208,-65.892682 18.444607,-65.893215 18.44506,-65.893902 18.445629,-65.894255 18.445911,-65.894749 18.446321,-65.895289 18.446785,-65.896098 18.447503,-65.896555 18.44789,-65.897173 18.448427,-65.897515 18.448694,-65.89766 18.448777,-65.897817 18.448834,-65.89798 18.448849,-65.898206 18.448838,-65.898676 18.448781,-65.898861 18.448769,-65.899015 18.448776,-65.899158 18.448802,-65.89935 18.448851,-65.899516 18.448939,-65.899724 18.449081,-65.899848 18.449145,-65.899983 18.449179,-65.900443 18.44928,-65.900731 18.44939,-65.901129 18.449519,-65.901493 18.449612,-65.901773 18.449714,-65.902056 18.449871,-65.902159 18.449979,-65.902315 18.450221,-65.902468 18.450434,-65.902599 18.450543,-65.902749 18.450608,-65.903017 18.450661,-65.903336 18.450723,-65.903621 18.450803,-65.903833 18.450838,-65.903924 18.450837,-65.90411 18.450803,-65.904224 18.450748,-65.904331 18.450661,-65.904402 18.450555,-65.904495 18.450308,-65.904767 18.449537,-65.904943 18.449093,-65.904987 18.449014,-65.905338 18.448385,-65.905583 18.448004,-65.90574 18.447817,-65.905886 18.44768,-65.906166 18.447445,-65.906329 18.44732,-65.906543 18.447171,-65.907024 18.446918,-65.907384 18.446743,-65.907678 18.446611,-65.907903 18.446536,-65.908723 18.446337,-65.908862 18.446311,-65.909085 18.446309,-65.909192 18.446313,-65.909629 18.446341,-65.909943 18.446371,-65.910064 18.446376,-65.910473 18.446372,-65.910871 18.446339,-65.910984 18.446315,-65.91125 18.446222,-65.91138 18.446175,-65.911663 18.44602,-65.911785 18.445972,-65.912762 18.445538,-65.913578 18.445205,-65.914274 18.444926,-65.914698 18.444786,-65.915107 18.444723,-65.915512 18.444614,-65.915702 18.444554,-65.915904 18.444471,-65.916089 18.444405,-65.916271 18.444348,-65.916471 18.44432,-65.916868 18.444283,-65.917066 18.444254,-65.917428 18.444185,-65.917612 18.444173,-65.917784 18.444178,-65.91806 18.444204,-65.918855 18.444208,-65.919179 18.444179,-65.919378 18.444164,-65.919603 18.444199,-65.920086 18.444319,-65.920759 18.444496,-65.921016 18.444534,-65.921416 18.44455,-65.922026 18.444593,-65.922415 18.444602,-65.92259 18.444575,-65.923027 18.444466,-65.923397 18.444377,-65.923681 18.444294,-65.923816 18.444239,-65.92394 18.444193,-65.924107 18.444156,-65.924315 18.44415,-65.924825 18.444239,-65.925973 18.444441,-65.926927 18.444677,-65.927264 18.444799,-65.92779 18.445035,-65.928039 18.445132,-65.928566 18.445302,-65.929198 18.445465,-65.929663 18.445571,-65.93009 18.445711,-65.930786 18.445934,-65.931138 18.446027,-65.931259 18.446045,-65.931564 18.446022,-65.931659 18.446002,-65.931801 18.445947,-65.932009 18.445827,-65.932509 18.445489,-65.932682 18.445379,-65.932836 18.445298,-65.932959 18.445272,-65.933078 18.445267,-65.933358 18.445337,-65.933618 18.445392,-65.93385 18.445425,-65.93413 18.445446,-65.934569 18.44549,-65.934818 18.445515,-65.935606 18.445641,-65.93698 18.445862,-65.937427 18.445931,-65.937844 18.446058,-65.938399 18.44625,-65.93877 18.446352,-65.939026 18.446395,-65.939334 18.44641,-65.940264 18.446382,-65.940495 18.446384,-65.940804 18.446408,-65.941197 18.44648,-65.941601 18.446594,-65.942017 18.446777,-65.942182 18.446843,-65.942538 18.44698,-65.942699 18.447013,-65.942998 18.44705,-65.943541 18.447197,-65.943815 18.447273,-65.944089 18.447387,-65.944618 18.447644,-65.945146 18.447868,-65.94572 18.448123,-65.946217 18.448356,-65.946751 18.448573,-65.947233 18.448748,-65.947363 18.448778,-65.948737 18.449129,-65.949488 18.44931,-65.950052 18.449404,-65.950517 18.449486,-65.950966 18.449524,-65.951396 18.449566,-65.951925 18.449632,-65.952264 18.44968,-65.952488 18.449728,-65.953287 18.449895,-65.953448 18.449926,-65.953966 18.449972,-65.954449 18.450033,-65.954863 18.450117,-65.955242 18.45017,-65.955513 18.450186,-65.95582 18.450239,-65.956468 18.45043,-65.957278 18.450622,-65.957396 18.450644,-65.958162 18.450797,-65.958598 18.450901,-65.959128 18.451065,-65.959762 18.451238,-65.960131 18.451322,-65.960578 18.451444,-65.961046 18.451615,-65.961528 18.451778,-65.962028 18.451925,-65.962663 18.452125,-65.963424 18.452356,-65.964386 18.452614,-65.964715 18.452671,-65.965024 18.452711,-65.965234 18.452764,-65.96566 18.4529,-65.965814 18.452936,-65.966 18.452945,-65.96634 18.45292,-65.967263 18.452876,-65.967464 18.452884,-65.967715 18.452938,-65.967883 18.453002,-65.968039 18.453089,-65.968852 18.45355,-65.969042 18.453632,-65.970993 18.454431,-65.97127 18.454564,-65.971496 18.454655,-65.971898 18.454816,-65.972254 18.454957,-65.973036 18.455275,-65.973804 18.455593,-65.974065 18.455743,-65.976207 18.457019,-65.976485 18.457125,-65.97672 18.457175,-65.976898 18.457188,-65.977392 18.457175,-65.977923 18.457149,-65.97815 18.457171,-65.97838 18.457211,-65.978815 18.457437,-65.979295 18.457749,-65.979476 18.457822,-65.979668 18.457837,-65.979823 18.457818,-65.979958 18.457771,-65.980083 18.457693,-65.980348 18.457437,-65.980745 18.457023,-65.980908 18.456881,-65.981136 18.456714,-65.98135 18.45661,-65.98151 18.456556,-65.981814 18.456491,-65.982122 18.456423,-65.9824 18.456356,-65.983031 18.45628,-65.983441 18.456256,-65.98375 18.456251,-65.984045 18.456303,-65.984144 18.456346,-65.984761 18.456665,-65.985359 18.45701,-65.986441 18.457801,-65.986796 18.458068,-65.987439 18.458663,-65.987545 18.45872,-65.987662 18.458757,-65.987774 18.458777,-65.987887 18.458778,-65.987996 18.458774,-65.988116 18.458748,-65.98865 18.458597,-65.988849 18.458567,-65.989026 18.458567,-65.989292 18.458597,-65.989815 18.458722,-65.991265 18.459065,-65.991515 18.459052,-65.991768 18.458973,-65.992088 18.458813,-65.992272 18.458676,-65.992512 18.458409,-65.99285 18.458001,-65.993362 18.457291,-65.99363 18.456807,-65.993793 18.456395,-65.993903 18.455963,-65.993965 18.455442,-65.993998 18.454783,-65.994017 18.454193,-65.994069 18.452357,-65.994086 18.45173,-65.994144 18.451124,-65.994223 18.450702,-65.994503 18.449961,-65.994644 18.449713,-65.994945 18.449291,-65.995265 18.448897,-65.995648 18.44853,-65.996112 18.448186,-65.996602 18.447889,-65.99733 18.447564,-65.998591 18.447068,-66.000567 18.446266,-66.003094 18.445248,-66.006859 18.44372,-66.008407 18.443097,-66.0099 18.442492,-66.010622 18.442317,-66.011772 18.442164,-66.012633 18.44206,-66.012875 18.442002,-66.013335 18.441945,-66.014138 18.441953,-66.014442 18.441919,-66.015413 18.442006,-66.016732 18.442207,-66.017684 18.442389,-66.019539 18.442378,-66.021142 18.442325,-66.021529 18.442347,-66.022909 18.442628,-66.024284 18.442958,-66.027382 18.44377,-66.029868 18.444479,-66.032139 18.445245,-66.033026 18.445814,-66.033854 18.446462,-66.03407 18.446534,-66.034154 18.446477,-66.034262 18.446356,-66.034537 18.446204,-66.034701 18.446124,-66.034897 18.446113,-66.035473 18.446185,-66.035937 18.446212,-66.037008 18.44628,-66.03933 18.446435,-66.041541 18.446595,-66.049459 18.447172,-66.050036 18.447288,-66.05068 18.447382,-66.051975 18.447465,-66.052297 18.447497,-66.052704 18.447513,-66.052834 18.44743,-66.05284 18.447122,-66.052945 18.446574,-66.053058 18.44615,-66.05332 18.445177,-66.053984 18.44256,-66.054358 18.441693,-66.054451 18.441664,-66.055605 18.441728,-66.055828 18.441661,-66.05604 18.441484,-66.05978 18.438637,-66.059868 18.438481,-66.059808 18.438371,-66.05964 18.438136,-66.059504 18.437867,-66.059432 18.437499,-66.059328 18.436217,-66.059292 18.435462,-66.059347 18.435366,-66.059461 18.43532,-66.059787 18.435337)'), 32161) geom) insert into ref.subroute_new(route, direction, geom) select 'D45','SAGRADO_CORAZON', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'D45' and direction = 'SAGRADO_CORAZON'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (1277, 0, 'D45', 'SAGRADO_CORAZON'),(1278, 1, 'D45', 'SAGRADO_CORAZON'),(1279, 2, 'D45', 'SAGRADO_CORAZON'),(1280, 3, 'D45', 'SAGRADO_CORAZON'),(1281, 4, 'D45', 'SAGRADO_CORAZON'),(1282, 5, 'D45', 'SAGRADO_CORAZON'),(1283, 6, 'D45', 'SAGRADO_CORAZON'),(1284, 7, 'D45', 'SAGRADO_CORAZON'),(1285, 8, 'D45', 'SAGRADO_CORAZON'),(1286, 9, 'D45', 'SAGRADO_CORAZON'),(1287, 10, 'D45', 'SAGRADO_CORAZON'),(1288, 11, 'D45', 'SAGRADO_CORAZON'),(1289, 12, 'D45', 'SAGRADO_CORAZON'),(1290, 13, 'D45', 'SAGRADO_CORAZON'),(1291, 14, 'D45', 'SAGRADO_CORAZON'),(1292, 15, 'D45', 'SAGRADO_CORAZON'),(1293, 16, 'D45', 'SAGRADO_CORAZON'),(1294, 17, 'D45', 'SAGRADO_CORAZON'),(1295, 18, 'D45', 'SAGRADO_CORAZON'),(1296, 19, 'D45', 'SAGRADO_CORAZON'),(1297, 20, 'D45', 'SAGRADO_CORAZON'),(1298, 21, 'D45', 'SAGRADO_CORAZON'),(1299, 22, 'D45', 'SAGRADO_CORAZON'),(1301, 23, 'D45', 'SAGRADO_CORAZON'),(1302, 24, 'D45', 'SAGRADO_CORAZON'),(1303, 25, 'D45', 'SAGRADO_CORAZON'),(237, 26, 'D45', 'SAGRADO_CORAZON'),(238, 27, 'D45', 'SAGRADO_CORAZON'),(239, 28, 'D45', 'SAGRADO_CORAZON'),(240, 29, 'D45', 'SAGRADO_CORAZON'),(241, 30, 'D45', 'SAGRADO_CORAZON'),(242, 31, 'D45', 'SAGRADO_CORAZON'),(243, 32, 'D45', 'SAGRADO_CORAZON'),(550, 33, 'D45', 'SAGRADO_CORAZON'),(551, 34, 'D45', 'SAGRADO_CORAZON'),(552, 35, 'D45', 'SAGRADO_CORAZON'),(560, 36, 'D45', 'SAGRADO_CORAZON');
delete from ref.subroute_stop where route = 'D45' and direction = 'LOIZA'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (510, 0, 'D45', 'LOIZA'),(516, 1, 'D45', 'LOIZA'),(517, 2, 'D45', 'LOIZA'),(518, 3, 'D45', 'LOIZA'),(309, 4, 'D45', 'LOIZA'),(310, 5, 'D45', 'LOIZA'),(311, 6, 'D45', 'LOIZA'),(312, 7, 'D45', 'LOIZA'),(313, 8, 'D45', 'LOIZA'),(314, 9, 'D45', 'LOIZA'),(315, 10, 'D45', 'LOIZA'),(1250, 11, 'D45', 'LOIZA'),(1251, 12, 'D45', 'LOIZA'),(1252, 13, 'D45', 'LOIZA'),(1253, 14, 'D45', 'LOIZA'),(1254, 15, 'D45', 'LOIZA'),(1255, 16, 'D45', 'LOIZA'),(1256, 17, 'D45', 'LOIZA'),(1257, 18, 'D45', 'LOIZA'),(1258, 19, 'D45', 'LOIZA'),(1259, 20, 'D45', 'LOIZA'),(1260, 21, 'D45', 'LOIZA'),(1261, 22, 'D45', 'LOIZA'),(1262, 23, 'D45', 'LOIZA'),(1263, 24, 'D45', 'LOIZA'),(1264, 25, 'D45', 'LOIZA'),(1265, 26, 'D45', 'LOIZA'),(1266, 27, 'D45', 'LOIZA'),(1267, 28, 'D45', 'LOIZA'),(1268, 29, 'D45', 'LOIZA'),(1269, 30, 'D45', 'LOIZA'),(1270, 31, 'D45', 'LOIZA'),(1271, 32, 'D45', 'LOIZA'),(1272, 33, 'D45', 'LOIZA'),(1273, 34, 'D45', 'LOIZA'),(1274, 35, 'D45', 'LOIZA'),(1275, 36, 'D45', 'LOIZA'),(1276, 37, 'D45', 'LOIZA'),(1277, 38, 'D45', 'LOIZA');
