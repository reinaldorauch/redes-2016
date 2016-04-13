Exercício sobre traceroute
--------------------------

1. Quantos saltos tem a rota de maior número de saltos encontrada? Apresente a
saída do comando traceroute.

  traceroute to sony.jp (23.15.5.208), 30 hops max, 60 byte packets
  1  172.18.146.1 (172.18.146.1)  0.900 ms  1.034 ms  1.096 ms
  2  ge-716.c0009.v4.bkb.uepg.br (177.101.16.130)  0.618 ms  0.608 ms  0.595 ms
  3  177-101-29-1.static.uepg.br (177.101.29.1)  1.335 ms * *
  4  * * *
  5  * * *
  6  233.86.150.200.static.copel.net (200.150.86.233)  1.779 ms  2.351 ms  2.418 ms
  7  tengiga303-src1mcs-src1pgn.copel.net (200.150.92.150)  3.934 ms  3.612 ms  3.480 ms
  8  trunk10-src1mcs-src1cos.copel.net (200.150.92.104)  3.505 ms  48.569 ms  48.408 ms
  9  * * *
  10  * * *
  11  200.150.93.14 (200.150.93.14)  5.189 ms  5.105 ms  5.817 ms
  12  208.178.245.65 (208.178.245.65)  3.890 ms  3.821 ms  4.072 ms
  13  ae4-90G.ar2.NYC1.gblx.net (64.215.102.181)  121.444 ms  120.395 ms  120.561 ms
  14  * * *
  15  4.68.110.74 (4.68.110.74)  138.585 ms  138.864 ms  138.315 ms
  16  ae-3.r25.nycmny01.us.bb.gin.ntt.net (129.250.6.208)  136.627 ms  136.908 ms  138.332 ms
  17  ae-9.r22.asbnva02.us.bb.gin.ntt.net (129.250.2.149)  137.577 ms  136.535 ms  137.528 ms
  18  ae-0.r23.asbnva02.us.bb.gin.ntt.net (129.250.3.85)  136.312 ms  136.984 ms  136.390 ms
  19  ae-1.r20.miamfl02.us.bb.gin.ntt.net (129.250.2.87)  164.790 ms  166.472 ms  164.280 ms
  20  ae-1.r05.miamfl02.us.bb.gin.ntt.net (129.250.2.185)  136.923 ms  135.248 ms  135.014 ms
  21  ae-4.akamai.miamfl02.us.bb.gin.ntt.net (157.238.179.26)  137.534 ms  140.062 ms  135.919 ms
  22  a23-15-5-208.deploy.static.akamaitechnologies.com (23.15.5.208)  140.245 ms  138.019 ms  138.197 ms

2. Apresente 3 rotas para diferentes destinos e indique onde se encontra o
provável enlace entre roteadores de maior comprimento.

  traceroute to mega.co.nz (154.53.224.118), 30 hops max, 60 byte packets
   1  172.18.146.1 (172.18.146.1)  5.446 ms  5.558 ms  5.650 ms
   2  ge-716.c0009.v4.bkb.uepg.br (177.101.16.130)  0.534 ms  0.541 ms  0.529 ms
   3  * * *
   4  * * *
   5  ge-700.c0014.v4.bkb.uepg.br (177.101.16.5)  0.762 ms *  0.738 ms
   6  233.86.150.200.static.copel.net (200.150.86.233)  1.867 ms  2.827 ms  3.003 ms
   7  tengiga303-src1mcs-src1pgn.copel.net (200.150.92.150)  22.469 ms  22.223 ms  22.206 ms
   8  trunk11-src1cen-src1mcs.copel.net (200.150.93.100)  30.340 ms
      trunk10-src1mcs-src1cos.copel.net (200.150.92.104)  4.307 ms  4.052 ms
   9  trunk10-src1bte-src1cos.copel.net (200.150.93.97)  20.233 ms  19.345 ms  19.313 ms
  10  TenGigE0-0-1-3.3834.edge-b-asr.cta511.algartelecom.com.br (201.48.54.58)  17.913 ms  18.072 ms  18.134 ms
  11  ae4-0.ptx-a.cas512.algartelecom.com.br (201.48.50.245)  26.173 ms  26.180 ms  25.989 ms
  12  et-8-0-1-0.ptx-a.spo-piaf.algartelecom.com.br (201.48.48.254)  25.476 ms  36.397 ms  36.321 ms
  13  et-6-0-1-0.ptx-a.fac001.algartelecom.com.br (201.48.44.226)  26.248 ms  26.326 ms  26.368 ms
  14  et-5-1-0-0.core-a.fac001.algartelecom.com.br (201.48.44.17)  22.958 ms  22.920 ms  22.636 ms
  15  xe-2-1-0-0.border-a.ash.algartelecom.com.br (201.48.46.173)  159.676 ms  159.885 ms  159.859 ms
  
  --- Maior enlace, por ter a maior variação de endereços IP --
  16  te0-8-0-14.ccr41.iad02.atlas.cogentco.com (38.122.63.141)  160.258 ms  163.006 ms  148.242 ms
  17  be2657.ccr42.dca01.atlas.cogentco.com (154.54.31.109)  160.801 ms  162.161 ms  160.878 ms
  --- Vai de Washington, DC às  ilhas Maurício --
  
  18  be2806.ccr41.jfk02.atlas.cogentco.com (154.54.40.105)  166.906 ms  155.003 ms
      be2807.ccr42.jfk02.atlas.cogentco.com (154.54.40.109)  154.480 ms
  19  be2490.ccr42.lon13.atlas.cogentco.com (154.54.42.86)  238.100 ms
      be2317.ccr41.lon13.atlas.cogentco.com (154.54.30.186)  233.564 ms  222.073 ms
  20  be12194.ccr41.ams03.atlas.cogentco.com (154.54.56.94)  251.019 ms
      be12488.ccr42.ams03.atlas.cogentco.com (130.117.51.42)  247.136 ms  248.189 ms
  21  be2813.ccr41.fra03.atlas.cogentco.com (130.117.0.122)  241.048 ms
      be2814.ccr42.fra03.atlas.cogentco.com (130.117.0.142)  261.480 ms  258.719 ms
  22  be2589.rcr21.b023657-1.fra03.atlas.cogentco.com (154.54.56.114)  250.157 ms  242.037 ms  252.800 ms
  23  154.53.224.118 (154.53.224.118)  249.911 ms  251.588 ms  251.449 ms
  
  traceroute to interpol.int (72.247.8.144), 30 hops max, 60 byte packets
   1  172.18.146.1 (172.18.146.1)  0.898 ms  1.004 ms  1.036 ms
   2  ge-716.c0009.v4.bkb.uepg.br (177.101.16.130)  0.463 ms  0.449 ms  0.467 ms
   3  * * *
   4  * * *
   5  ge-700.c0014.v4.bkb.uepg.br (177.101.16.5)  0.640 ms  0.627 ms  0.646 ms
   6  233.86.150.200.static.copel.net (200.150.86.233)  2.163 ms  1.993 ms  2.211 ms
   7  tengiga303-src1mcs-src1pgn.copel.net (200.150.92.150)  3.172 ms  2.922 ms  3.399 ms
   8  132.92.150.200.static.copel.net (200.150.92.132)  5.160 ms  5.368 ms trunk10-src1mcs-src1cos.copel.net (200.150.92.104)  6.761 ms
   9  tengiga1020-src1level3-src1cos.copel.net (200.150.93.77)  5.350 ms  5.523 ms  5.605 ms
  
  -- Maior enlace, do ponto de troca em São Paulo, À Phoenix, Arizona
  10  as12989.sp.ix.br (187.16.216.177)  9.408 ms  9.391 ms  8.930 ms
  11  xe-1-0-0.r3.ny.hwng.net (209.197.0.221)  156.647 ms  145.844 ms  145.620 ms
  --
  
  12  209.197.17.13 (209.197.17.13)  159.523 ms  171.283 ms  159.311 ms
  13  cust-akamai.ny.hwng.net (209.197.17.150)  137.176 ms  148.098 ms  136.640 ms
  14  a72-247-8-144.deploy.akamaitechnologies.com (72.247.8.144)  136.934 ms  136.745 ms  136.857 ms
  
  
  traceroute to czub.cz (217.69.98.215), 30 hops max, 60 byte packets
   1  172.18.146.1 (172.18.146.1)  0.953 ms  1.104 ms  1.168 ms
   2  ge-716.c0009.v4.bkb.uepg.br (177.101.16.130)  0.740 ms  0.748 ms  0.721 ms
   3  * * *
   4  * * *
   5  ge-700.c0014.v4.bkb.uepg.br (177.101.16.5)  0.875 ms  0.836 ms  0.823 ms
   6  233.86.150.200.static.copel.net (200.150.86.233)  2.281 ms  2.813 ms  2.866 ms
   7  tengiga303-src1mcs-src1pgn.copel.net (200.150.92.150)  68.316 ms  67.432 ms  66.558 ms
   8  trunk10-src1mcs-src1cos.copel.net (200.150.92.104)  4.265 ms  3.935 ms  4.114 ms
   9  208.178.245.65 (208.178.245.65)  3.052 ms  3.416 ms  3.257 ms
  10  * * *
  
  -- Maior distância, de Nova York para a Alemanha
  11  tiscali-1.ar2.NYC1.gblx.net (64.208.27.234)  136.169 ms  136.011 ms  136.261 ms
  12  xe-2-2-0.prg11.ip4.gtt.net (89.149.187.210)  231.570 ms  242.133 ms  242.090 ms
  --
  
  13  dial-telecom-gw.ip4.tinet.net (213.200.74.94)  231.857 ms  260.906 ms  260.813 ms
  14  gw-dt.muninet.cz (82.119.252.42)  235.840 ms  235.849 ms  242.897 ms
  15  217.69.101.1 (217.69.101.1)  235.490 ms  235.362 ms  236.569 ms
  16  * * *
  17  * * *
  18  * * *
  19  * * *
  20  * * * 
  21  * * *
  22  * * *
  23  * * *
  24  * * *
  25  * * *
  26  * * *
  27  * * *
  28  * * *
  29  * * *
  30  * * *


3. Assumindo uma velocidade de propagação da luz na fibra ótica de 200.000Km/s,
qual é o tempo de propagação para 1 bit atravessar um enlace de 10.000
quilômetros? Esse tempo de propagação é compatível com os tempos de RTT que
você observou nas execuções do comando traceroute? Justifique e dê exemplos.

  O tempo é de 50 ms. Sim, todos os enlaces que foram identificados que atravessam
  algum oceano o tempo de resposta aumentou em torno de 60 ms. Os próprios exemplos
  da questão anterior

4. Execute o traceroute a partir de um serviço online de traceroute (lista de
sites aqui) para uma máquina na sua rede local. Depois, execute um traceroute da
sua máquina local para o servidor do serviço. Compare as rotas. Você detectou
alguma assimetria nas rotas?

  Traceroute do Meu pc para o servidor bwm.carnet.hr:

  Tracing route to bwm.carnet.hr [2001:b68:ff:1::85]
  over a maximum of 30 hops:
  
    1     1 ms     2 ms     1 ms  2001:1284:f005:3594:4802:71ff:fe5a:47e
    2     6 ms     5 ms     5 ms  2001:1284:f005::1
    3     7 ms     6 ms     8 ms  2001:1284:ffff:2::4
    4    11 ms    11 ms    11 ms  2804:680:10:a::f5
    5   156 ms   157 ms   157 ms  ae7-grtsaotm1.ip6.tiws.net [2001:1498:1:822::1]
  
    6   237 ms   226 ms   234 ms  lo0-grabueba2-ip6.red.telefonica-wholesale.net [2001:1498:1::32:212]
    7   227 ms   236 ms   228 ms  2001:1498:1::100:230
    8   236 ms   237 ms   240 ms  2001:1498:1::100:161
    9     *        *        *     Request timed out.
   10   250 ms   251 ms   247 ms  2001:1498:1:300::1a
   11   258 ms   257 ms   258 ms  be2337.rcr21.par05.atlas.cogentco.com [2001:550:0:1000::8275:101]
   12   251 ms   251 ms   252 ms  be2425.ccr42.par01.atlas.cogentco.com [2001:550:0:1000::8275:3cd]
   13     *        *        *     Request timed out.
   14   274 ms   274 ms   275 ms  be2229.ccr22.muc03.atlas.cogentco.com [2001:550:0:1000::9a36:263a]
   15   274 ms   273 ms   272 ms  be2223.ccr21.vie01.atlas.cogentco.com [2001:550:0:1000::8275:318a]
   16   289 ms   289 ms   289 ms  be2594.rcr21.zag01.atlas.cogentco.com [2001:550:0:1000::8275:3aa]
   17   285 ms   281 ms   282 ms  te0-0-2-2.nr11.b020911-1.zag01.atlas.cogentco.com [2001:550:0:1000::9a19:6b2]
   18   272 ms   270 ms   266 ms  2001:978:2:8d::2
   19   268 ms   268 ms   267 ms  2001:b68:ff:ff:a2b:0:58:1
   20   267 ms   267 ms   267 ms  2001:b68:ff:ff:a2b:0:58:2
   21   269 ms   269 ms   270 ms  bwm.CARNet.hr [2001:b68:ff:1::85]
  
  Traceroute de volta:
  
  traceroute to 2001:1284:f005:3594:49f:a46e:45db:14a9 (2001:1284:f005:3594:49f:a46e:45db:14a9), 20 hops max, 80 byte packets
  1 2001:b68:ff:1::c 0.947 ms 1.455 ms
  2 2001:b68:ff:ff:a2b:0:5b:1 1.418 ms 1.402 ms
  3 2001:7f8:3c::1a 2.542 ms 5.013 ms
  4 2001:7f8:3c::19 8.883 ms 8.865 ms
  5 2001:7f8:30:0:2:1:0:6939 8.972 ms 8.836 ms
  6 2001:470:0:284::2 21.661 ms 21.586 ms
  7 2001:470:0:213::1 21.374 ms 21.315 ms
  8 2001:470:0:37::1 34.362 ms 34.349 ms
  9 2001:470:0:2cf::2 138.790 ms 138.279 ms
  10 2001:470:0:299::1 113.062 ms 113.056 ms
  11 2001:470:0:114::1 127.032 ms 124.721 ms
  12 2001:470:0:a6::1 134.100 ms 131.629 ms
  13 2001:470:0:374::2 243.026 ms 242.680 ms
  14 2804:680:10:a::f6 258.692 ms 258.368 ms
  15 2001:1284:ffff:2::2 253.524 ms 251.464 ms
  16 2001:1284:f005:3594:4802:71ff:fe5a:47e 268.239 ms 266.474 ms
  17 2001:1284:f005:3594:49f:a46e:45db:14a9 255.721 ms 254.915 ms

5. Responda: quais números representam o código e o tipo de mensagens ICMP
recebidas pelo traceroute? Qual o nome dessa mensagem ICMP?

  ICMP 11, Time Exceeded

  Ref: http://serverfault.com/questions/374620/does-traceroute-use-udp-or-icmp-or-both

6. Descubra qual tipo de pacote o traceroute de seu sistema operacional envia
(UDP, TCP ou ICMP). Apresente evidência (cópia da documentação ou pacote
capturado, ou ambos).

  Windows, Envia pacote ICMP.
  
  Ref: http://serverfault.com/questions/374620/does-traceroute-use-udp-or-icmp-or-both
