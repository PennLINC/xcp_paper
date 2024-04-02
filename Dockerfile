FROM pennlinc/xcp_d:0.7.1rc4

RUN mkdir /data 
RUN cd /data && wget https://upenn.box.com/shared/static/1j75e7nfcph4x8zxj16m9704jesd1lpk.gz && tar -xf 1j75e7nfcph4x8zxj16m9704jesd1lpk.gz && chmod -R 777 EF
