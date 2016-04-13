Arquivo de entrada
------------------

reinaldorauch.tk
uepg.br
ufpr.br
gru.valve.net
soundcloud.com
thepiratebay.se
websix.com.br
kabum.com.br
facebook.com
facebook.com.br
sony.jp
hostgator.ru
deinfo.uepg.br
4chan.com
reddit.com
mega.co.nz
mail.google.com
inbox.google.com
interpol.int
czub.cz


Script Utilizado
----------------

``` bash
#!/bin/bash
for URL in $(cat $1 ); do
   echo -n $URL ' '
   ping $URL -c 5 -q | grep rtt | awk '{ print $4}' | awk -F'/' '{ print $1 " " $2 " " $3 " " $4}'
done
```

Saída do script
---------------

reinaldorauch.tk  143.382 143.554 143.871 0.384
uepg.br  0.322 0.403 0.556 0.091
ufpr.br  10.188 10.422 11.017 0.335
gru.valve.net  16.440 16.683 17.213 0.283
soundcloud.com  115.873 116.389 116.994 0.472
thepiratebay.se  120.472 120.726 121.239 0.343
websix.com.br  142.417 142.759 143.033 0.459
kabum.com.br  191.325 191.663 192.507 0.643
facebook.com  139.827 140.056 140.286 0.439
facebook.com.br  142.060 142.359 143.116 0.574
sony.jp  134.727 135.002 135.619 0.511
hostgator.ru  273.938 278.824 281.191 2.590
deinfo.uepg.br  0.224 0.253 0.276 0.025
4chan.com  162.142 162.911 163.583 0.627
reddit.com  9.697 9.890 10.298 0.227
mega.co.nz  237.066 237.354 237.996 0.630
mail.google.com  9.685 9.787 9.962 0.148
inbox.google.com  9.631 9.676 9.722 0.119
interpol.int  137.723 137.969 138.143 0.276
czub.cz  232.504 232.918 233.896 0.746


Conclusões
----------

Foi observado que a variação de tempo de resposta entre os servidores mais
próximos e os servidores mais distantes são condisentes com o esperado.
Quanto maior o número saltos, e a distâncias entre os pontos, maior o tempo.
Nota-se uma similariade dos tempos entre o servidor czub.cz com o mega.co.nz
pois apesar da República Tcheca ser na Europa, não está ligada diretamente aos
grandes backbones da região.