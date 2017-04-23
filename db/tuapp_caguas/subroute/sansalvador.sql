delete from ref.subroute where route = 'SS' and direction = 'GEORGETTI';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.021236 18.147874,-66.021275 18.147835,-66.021729 18.148329,-66.021861 18.148384,-66.02261 18.148226,-66.023238 18.148011,-66.023622 18.147841,-66.023837 18.147661,-66.023913 18.147524,-66.023869 18.147395,-66.023194 18.147218,-66.023124 18.147124,-66.023149 18.147033,-66.023493 18.14665,-66.023832 18.146124,-66.023943 18.145884,-66.02409 18.145354,-66.02412 18.145067,-66.024077 18.144751,-66.02385 18.144312,-66.023843 18.144162,-66.024008 18.144023,-66.024517 18.143949,-66.024725 18.143835,-66.025178 18.143182,-66.025728 18.14261,-66.025939 18.142294,-66.026052 18.142204,-66.026168 18.142191,-66.026612 18.142276,-66.026855 18.142194,-66.0272 18.142161,-66.027807 18.142023,-66.028423 18.142185,-66.028643 18.142195,-66.028966 18.142122,-66.029143 18.142048,-66.029964 18.141486,-66.030668 18.14062,-66.030869 18.140553,-66.031302 18.14062,-66.031451 18.1406,-66.031749 18.140446,-66.032149 18.140136,-66.032484 18.13997,-66.032627 18.139969,-66.032766 18.14003,-66.033064 18.140258,-66.033216 18.140322,-66.034037 18.140141,-66.035361 18.140352,-66.036284 18.140079,-66.038148 18.139126,-66.038685 18.13903,-66.039378 18.138984,-66.040713 18.138621,-66.040866 18.138646,-66.041194 18.138888,-66.041453 18.138844,-66.041569 18.138893,-66.041904 18.139293,-66.042093 18.139715,-66.042142 18.139992,-66.042095 18.140235,-66.041647 18.140376,-66.041481 18.140553,-66.041486 18.140718,-66.041631 18.141121,-66.041603 18.141296,-66.041543 18.14136,-66.041424 18.14136,-66.040896 18.141019,-66.040646 18.141124,-66.040404 18.141163,-66.040292 18.141322,-66.040369 18.141572,-66.040706 18.142182,-66.040698 18.142532,-66.040817 18.142711,-66.04077 18.142988,-66.041016 18.143189,-66.041091 18.143332,-66.040864 18.143889,-66.0405 18.144052,-66.040511 18.14426,-66.040661 18.144538,-66.040671 18.144667,-66.040372 18.145154,-66.040486 18.145477,-66.04047 18.145804,-66.040654 18.146336,-66.040763 18.146977,-66.040738 18.147669,-66.04035 18.148725,-66.040442 18.149509,-66.040266 18.149636,-66.039975 18.149626,-66.039751 18.149675,-66.038876 18.150077,-66.038763 18.150155,-66.038537 18.150489,-66.0382 18.150707,-66.038122 18.150887,-66.038155 18.151048,-66.038229 18.151109,-66.038367 18.151125,-66.039413 18.150988,-66.039582 18.151017,-66.040308 18.151612,-66.040994 18.151841,-66.041311 18.152288,-66.041481 18.152595,-66.041541 18.152818,-66.041568 18.153412,-66.041435 18.153663,-66.039715 18.155165,-66.039569 18.15534,-66.039573 18.155491,-66.039907 18.156784,-66.040225 18.157273,-66.040282 18.157434,-66.040237 18.158004,-66.040342 18.159103,-66.040299 18.159483,-66.040167 18.159821,-66.0397 18.160504,-66.039586 18.161884,-66.039648 18.162404,-66.039881 18.16298,-66.041098 18.163988,-66.041358 18.164249,-66.041475 18.164456,-66.041704 18.165166,-66.042031 18.165709,-66.042666 18.166555,-66.04342 18.16723,-66.043542 18.167463,-66.043506 18.167658,-66.042702 18.169299,-66.042534 18.169885,-66.042536 18.170235,-66.042668 18.17054,-66.042676 18.17069,-66.042611 18.171041,-66.042339 18.171754,-66.042178 18.172352,-66.041948 18.174112,-66.041741 18.175108,-66.04176 18.175496,-66.041695 18.176182,-66.041773 18.176612,-66.041863 18.176772,-66.042071 18.176961,-66.042253 18.177039,-66.04288 18.177159,-66.043037 18.1773,-66.043466 18.177895,-66.043735 18.178177,-66.045279 18.178999,-66.045894 18.179632,-66.046475 18.180032,-66.046712 18.180394,-66.047051 18.180562,-66.048109 18.181248,-66.048291 18.181493,-66.048562 18.182171,-66.048707 18.182327,-66.048866 18.182408,-66.049103 18.182441,-66.049268 18.182396,-66.049658 18.18222,-66.050696 18.181616,-66.050965 18.181563,-66.051571 18.181563,-66.05228 18.181338,-66.052622 18.181041,-66.052844 18.181043,-66.053307 18.181471,-66.05362 18.182354,-66.053972 18.182771,-66.053954 18.182994,-66.053555 18.183762,-66.053554 18.183994,-66.053696 18.184077,-66.05443 18.183895,-66.054874 18.183945,-66.05567 18.184727,-66.055871 18.185066,-66.055931 18.18527,-66.055997 18.186758,-66.056054 18.187017,-66.056122 18.187072,-66.056749 18.187354,-66.057224 18.187401,-66.05745 18.187385,-66.057987 18.187202,-66.058733 18.187121,-66.059345 18.18682,-66.059492 18.186817,-66.059645 18.186871,-66.059873 18.187045,-66.059866 18.187176,-66.05941 18.187387,-66.05833 18.187432,-66.057878 18.187504,-66.057716 18.187621,-66.057608 18.18779,-66.057439 18.188363,-66.057255 18.190241,-66.057329 18.190562,-66.057893 18.191507,-66.057953 18.192582,-66.057864 18.192952,-66.057677 18.193239,-66.057348 18.193348,-66.056772 18.193667,-66.055176 18.194622,-66.054887 18.194855,-66.054791 18.19506,-66.05466 18.195597,-66.053966 18.199027,-66.053538 18.200363,-66.053417 18.200541,-66.051754 18.201905,-66.050401 18.204097,-66.049085 18.206612,-66.048944 18.206973,-66.048923 18.207951,-66.048814 18.20828,-66.048506 18.208711,-66.047086 18.209595,-66.046874 18.209772,-66.046649 18.210189,-66.04658 18.210449,-66.046523 18.211693,-66.04631 18.212236,-66.046036 18.212739,-66.041889 18.218623,-66.041415 18.219257,-66.041154 18.219476,-66.040837 18.220229,-66.036271 18.22867,-66.035168 18.231239,-66.035101 18.231281,-66.034843 18.231258,-66.034405 18.231347,-66.034337 18.23176,-66.033849 18.233368,-66.033526 18.23432,-66.033329 18.234704,-66.033239 18.234847,-66.032629 18.234653,-66.032385 18.234653,-66.032037 18.234553,-66.031755 18.235329,-66.030906 18.235103,-66.030818 18.235011,-66.03081 18.234887,-66.031279 18.233679,-66.031481 18.233688,-66.034261 18.234697,-66.034379 18.234736,-66.034423 18.234703,-66.035552 18.235122,-66.035859 18.234323,-66.035944 18.234276,-66.036896 18.23167,-66.036353 18.231499,-66.035937 18.23142)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'SS','GEORGETTI', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute where route = 'SS' and direction = 'SAN_SALVADOR';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.035822 18.231404,-66.035302 18.231332,-66.035215 18.231242,-66.036258 18.228775,-66.037461 18.226651,-66.038457 18.224777,-66.039538 18.222927,-66.041184 18.219835,-66.044615 18.214991,-66.046414 18.21253,-66.046625 18.212069,-66.046663 18.210443,-66.04689 18.209915,-66.047125 18.20967,-66.048654 18.208666,-66.048926 18.208295,-66.049056 18.207675,-66.04904 18.207058,-66.049161 18.206609,-66.050498 18.204032,-66.051156 18.202953,-66.051793 18.20205,-66.053491 18.200543,-66.053575 18.200422,-66.05367 18.200216,-66.054037 18.198943,-66.054718 18.195535,-66.054844 18.195044,-66.054925 18.194882,-66.055703 18.194352,-66.057325 18.193413,-66.057679 18.193287,-66.057872 18.193072,-66.05799 18.192625,-66.057946 18.191442,-66.05738 18.19054,-66.057301 18.190243,-66.057487 18.188393,-66.057615 18.187886,-66.057738 18.187671,-66.057914 18.187538,-66.059406 18.187451,-66.059784 18.187306,-66.060007 18.187128,-66.060007 18.187061,-66.059675 18.186822,-66.059527 18.186771,-66.059314 18.186766,-66.059127 18.186833,-66.058759 18.187057,-66.058009 18.18714,-66.057392 18.187344,-66.057223 18.187356,-66.056763 18.187311,-66.05615 18.187034,-66.056065 18.186928,-66.056044 18.186754,-66.055977 18.185262,-66.055915 18.185049,-66.055699 18.184687,-66.054895 18.183904,-66.054535 18.183842,-66.053786 18.18402,-66.053641 18.184017,-66.053597 18.183974,-66.0536 18.183776,-66.053998 18.18301,-66.054018 18.182757,-66.053661 18.182329,-66.053391 18.181497,-66.05294 18.181083,-66.052866 18.180964,-66.052777 18.180939,-66.052604 18.180999,-66.052261 18.181296,-66.05156 18.181519,-66.050841 18.181525,-66.050651 18.181569,-66.049635 18.18218,-66.049255 18.182352,-66.049074 18.182383,-66.048892 18.18234,-66.048773 18.182288,-66.04861 18.182114,-66.048331 18.181419,-66.048145 18.181191,-66.047074 18.180523,-66.04677 18.180381,-66.046508 18.179999,-66.045926 18.179599,-66.045308 18.178964,-66.045037 18.178789,-66.044063 18.178326,-66.043729 18.178076,-66.043596 18.177915,-66.043512 18.177878,-66.043073 18.17727,-66.042903 18.177119,-66.042192 18.176969,-66.041966 18.176817,-66.041823 18.176609,-66.041736 18.176241,-66.041828 18.174893,-66.041964 18.174288,-66.042274 18.172137,-66.042652 18.171052,-66.042719 18.170694,-66.042709 18.170526,-66.042573 18.170158,-66.042591 18.169887,-66.042742 18.169313,-66.043545 18.167675,-66.043584 18.167455,-66.043452 18.167203,-66.042698 18.166529,-66.042069 18.165685,-66.041703 18.165054,-66.041517 18.164439,-66.041395 18.164223,-66.041128 18.163956,-66.03992 18.162957,-66.039692 18.162393,-66.039631 18.161884,-66.039745 18.160515,-66.040207 18.15984,-66.040343 18.159494,-66.040387 18.159127,-66.040282 18.158002,-66.040327 18.157429,-66.039947 18.156688,-66.03964 18.15536,-66.039727 18.155226,-66.041477 18.1537,-66.041624 18.153423,-66.041597 18.152809,-66.041534 18.152574,-66.041361 18.152262,-66.041033 18.151802,-66.040933 18.151736,-66.040337 18.151565,-66.039611 18.15097,-66.039405 18.150934,-66.038368 18.151071,-66.038244 18.151045,-66.038179 18.150929,-66.03824 18.150746,-66.038578 18.150528,-66.03886 18.150151,-66.039804 18.149707,-66.040372 18.149638,-66.040527 18.149467,-66.04043 18.148649,-66.040786 18.147679,-66.040812 18.146975,-66.040702 18.146324,-66.04052 18.145799,-66.040534 18.14547,-66.040422 18.145161,-66.04072 18.144675,-66.040709 18.144522,-66.040558 18.144248,-66.040548 18.144074,-66.0409 18.143922,-66.041098 18.143516,-66.041141 18.143328,-66.041052 18.143156,-66.040819 18.142971,-66.040867 18.142706,-66.040748 18.142518,-66.040754 18.142169,-66.040413 18.141551,-66.040345 18.141325,-66.040429 18.141204,-66.040664 18.141169,-66.04089 18.141067,-66.041422 18.141415,-66.041566 18.141419,-66.041634 18.141361,-66.041666 18.141103,-66.041532 18.140708,-66.041527 18.140566,-66.041671 18.140415,-66.042129 18.140268,-66.04219 18.139993,-66.042137 18.139699,-66.041947 18.139274,-66.041587 18.138837,-66.041451 18.138793,-66.041214 18.138831,-66.040991 18.138642,-66.04071 18.138578,-66.039367 18.138941,-66.038134 18.139055,-66.036265 18.140039,-66.035357 18.140308,-66.034037 18.140098,-66.033219 18.140278,-66.03279 18.139992,-66.03264 18.139926,-66.032471 18.139928,-66.032124 18.140099,-66.031684 18.14043,-66.031438 18.140559,-66.031304 18.140577,-66.030864 18.14051,-66.03069 18.140556,-66.030549 18.140663,-66.029932 18.141456,-66.02912 18.142012,-66.028953 18.142082,-66.028609 18.142151,-66.028428 18.142143,-66.027811 18.141981,-66.027192 18.142119,-66.026842 18.142154,-66.026605 18.142234,-66.026172 18.142148,-66.026035 18.142164,-66.025945 18.142216,-66.025693 18.142583,-66.025144 18.143156,-66.024695 18.143804,-66.024367 18.143943,-66.023991 18.143983,-66.023802 18.144146,-66.023791 18.14428,-66.023988 18.144623,-66.024061 18.144919,-66.024067 18.14521,-66.024013 18.145483,-66.023799 18.146097,-66.023458 18.146626,-66.023138 18.146981,-66.023076 18.147108,-66.023128 18.147235,-66.023848 18.147447,-66.023861 18.147522,-66.023801 18.147647,-66.023601 18.147811,-66.023225 18.147977,-66.0225 18.148218,-66.021859 18.148347,-66.021756 18.148303,-66.021277 18.14779,-66.021211 18.147789,-66.02119 18.147844)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'SS','SAN_SALVADOR', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'SS' and direction = 'GEORGETTI'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8028, 0, 'SS', 'GEORGETTI'),(8008, 1, 'SS', 'GEORGETTI');
delete from ref.subroute_stop where route = 'SS' and direction = 'SAN_SALVADOR'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8008, 0, 'SS', 'SAN_SALVADOR'),(8028, 1, 'SS', 'SAN_SALVADOR');