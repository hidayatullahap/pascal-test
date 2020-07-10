program Main;
uses crt;

type
  paket = record
    no, np, tujuan, kota, nama, kirim: string;
    npg, asal: string;
    berat, biaya, total: integer;
  end;

  z = array [1..100] of paket;
const
  adm = 5000;
var
  a: z;
  n, i, m, p, pil: integer;

procedure menu(var pil: integer);
begin
  TextBackground(white);
  clrscr;
  TEXTCOLOR(blue);
{menu utama}
  GotoXY(40, 1);
  writeln('Kelas  : SI19A2');
  GotoXY(40, 2);
  writeln('NIM    : 190101040');
  GotoXY(40, 3);
  writeln('Nama   : Ersa Lintang Divanka');
  writeln;
  writeln;
  writeln;
  TEXTCOLOR(green);
  GotoXY(17, 6);
  writeln('                              ***                               ');
  GotoXY(17, 7);
  writeln('     DURING THIS COVID-19 PLEASE STAY SAFE AND STAY HEALTY      ');
  GotoXY(17, 8);
  writeln(' PLEASE DONT FORGET TO WEAR YOUR MASK AND KEEP WASH YOUR HANDS  ');
  GotoXY(17, 9);
  writeln('                              ***                               ');
  writeln;
  TEXTCOLOR(BLUE);
  GoToXY(15, 13);
  writeln('|=========================================================|');
  GoToXY(15, 14);
  writeln('|                    SELAMAT DATANG                       |');
  GoToXY(15, 15);
  writeln('|                          DI                             |');
  GoToXY(15, 16);
  writeln('|                   ERSA. X1 EXPRESS                      |');
  GoToXY(15, 17);
  writeln('|               www.ersa.X1express.co.id                  |');
  GoToXY(15, 18);
  writeln('|           Jl. Sekar Jagad No.1 Surakarta                |');
  GoToXY(15, 19);
  writeln('|                       0271 567899                       |');
  GoToXY(15, 20);
  writeln('|=========================================================|');
  GoToXY(15, 21);
  writeln('|                     Pilihan Menu                        |');
  GoToXY(15, 22);
  writeln('|                                                         |');
  GoToXY(15, 22);
  writeln('|            1. Daftar Kota yang tersedia                 |');
  GoToXY(15, 23);
  writeln('|            2. Layanan Pengiriman Paket                  |');
  GoToXY(15, 24);
  writeln('|            3. Cari berdasarkan Biaya                    |');
  GoToXY(15, 25);
  writeln('|            4. KELUAR                                    |');
  GoToXY(15, 26);
  writeln('|=========================================================|');
  GoToXY(15, 27);
  writeln('                                                           ');
  GoToXY(15, 28);
  write('                     Pilih Menu [1..4]!:');
  readln(pil);

  writeln;
  while (pil < 0) or (pil > 4) do
  begin
    GoToXY(15, 28);
    writeln('Menu yang di inputkan tidak tersedia, silakan ulangi');
    readln;
  end;
end;

function garis: string;
begin
  garis := ('-----------------------------------------------------------------------------------------------------------------------------------------------');
end;

procedure cari_total;
var
  i, ia, ib, j, v, w, cari: integer;
  ketemu: boolean;

begin
  gotoxy(2, 2);
  write('masukkan total : ');
  gotoxy(18, 2);
  readln(cari);
  ia := 1;
  ib := n;
  ketemu := false;
  while ((not ketemu) and (ia <= ib)) do
  begin
    j := (ia + ib) div 2;
    if (a[j].total = cari)
    then
      ketemu := true
    else
      if (a[j].total < cari)
      then
        ia := j + 1
      else
        ib := j - 1;
  end;
  if (ketemu) then
  begin
    i := 1;
    v := j;
    w := j + 1;
    while (cari = a[v].total) do
    begin
      GotoXY(1, 4);
      writeln ('-------------------------------------------------------------------------------------------------------------------------------------|');
      gotoxy(1, 5);
      writeln ('| No |  No.Paket  |  Berat   |      Nama Penerima     |       Tujuan       |       Kota       |       Biaya      | Jenis Pengiriman  |');
      gotoxy(1, 6);
      writeln ('-------------------------------------------------------------------------------------------------------------------------------------|');
      gotoxy(1, 6 + i);
      writeln('|    |            |          |                        |                    |                  |                  |                   |');
      gotoxy(2, 6 + i);
      writeln(a[i].no);
      gotoxy(8, 6 + i);
      writeln(a[i].np);
      gotoxy(23, 6 + i);
      writeln(a[i].berat);
      gotoxy(39, 6 + i);
      writeln(a[i].nama);
      gotoxy(63, 6 + i);
      writeln(a[i].tujuan);
      gotoxy(81, 6 + i);
      writeln(a[i].kota);
      gotoxy(99, 6 + i);
      writeln(a[i].total);
      gotoxy(117, 6 + i);
      writeln(a[i].kirim);
      i := i + 1;
      v := v - 1;
      gotoxy(1, 6 + i);
      write   ('-------------------------------------------------------------------------------------------------------------------------------------');
    end;
    while (cari = a[w].total) do
    begin
      GotoXY(1, 4);
      writeln ('-------------------------------------------------------------------------------------------------------------------------------------|');
      gotoxy(1, 5);
      writeln ('| No |  No.Paket  |  Berat   |      Nama Penerima     |       Tujuan       |       Kota       |       Biaya      | Jenis Pengiriman  |');
      gotoxy(1, 6);
      writeln ('-------------------------------------------------------------------------------------------------------------------------------------|');
      gotoxy(1, 6 + i);
      writeln('|    |            |          |                        |                    |                  |                  |                   |');
      gotoxy(2, 6 + i);
      writeln(a[i].no);
      gotoxy(8, 6 + i);
      writeln(a[i].np);
      gotoxy(23, 6 + i);
      writeln(a[i].berat);
      gotoxy(39, 6 + i);
      writeln(a[i].nama);
      gotoxy(63, 6 + i);
      writeln(a[i].tujuan);
      gotoxy(81, 6 + i);
      writeln(a[i].kota);
      gotoxy(99, 6 + i);
      writeln(a[i].total);
      gotoxy(117, 6 + i);
      writeln(a[i].kirim);
      i := i + 1;
      w := w + 1;
      gotoxy(1, 6 + i);
      write   ('-------------------------------------------------------------------------------------------------------------------------------------');
    end;
  end
  else
  begin
    gotoxy(30, 10);
    write('total ', cari, ' tidak ada ');
  end;
end;

procedure uruttotal;
var
  temp: string;
  temp1, i, j, min: integer;
begin
  for i:= 1 to (n - 1) do
  begin
    min := i;
    for j:= (i + 1) to n do
    begin
      if (a[j].total < a[min].total)
      then
      begin
        min := j
      end;
    end;
    temp := a[min].no;
    a[min].no := a[i].no;
    a[i].no := temp;

    temp := a[min].np;
    a[min].np := a[i].np;
    a[i].np := temp;

    temp1 := a[min].berat;
    a[min].berat := a[i].berat;
    a[i].berat := temp1;

    temp := a[min].nama;
    a[min].nama := a[i].nama;
    a[i].nama := temp;

    temp := a[min].tujuan;
    a[min].tujuan := a[i].tujuan;
    a[i].tujuan := temp;


    temp := a[min].kota;
    a[min].kota := a[i].kota;
    a[i].kota := temp;

    temp1 := a[min].total;
    a[min].total := a[i].total;
    a[i].total := temp1;


    temp := a[min].kirim;
    a[min].kirim := a[i].kirim;
    a[i].kirim := temp;


  end;
end;


procedure daftar_kota;
begin

  clrscr;
  TextBackground(white);

  TEXTCOLOR(blue);
{menu utama}
  GotoXY(40, 1);
  writeln('Kelas  : SI19A2');
  GotoXY(40, 2);
  writeln('NIM    : 190101040');
  GotoXY(40, 3);
  writeln('Nama   : Ersa Lintang Divanka');
  clrscr;
  writeln;
  TEXTCOLOR(green);
  GotoXY(17, 6);
  writeln('                              ***                               ');
  GotoXY(17, 7);
  writeln('     DURING THIS COVID-19 PLEASE STAY SAFE AND STAY HEALTY      ');
  GotoXY(17, 8);
  writeln(' PLEASE DONT FORGET TO WEAR YOUR MASK AND KEEP WASH YOUR HANDS  ');
  GotoXY(17, 9);
  writeln('                              ***                               ');
  writeln;
  textcolor(blue);
  writeln('Daftar KOTA yang tersedia untuk pengiriman paket di ErsaX1Express');
  writeln;
  writeln('|==============================================================|');
  writeln('|                      MENU DAFTAR KOTA                        |');
  writeln('|==============================================================|');
  writeln('| NO |      PROVINSI      |                 KOTA               |');
  writeln('|==============================================================|');
  writeln('| 1. |        ACEH        | Banda Aceh,Langsae,Meulaboh,Sabang |');
  writeln('| 2. |        BALI        | Denpassar                          |');
  writeln('| 3. |   BANGKA BELITUNG  | Pangkalpinang                      |');
  writeln('| 4. |       BANTEN       | Cilegon,Serang,Tangerang           |');
  writeln('| 5. |     DKIJAKARTA     | JakPus,JakBar,JakTim,JakSel,JakUt  |');
  writeln('| 6. |       JAMBI        | Sungai Penuh,Jambi                 |');
  writeln('| 7. |     JAWA TENGAH    | Solo,Semarang,Salatiga,Pekalongan  |');
  writeln('|    |                      Magelang,Sukoharjo,Tegal           |');
  writeln('| 8. |     JAWA BARAT     | Bandung,Bekasi,Bogor,Cimahi,Cirebon|');
  writeln('|    |                      Depok,Sukabumi,Tasikmalaya,Banjar  |');
  writeln('| 9. |     JAWA TIMUR     | Batu,Blitar,Kediri,Madiun,Malang   |');
  writeln('|    |                      Mojokerto,Pasuruan,Surabaya        |');
  writeln('|10. |  KALIMANTAN BARAT  | Pontianak,Singkawang               |');
  writeln('|11. | KALIMANTAN SELATAN | Banjarbaru,Banjarmasin             |');
  writeln('|12. | KALIMANTAN TENGAH  | Palangkaraya                       |');
  writeln('|13. | KALIMANTAN TIMUR   | Balikpapan,Bontang,Samarinda       |');
  writeln('|14. | KALIMANTAN UTARA   | Tarakan                            |');
  writeln('|15. |      LAMPUNG       | Bandar Lampung, Metro              |');
  writeln('|16. |      MALUKU        | Ambon,Tual                         |');
  writeln('|17. |   KEPULAUAN RIAU   | Batam,Tanjungpinang                |');
  writeln('|18. |   MALUKU UTARA     | Ternate                            |');
  writeln('|19. |        NTB         | Bima,Mataram                       |');
  writeln('|20. |        NTT         | Kupang                             |');
  writeln('|21. |       PAPUA        | Jayapura,Sorong                    |');
  writeln('|22. |    YOGYAKARTA      | Yogyakarta                         |');
  writeln('|23. | SULAWESI SELATAN   | Makassar,Palopo,Parepare           |');
  writeln('|24. | SULAWESI TENGAH    | Palu                               |');
  writeln('|25. | SULAWESI TENGGARA  | Kendari,Bau-Bau                    |');
  writeln('|24. | SULAWESI UTARA     | Manado,Tomohon,Kotamobagu          |');
  writeln('|25. | SUMATERA BARAT     | Bukittinggi,Padang,Payakumbuh,Solok|');
  writeln('|26. | SUMATERA SELATAN   | Pagaralam.Palembang,Prabumulih     |');
  writeln('|27. | SUMATERA UTARA     | Medan,Binjai,Sibolga,Tebingtinggi  |');
  writeln('|28. |         RIAU       | Dumai,Pekanbaru                    |');
  writeln('|==============================================================|');
  writeln('                 ** Tekan ENTER untuk LANJUT **                 ');
end;


procedure isidata;
begin
  clrscr;
  writeln;
  writeln;
  TEXTCOLOR(green);
  GotoXY(17, 6);
  writeln('                              ***                               ');
  GotoXY(17, 7);
  writeln('     DURING THIS COVID-19 PLEASE STAY SAFE AND STAY HEALTY      ');
  GotoXY(17, 8);
  writeln(' PLEASE DONT FORGET TO WEAR YOUR MASK AND KEEP WASH YOUR HANDS  ');
  GotoXY(17, 9);
  writeln('                              ***                               ');
  writeln;
  textcolor(blue);
  writeln('|=========================================================|');
  writeln('|                   ERSA. X1 EXPRESS                      |');
  writeln('|               www.ersa.X1express.co.id                  |');
  writeln('|           Jl. Sekar Jagad No.1 Surakarta                |');
  writeln('|                       0271 567899                       |');
  writeln('|=========================================================|');
  writeln;


  write('                     Jumlah Paket:');
  readln(n);
  writeln;
  writeln('           --------------------------------         ');
  writeln('           ---                          ---         ');
  writeln('           ---       Masukan Data       ---         ');
  writeln('           ---                          ---         ');
  writeln('           --------------------------------         ');
  for i :=1 to n do
  begin
    writeln ('Paket', i);
    with a[i] do
    begin
      write ('No               :');
      readln(No);
      write ('No.Paket         :');
      readln(Np);
      write ('Nama Pengirim    :');
      readln(Npg);
      write ('Asal Pengirim    :');
      readln(asal);
      write ('Berat            :');
      readln(Berat);
      write ('Nama Penerima    :');
      readln(Nama);
      write ('Tujuan           :');
      readln(Tujuan);
      write ('Alamat           :');
      readln(kota);
      write ('Jenis Pengiriman :');
      readln(kirim);
    end;
    writeln;
  end;


  clrscr;
  writeln;


  m := 5;
  p := 6;


  textcolor(blue);
  GotoXY(40, 1);
  writeln ('        ERSA. X1 EXPRESS          ');
  GotoXY(40, 2);
  writeln ('  Jl. Sekar Jagad No.1 Surakarta  ');
  GotoXY(40, 3);
  writeln ('          0271 567899             ');
  textcolor(blue);
  GotoXY(1, 4);
  writeln     ('-----------------------------------------------------------------------------------------------------------------------------------------------|');
  writeln                 ('| No |  No.Paket  |  Berat   |      Nama Penerima     |       Tujuan       |           Alamat           |       Biaya      | Jenis Pengiriman  |');
  writeln                 ('-----------------------------------------------------------------------------------------------------------------------------------------------|');
  for i := 1 to n do
  begin
    p := p + 1;
    textcolor(blue);
    GotoXY(1, p);
    writeln     ('|    |            |          |                        |                    |                            |                  |                   |');

    with a[i] do
    begin

      if (berat <= 2) and (kirim = 'express') then
      begin
        total := berat * 4000;
      end else
        if (berat > 2) and (kirim = 'express') then
        begin
          total := berat * 5000;
        end else
          if  (berat <= 20) and (kirim = 'express') then
          begin
            total := berat * 6000;
          end else
            if  (berat >= 21) and (kirim = 'express') then
            begin
              total := berat * 7000;
            end else
              if(berat <= 2) and (kirim = 'reguler') then
              begin
                total := berat * 3000;
              end else
                if  (berat > 2) and (kirim = 'reguler') then
                begin
                  total := berat * 4000;
                end else
                  if (berat <= 20) and (kirim = 'reguler') then
                  begin
                    total := berat * 5000;
                  end else
                    if (berat >= 21) and (kirim = 'reguler') then
                    begin
                      total := berat * 6000;
                    end else
                      if (berat <= 40) and (kirim = 'express') then
                      begin
                        total := berat * 8000;
                      end else
                        if (berat <= 40) and (kirim = 'reguler') then
                        begin
                          total := berat * 7000;
                        end else begin

                        end;


      textcolor(blue);
      GotoXY(3, p);
      writeln (No);
      GotoXY(9, p);
      writeln (Np);
      GotoXY(23, p);
      writeln (Berat, 'kg');
      GotoXY(35, p);
      writeln (Nama);
      GotoXY(57, p);
      writeln (Tujuan);
      GotoXY(85, p);
      writeln (Kota);
      GotoXY(109, p);
      writeln (Total, ',-');
      GotoXY(127, p);
      writeln (kirim);
      textcolor(blue);
      writeln(garis);
      writeln;
      writeln;
      writeln;
      textcolor(red);
      write('Nama Pengirim:');
      writeln(npg);
      write('Asal Pengirim:');
      writeln(asal);
      writeln;
    end;
    writeln;
    writeln;
    writeln;
  end;
begin
  textcolor(blue);
  writeln('Untuk informasi dan pengecekan status pengiriman silahkan mengunjungi www.ersa.x1express.co.id');
  writeln;
  TEXTCOLOR(green);
  writeln('                              ***                               ');
  writeln('     DURING THIS COVID-19 PLEASE STAY SAFE AND STAY HEALTY      ');
  writeln(' PLEASE DONT FORGET TO WEAR YOUR MASK AND KEEP WASH YOUR HANDS  ');
  writeln('                              ***                               ');
  writeln;
  writeln;
  writeln;
  textcolor(blue);
  writeln('               TEKAN ENTER UNTUK KEMBALI KE MENU UTAMA           ');

end;
  readln;
end;


procedure keluar;
begin
{keluar}
  writeln('                       === TERIMA KASIH ===            ');


  writeln;
  writeln('                  == Tekan ENTER untuk LANJUT ==       ');
  readln;

end;

{program utama}
begin
  repeat
    clrscr;
    menu(pil);
    case (pil) of
      1:
      begin
        clrscr;
        daftar_kota;
        readln;
      end;
      2:
      begin
        clrscr;
        isidata;
        readln;
      end;
      3:
      begin
        clrscr;
        uruttotal;
        cari_total;
        readln;
      end;
      4:
      begin
        clrscr;
        keluar;
        readln;
      end;
    end;
  until (pil = 0);
end.
