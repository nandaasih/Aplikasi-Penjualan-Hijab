.model small
.code
org 100h
start:
	jmp mulai
nama	            db 13,10, 'Nama Pembeli : $'
merek	            db 13,10, 'Merek Hijab : $'
ukuran	            db 13,10, 'Ukuran Hijab : $'
total               db 13,10, 'Total Harga : $'
tampung_nama	    db 30,?,30 dup(?)
tampung_merek	    db 13,?,13 dup(?)
tampung_ukuran	    db 13,?,13 dup(?)
tampung_total       db 13,?,13 dup(?)


a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07
h db 08
i db 09
j dw 10  




	mulai:
	mov ah,9h
	lea dx,nama
	int 21h
	mov ah,0ah
	lea dx,tampung_nama
	int 21h
	push dx


	mov ah,9h
	lea dx,merek
	int 21h
	mov ah,0ah
	lea dx,tampung_merek
	int 21h
	push dx 
	
	mov ah,9h
	lea dx,ukuran
	int 21h
	mov ah,0ah
	lea dx,tampung_ukuran
	int 21h
	push dx 


	mov ah,9h
	mov dx,offset daftar
	int 21h
	jmp proses
	int 21h

    mov ah,9h
	mov dx,offset total
	int 21h
	jmp proses
	int 21h

eror_nsg:
     mov ah,9h
     mov dx,offset eror
     int 21h
     int 20h

proses:

      mov ah,9h
      mov dx,offset pilih_msg   
      int 21h

      mov ah,1
      int 21h
      mov bh,al
      mov ah,1
      int 21h
      
      mov bl,al
      cmp bh,'0'
      cmp bl,'1'
      je  total1

      cmp bh,'0'
      cmp bl,'2'
      je total2

      cmp bh,'0'
      cmp bl,'3'
      je total3

      cmp bh,'0'
      cmp bl,'4'
      je total4
     
      cmp bh,'0'
      cmp bl,'5'
      je total5

      cmp bh,'0'
      cmp bl,'6'
      je total6

      cmp bh,'0'
      cmp bl,'7'
      je total7

      cmp bh,'0'
      cmp bl,'8'
      je total8

      cmp bh,'0'
      cmp bl,'9'
      je total9

      cmp bh,'1'
      cmp bl,'0'
      je total10 
      
    

      jne eror_nsg    
;------------------------------------------------------------------'

daftar db 13,10, '|-----------------------------------------------|'
       db 13,10, '|		             TOKO HIJAB ASIH	          |'
       db 13,10, '|-----------------------------------------------|'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|No  | Merek Hijab |  Ukuran (L)  | Ukuran (XL) |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|01  | ELZATTA     | Rp. 109.000  | Rp. 160.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|02  | SHAFIRA     | Rp. 90.000   | Rp. 145.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|03  | ZOYA        | Rp. 57.000   | Rp. 130.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|04  | RABBANI     | Rp. 80.000   | Rp. 150.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|05  | UMAMA       | Rp. 70.000   | Rp. 135.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|06  | DIARO       | Rp. 58.000   | Rp. 118.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|07  | AUTHENTISM  | Rp. 75.000   | Rp. 120.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|08  | SERADIA     | Rp. 90.000   | Rp. 178.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|09  | LOZY HIJAB  | Rp. 86.000   | Rp. 134.000 |'
       db 13,10, '+----+-------------+--------------+-------------|'
       db 13,10, '|10  | JANAHRA     | Rp. 99.000   | Rp. 179.000 |'
       db 13,10, '+----+-------------+--------------+-------------|','$'
       
       
       
eror		db 13,10, 'KODE YANG ANDA MASUKKAN SALAH $'
pilih_msg	db 13,10, 'Silahkan Memilih Hijab Yang Anda Beli : $'
success		db 13,10, 'Selamat Anda Berhasil $' 
      
 
 
 

total1:
       mov ah,9h
       lea dx,teks1
       int 21h
       int 20h
       
total2:
       mov ah,9h
       lea dx,teks2
       int 21h
       int 20h
      
total3:
       mov ah,9h
       lea dx,teks3
       int 21h
       int 20h
       
total4:
       mov ah,9h
       lea dx,teks4
       int 21h
       int 20h
       
total5:
       mov ah,9h
       lea dx,teks5
       int 21h 
       int 20h
       
total6:
       mov ah,9h
       lea dx,teks6
       int 21h
       int 20h
       
total7:
       mov ah,9h
       lea dx,teks7
       int 21h
       int 20h
       
total8:
       mov ah,9h
       lea dx,teks8
       int 21h
       int 20h
       
total9:
       mov ah,9h
       lea dx,teks9
       int 21h
       int 20h    
       
total10:
       mov ah,9h
       lea dx,teks10
       int 21h
       int 20h
               
               
     
;------------------------------------------------------------------------------------------'

teks1:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                        Anda Memilih Hijab ELZATTA                         |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 109.000  |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 160.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                    Terimakasih Sudah Belanja Ditoko Kami                  |'
      db 13,10,'|---------------------------------------------------------------------------|$'
      

teks2:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                         Anda Memilih Hijab SHAFIRA                        |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 90.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 145.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                  Terimakasih Sudah Belanja Ditoko Kami                    |'
      db 13,10,'|---------------------------------------------------------------------------|$' 
      

teks3:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                        Anda Memilih Hijab ZOYA                            |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 57.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 130.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                Terimakasih Sudah Belanja Ditoko Kami                      |'
      db 13,10,'|---------------------------------------------------------------------------|$'
      

teks4: 
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                        Anda Memilih Hijab RABBANI                         |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 80.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 150.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|            Terimakasih Sudah Belanja Ditoko Kami                          |'
      db 13,10,'|---------------------------------------------------------------------------|$'
      

teks5:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                        Anda Memilih Hijab UMAMA                           |' 
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 70.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 135.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                Terimakasih Sudah Belanja Ditoko Kami                      |'
      db 13,10,'|---------------------------------------------------------------------------|$'
      

teks6:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                       Anda Memilih Hijab DIARO                            |' 
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 58.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 118.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|               Terimakasih Sudah Belanja Ditoko Kami                       |' 
      db 13,10,'|---------------------------------------------------------------------------|$'
      

teks7:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                    Anda Memilih Hijab AUTHENTISM                          |' 
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 75.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 120.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|             Terimakasih Sudah Belanja Ditoko Kami                         |'
      db 13,10,'|-------------------------------------------------------------------------- |$'

teks8:
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|                    Anda Memilih Hijab SERADIA                             |' 
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 90.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 178.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|             Terimakasih Sudah Belanja Ditoko Kami                         |'
      db 13,10,'----------------------------------------------------------------------------|$'

teks9:
      db 13,10,'|---------------------------------------------------------------------------|'                          
      db 13,10,'|                    Anda Memilih Hijab LOZY HIJAB                          |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) maka total yang harus anda bayar Rp 86.000   |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 134.000 |'
      db 13,10,'|---------------------------------------------------------------------------|'
      db 13,10,'|             Terimakasih Sudah Belanja Ditoko Kami                         |'
      db 13,10,'----------------------------------------------------------------------------|$'
      

teks10:
      db 13,10,'|----------------------------------------------------------------------------|'
      db 13,10,'|                    Anda Memilih Hijab JANAHRA                              | '
      db 13,10,'|----------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (L) mak, total yang harus anda bayar Rp 99.000    |'
      db 13,10,'|----------------------------------------------------------------------------|'
      db 13,10,'| jika anda membeli ukuran (XL) maka total yang harus anda bayar Rp 179.000  |'
      db 13,10,'|----------------------------------------------------------------------------|'
      db 13,10,'|               Terimakasih Sudah Belanja Ditoko Kami                        |'              
      db 13,10,'|----------------------------------------------------------------------------|$'
      
        
        





end start    

 
 
