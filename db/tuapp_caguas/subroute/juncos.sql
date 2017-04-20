delete from ref.subroute where route = 'JU' and direction = 'JUNCOS';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-66.032303 18.235076,-66.031874 18.235088,-66.031751 18.235295,-66.030787 18.235069,-66.030612 18.235083,-66.030465 18.235204,-66.029891 18.236577,-66.029838 18.236683,-66.029651 18.23681,-66.029457 18.236817,-66.029231 18.236781,-66.02848 18.236654,-66.028135 18.236628,-66.027338 18.236587,-66.026763 18.236598,-66.025652 18.23676,-66.025011 18.236838,-66.024671 18.236939,-66.024308 18.237071,-66.023446 18.237411,-66.022363 18.237861,-66.019594 18.239036,-66.018053 18.23973,-66.01727 18.240057,-66.016804 18.240264,-66.016432 18.240298,-66.016257 18.240257,-66.014108 18.239501,-66.013453 18.239379,-66.012874 18.239307,-66.012657 18.239302,-66.012466 18.239325,-66.012195 18.239417,-66.011551 18.239752,-66.010881 18.240166,-66.00954 18.240976,-66.00924 18.24114,-66.009066 18.241275,-66.008799 18.241576,-66.008547 18.242262,-66.008397 18.242745,-66.007938 18.244124,-66.007656 18.24488,-66.007435 18.245542,-66.007174 18.24631,-66.007026 18.24664,-66.006816 18.246844,-66.006549 18.246945,-66.006323 18.246955,-66.006049 18.246884,-66.005128 18.246608,-66.003039 18.245923,-66.0028 18.245884,-66.002549 18.245872,-66.001784 18.246113,-66.000022 18.246788,-65.999278 18.247071,-65.998184 18.247447,-65.997315 18.24777,-65.996299 18.24805,-65.994977 18.24839,-65.994462 18.248458,-65.992952 18.248511,-65.99259 18.248513,-65.9919 18.248496,-65.99064 18.248422,-65.989889 18.248418,-65.988905 18.248464,-65.988236 18.248532,-65.987399 18.248662,-65.986812 18.248739,-65.986557 18.248744,-65.985672 18.248669,-65.985096 18.248735,-65.984473 18.248944,-65.983652 18.249352,-65.982871 18.249718,-65.981597 18.250328,-65.979865 18.251174,-65.978984 18.251599,-65.978502 18.251845,-65.97816 18.252039,-65.978032 18.252213,-65.977786 18.253143,-65.977559 18.253345,-65.977364 18.253415,-65.975084 18.254073,-65.973782 18.254439,-65.972774 18.254663,-65.972136 18.25475,-65.971954 18.254767,-65.97179 18.254775,-65.971564 18.25473,-65.971398 18.254694,-65.970108 18.254413,-65.970027 18.254378,-65.967911 18.25321,-65.967408 18.252936,-65.966624 18.252563,-65.964936 18.251796,-65.963001 18.250892,-65.962309 18.250623,-65.961868 18.250459,-65.961583 18.250307,-65.961307 18.250165,-65.961048 18.25012,-65.960565 18.250063,-65.960136 18.250016,-65.959782 18.249983,-65.957836 18.249595,-65.956455 18.249309,-65.954667 18.248943,-65.953922 18.248793,-65.95015 18.248029,-65.948495 18.247688,-65.948204 18.247631,-65.946545 18.247292,-65.945902 18.24713,-65.945538 18.247018,-65.945171 18.246876,-65.94402 18.246416,-65.942644 18.245828,-65.941472 18.245303,-65.94013 18.244707,-65.939215 18.244339,-65.939089 18.244287,-65.938349 18.243999,-65.937386 18.243626,-65.936358 18.243207,-65.93619 18.243103,-65.93275 18.240872,-65.932656 18.2408,-65.932192 18.240322,-65.932016 18.240152,-65.931859 18.24004,-65.931731 18.239981,-65.931521 18.239916,-65.931392 18.239893,-65.93091 18.239744,-65.930556 18.239617,-65.930315 18.239495,-65.930058 18.239351,-65.929715 18.239171,-65.929468 18.239057,-65.928789 18.238708,-65.928228 18.238402,-65.927952 18.238248,-65.927658 18.238102,-65.927474 18.238031,-65.927278 18.238,-65.927038 18.238004,-65.92687 18.238031,-65.92656 18.238052,-65.926312 18.238028,-65.926136 18.237979,-65.926012 18.237933,-65.925824 18.237828,-65.925453 18.237615,-65.925181 18.237468,-65.924987 18.23735,-65.924788 18.237202,-65.924648 18.237012,-65.924536 18.236808,-65.924438 18.236574,-65.924362 18.236456,-65.924282 18.236371,-65.924153 18.236287,-65.923291 18.235831,-65.922636 18.235487,-65.922295 18.235311,-65.922154 18.235264,-65.921989 18.235237,-65.921757 18.235229,-65.921559 18.23522,-65.921424 18.2352,-65.921298 18.235137,-65.921212 18.235077,-65.921183 18.235014,-65.921179 18.234917,-65.921214 18.234861,-65.921296 18.234787,-65.921572 18.234461,-65.921601 18.234384,-65.921829 18.234176,-65.921851 18.234141,-65.921927 18.234051,-65.921991 18.233923,-65.922003 18.233869,-65.921973 18.233727,-65.921894 18.233552,-65.921801 18.233329,-65.921742 18.233143,-65.921584 18.232756,-65.92119 18.231822,-65.920939 18.231213,-65.920809 18.230925,-65.920811 18.230869,-65.920853 18.230838,-65.920927 18.230822,-65.921856 18.230842,-65.922016 18.23084,-65.922088 18.230812,-65.922117 18.230742,-65.922121 18.230091,-65.922084 18.230003,-65.921993 18.229973,-65.921924 18.229952,-65.921916 18.229844,-65.922118 18.228269,-65.92209 18.228226,-65.922037 18.228212,-65.921662 18.228165,-65.921608 18.22812,-65.921617 18.228013,-65.921794 18.226646,-65.921824 18.226398,-65.921709 18.226365,-65.921607 18.226368,-65.92146 18.22644,-65.921405 18.226696,-65.921303 18.227081,-65.921164 18.227567,-65.921108 18.227863,-65.92088 18.227928)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'JU','JUNCOS', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute where route = 'JU' and direction = 'TERM_CAGUAS';with line_tmp as (select ST_Transform(ST_GeomFromEWKT('SRID=4326;LINESTRING(-65.920894 18.227989,-65.921068 18.228101,-65.920846 18.229806,-65.92072 18.230771,-65.920799 18.230996,-65.921194 18.231914,-65.921534 18.232701,-65.921686 18.23315,-65.921775 18.233556,-65.92183 18.233907,-65.921783 18.234109,-65.921429 18.234472,-65.921216 18.234741,-65.921122 18.234868,-65.921089 18.234928,-65.9211 18.23502,-65.921184 18.235094,-65.921343 18.235194,-65.921449 18.235242,-65.921592 18.235251,-65.921986 18.235268,-65.922151 18.235286,-65.922272 18.235328,-65.923127 18.235781,-65.924078 18.236279,-65.924256 18.236385,-65.924333 18.236464,-65.924419 18.236592,-65.924521 18.236856,-65.924626 18.237036,-65.924763 18.237226,-65.925082 18.237453,-65.925194 18.237522,-65.92552 18.237698,-65.925991 18.237952,-65.926139 18.23801,-65.926324 18.238054,-65.926513 18.238075,-65.926704 18.23807,-65.926884 18.238054,-65.927034 18.238027,-65.927242 18.238027,-65.927485 18.238071,-65.927646 18.238122,-65.927996 18.238304,-65.928973 18.238834,-65.930545 18.23963,-65.930862 18.239769,-65.931387 18.239909,-65.931529 18.23994,-65.931761 18.240018,-65.931857 18.240072,-65.932016 18.240188,-65.932323 18.240497,-65.932638 18.240817,-65.933389 18.241312,-65.933915 18.241652,-65.934293 18.241905,-65.936177 18.243121,-65.936343 18.243222,-65.936541 18.243307,-65.938732 18.244166,-65.939177 18.244348,-65.941765 18.245452,-65.942972 18.24599,-65.945174 18.246903,-65.945548 18.247049,-65.946189 18.247234,-65.946538 18.247313,-65.950959 18.248214,-65.954146 18.248859,-65.957108 18.249469,-65.960499 18.250153,-65.960801 18.250241,-65.961594 18.250438,-65.962319 18.25066,-65.962807 18.250841,-65.963074 18.250957,-65.964748 18.251767,-65.965059 18.25191,-65.966298 18.252448,-65.966959 18.252781,-65.967467 18.253026,-65.968709 18.253726,-65.969093 18.253938,-65.969427 18.254089,-65.970003 18.254399,-65.970107 18.254439,-65.971399 18.254729,-65.971798 18.2548,-65.972141 18.254773,-65.972773 18.254687,-65.973794 18.25447,-65.975095 18.254119,-65.976209 18.253793,-65.977379 18.253492,-65.977618 18.253398,-65.977838 18.253216,-65.977907 18.253056,-65.978093 18.252249,-65.978206 18.25208,-65.978405 18.251949,-65.980077 18.251118,-65.981451 18.25045,-65.98287 18.249778,-65.983681 18.249386,-65.984475 18.248987,-65.985108 18.248771,-65.98566 18.248708,-65.986478 18.248776,-65.986817 18.248773,-65.987411 18.248695,-65.988224 18.248573,-65.988913 18.248508,-65.989893 18.248452,-65.99064 18.248452,-65.991898 18.248526,-65.992626 18.248554,-65.992974 18.248545,-65.994461 18.248497,-65.995003 18.248426,-65.996334 18.248076,-65.997329 18.247801,-65.998191 18.247504,-65.999298 18.247104,-66.000059 18.246839,-66.001818 18.24621,-66.00229 18.246044,-66.002475 18.246004,-66.002653 18.245999,-66.002785 18.246014,-66.003035 18.246075,-66.005085 18.246732,-66.00601 18.247009,-66.006308 18.247086,-66.006578 18.247074,-66.00687 18.24695,-66.007116 18.246726,-66.007294 18.246311,-66.007548 18.245569,-66.007786 18.244921,-66.008131 18.243976,-66.008243 18.243623,-66.008774 18.241906,-66.00892 18.24157,-66.009127 18.241322,-66.009547 18.241036,-66.01092 18.240232,-66.011591 18.239824,-66.012085 18.239523,-66.01247 18.239394,-66.012684 18.239366,-66.01291 18.239374,-66.013447 18.239421,-66.014083 18.23956,-66.016285 18.240356,-66.01658 18.240379,-66.016898 18.240297,-66.017276 18.240134,-66.018067 18.239787,-66.018773 18.239517,-66.019545 18.239185,-66.019807 18.239076,-66.022462 18.238003,-66.023521 18.237552,-66.024414 18.237186,-66.024744 18.237072,-66.025046 18.236987,-66.025673 18.236889,-66.026788 18.236763,-66.027364 18.236738,-66.028113 18.236743,-66.02853 18.236773,-66.02911 18.236849,-66.029706 18.236974,-66.029939 18.236877,-66.03024 18.236193,-66.030653 18.235228,-66.030843 18.235171,-66.031714 18.235402,-66.031888 18.235459,-66.032628 18.235717,-66.032824 18.235764,-66.032905 18.23574,-66.032932 18.235663,-66.032947 18.235583,-66.033141 18.23511,-66.033128 18.235051,-66.033064 18.235016,-66.032478 18.234842,-66.032318 18.23504)'), 32161) geom) insert into ref.subroute(route, direction, geom) select 'JU','TERM_CAGUAS', ST_AddMeasure(line_tmp.geom, 0, ST_Length(line_tmp.geom)) from line_tmp;
delete from ref.subroute_stop where route = 'JU' and direction = 'TERM_CAGUAS'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8015, 0, 'JU', 'TERM_CAGUAS'),(8000, 1, 'JU', 'TERM_CAGUAS');
delete from ref.subroute_stop where route = 'JU' and direction = 'JUNCOS'; insert into ref.subroute_stop (stop, stop_order, route, direction) values (8000, 0, 'JU', 'JUNCOS'),(8015, 1, 'JU', 'JUNCOS');