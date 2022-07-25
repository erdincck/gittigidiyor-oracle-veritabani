--------------------------------------------------------
--  File created - Pazar-Mayýs-22-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADRES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADRES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KULLANICI_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KULLANICI_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 3 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADRESLER
--------------------------------------------------------

  CREATE TABLE "ADRESLER" 
   (	"ADRES_ID" NUMBER(4,0), 
	"SEHIR" VARCHAR2(25), 
	"ILCE" VARCHAR2(25), 
	"ADRES_TANIMI" VARCHAR2(250), 
	"POSTA_KODU" VARCHAR2(10), 
	"ULKE" VARCHAR2(50), 
	"TELEFON" CHAR(10)
   ) ;
--------------------------------------------------------
--  DDL for Table ALICI
--------------------------------------------------------

  CREATE TABLE "ALICI" 
   (	"ALICI_ID" NUMBER(15,0), 
	"KAZANANLAR_K_UYESIMI" NUMBER(1,0) DEFAULT 0, 
	"KAZANANLAR_K_SURESI" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table IADE
--------------------------------------------------------

  CREATE TABLE "IADE" 
   (	"IADE_ID" NUMBER, 
	"ALICI_ID" NUMBER(15,0), 
	"URUN_ID" NUMBER, 
	"SIPARIS_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table INDIRIM
--------------------------------------------------------

  CREATE TABLE "INDIRIM" 
   (	"INDIRIM_ID" NUMBER, 
	"INDIRIM_ADI" VARCHAR2(20), 
	"INDIRIM_ACIKLAMASI" VARCHAR2(100), 
	"INDIRIM_TUTARI" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table INDIRIM_TURU
--------------------------------------------------------

  CREATE TABLE "INDIRIM_TURU" 
   (	"INDIRIMTURU_ID" NUMBER(2,0), 
	"TUR_ADI" CHAR(15), 
	"URUN_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ISTEKLISTESI
--------------------------------------------------------

  CREATE TABLE "ISTEKLISTESI" 
   (	"URUN_ID" NUMBER, 
	"ALICI_ID" CHAR(15), 
	"ISTEK_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KAMPANYA
--------------------------------------------------------

  CREATE TABLE "KAMPANYA" 
   (	"KAMPANYA_ID" NUMBER, 
	"K_ADI" VARCHAR2(50), 
	"K_ACIKLAMA" VARCHAR2(200), 
	"K_TUR" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KAMPANYA_TUR
--------------------------------------------------------

  CREATE TABLE "KAMPANYA_TUR" 
   (	"KTUR_ID" NUMBER, 
	"KTUR_ADI" VARCHAR2(50), 
	"KAMPANYA_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KARGO
--------------------------------------------------------

  CREATE TABLE "KARGO" 
   (	"KARGO_ID" NUMBER, 
	"SIPARIS_ID" NUMBER, 
	"URUN_ID" NUMBER, 
	"TASIYICI_ID" NUMBER, 
	"KARGO_DURUMU" VARCHAR2(10), 
	"CIKIS_TARIH" DATE, 
	"TESLIM_TARIH" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table KATEGORI
--------------------------------------------------------

  CREATE TABLE "KATEGORI" 
   (	"KATEGORI_ID" NUMBER, 
	"KATEGORI_ADI" VARCHAR2(15), 
	"KATOGORI_ACIKLAMASI" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table KULLANICI
--------------------------------------------------------

  CREATE TABLE "KULLANICI" 
   (	"KULLANICI_ID" CHAR(15), 
	"EMAIL" VARCHAR2(255), 
	"AD" VARCHAR2(255), 
	"SOYAD" VARCHAR2(255), 
	"PAROLA" VARCHAR2(30), 
	"TELEFON" VARCHAR2(10), 
	"KULLANICI_TURU" NUMBER(1,0), 
	"ADRES_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ODEME_BILGILERI
--------------------------------------------------------

  CREATE TABLE "ODEME_BILGILERI" 
   (	"ODEME_ID" NUMBER, 
	"KART_NO" VARCHAR2(16), 
	"CVV" NUMBER, 
	"SON_KULLANMA_TARIHI" DATE, 
	"ADRES_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SATICI
--------------------------------------------------------

  CREATE TABLE "SATICI" 
   (	"SATICI_ID" CHAR(15), 
	"SATICI_ACIKLAMA" VARCHAR2(20), 
	"ADI" VARCHAR2(200), 
	"SADRES_ID" NUMBER, 
	"TEL_NO" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table SATICI_YORUM
--------------------------------------------------------

  CREATE TABLE "SATICI_YORUM" 
   (	"SATICI_ID" CHAR(15), 
	"SYORUM_ID" NUMBER, 
	"BASLIK" VARCHAR2(50), 
	"TANIM" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table SEPET
--------------------------------------------------------

  CREATE TABLE "SEPET" 
   (	"SEPET_ID" NUMBER, 
	"URUN_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SIPARISLER
--------------------------------------------------------

  CREATE TABLE "SIPARISLER" 
   (	"SIPARIS_ID" NUMBER, 
	"ALICI_ID" CHAR(15), 
	"INDIRIM_ID" NUMBER, 
	"ODEME_ID" NUMBER, 
	"SIPARIS_TARIHI" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SIPARIS_TUTAR
--------------------------------------------------------

  CREATE TABLE "SIPARIS_TUTAR" 
   (	"STUTAR_ID" NUMBER, 
	"SIPARIS_ID" NUMBER, 
	"INDIRIM_TUTARI" NUMBER, 
	"TOPLAM_TUTAR" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TASIYICI
--------------------------------------------------------

  CREATE TABLE "TASIYICI" 
   (	"TASIYICI_ID" NUMBER, 
	"TASIYICI_ADI" VARCHAR2(15)
   ) ;
--------------------------------------------------------
--  DDL for Table URUNLER
--------------------------------------------------------

  CREATE TABLE "URUNLER" 
   (	"URUN_ID" NUMBER, 
	"URUN_ADI" VARCHAR2(30), 
	"URUN_ACIKLAMASI" VARCHAR2(500), 
	"URUN_FIYATI" NUMBER, 
	"KATEGORI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table URUN_RESIM
--------------------------------------------------------

  CREATE TABLE "URUN_RESIM" 
   (	"URUN_ID" NUMBER, 
	"URUNYORUM_ID" NUMBER, 
	"URUNRESIM" BLOB, 
	"URUN_RES_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table URUNYORUM
--------------------------------------------------------

  CREATE TABLE "URUNYORUM" 
   (	"URUNYORUM_ID" NUMBER, 
	"ALICI_ID" CHAR(15), 
	"TANIM" VARCHAR2(500), 
	"BASLIK" VARCHAR2(30), 
	"URUN_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for View KULLANICI_GOSTER
--------------------------------------------------------

  CREATE OR REPLACE VIEW "KULLANICI_GOSTER" ("KULLANICI_ID", "AD", "SOYAD", "EMAIL", "ADRES_ID", "SEHIR", "ILCE") AS 
  select k.kullanici_id ,k.ad ,k.soyad,k.email,a.adres_id ,a.sehir,a.ilce
from KULLANICI k, adresler a
where k.adres_id=a.adres_id
;
REM INSERTING into ADRESLER
SET DEFINE OFF;
Insert into ADRESLER (ADRES_ID,SEHIR,ILCE,ADRES_TANIMI,POSTA_KODU,ULKE,TELEFON) values ('1003','istanbul','pendik','meydan','082624','TC','05678343  ');
Insert into ADRESLER (ADRES_ID,SEHIR,ILCE,ADRES_TANIMI,POSTA_KODU,ULKE,TELEFON) values ('1004','Kütahya','Merkez','meydan','07867','TC','5434343439');
Insert into ADRESLER (ADRES_ID,SEHIR,ILCE,ADRES_TANIMI,POSTA_KODU,ULKE,TELEFON) values ('1005','ANKARA','SÝNCAN','SÝNCAN MERKEZ','060606','tc','546564847 ');
Insert into ADRESLER (ADRES_ID,SEHIR,ILCE,ADRES_TANIMI,POSTA_KODU,ULKE,TELEFON) values ('1002','MERSÝN','MUT','MEYDAN','33600','TC','0405867879');
Insert into ADRESLER (ADRES_ID,SEHIR,ILCE,ADRES_TANIMI,POSTA_KODU,ULKE,TELEFON) values ('1001','AYDIN','SÖKE','MEYDAN','09200','TC','0548787987');
REM INSERTING into ALICI
SET DEFINE OFF;
Insert into ALICI (ALICI_ID,KAZANANLAR_K_UYESIMI,KAZANANLAR_K_SURESI) values ('1','1',to_date('01/04/2023','DD/MM/RRRR'));
Insert into ALICI (ALICI_ID,KAZANANLAR_K_UYESIMI,KAZANANLAR_K_SURESI) values ('2','0',null);
REM INSERTING into IADE
SET DEFINE OFF;
Insert into IADE (IADE_ID,ALICI_ID,URUN_ID,SIPARIS_ID) values ('123','1','4546','6789');
REM INSERTING into INDIRIM
SET DEFINE OFF;
Insert into INDIRIM (INDIRIM_ID,INDIRIM_ADI,INDIRIM_ACIKLAMASI,INDIRIM_TUTARI) values ('2457','Ramazan Ýndirimi ','ramazanda geçrli 300 lira üüzerine 50 tl indirim','50');
REM INSERTING into INDIRIM_TURU
SET DEFINE OFF;
REM INSERTING into ISTEKLISTESI
SET DEFINE OFF;
REM INSERTING into KAMPANYA
SET DEFINE OFF;
Insert into KAMPANYA (KAMPANYA_ID,K_ADI,K_ACIKLAMA,K_TUR) values ('3459','sonbahar','sonbahar kampanyasý','1');
REM INSERTING into KAMPANYA_TUR
SET DEFINE OFF;
Insert into KAMPANYA_TUR (KTUR_ID,KTUR_ADI,KAMPANYA_ID) values ('2457','sonbahar','3459');
REM INSERTING into KARGO
SET DEFINE OFF;
Insert into KARGO (KARGO_ID,SIPARIS_ID,URUN_ID,TASIYICI_ID,KARGO_DURUMU,CIKIS_TARIH,TESLIM_TARIH) values ('1122','112','1','1','yolda',to_date('01/04/2022','DD/MM/RRRR'),to_date('05/04/2022','DD/MM/RRRR'));
REM INSERTING into KATEGORI
SET DEFINE OFF;
Insert into KATEGORI (KATEGORI_ID,KATEGORI_ADI,KATOGORI_ACIKLAMASI) values ('4','PROSEDÜR','PROSEDÜR ÇALIÞTI');
Insert into KATEGORI (KATEGORI_ID,KATEGORI_ADI,KATOGORI_ACIKLAMASI) values ('1','elektronik','elektronik ürünler');
Insert into KATEGORI (KATEGORI_ID,KATEGORI_ADI,KATOGORI_ACIKLAMASI) values ('2','beyaz eþya','ev/bahçe');
Insert into KATEGORI (KATEGORI_ID,KATEGORI_ADI,KATOGORI_ACIKLAMASI) values ('3','moda','moda ürünleri');
REM INSERTING into KULLANICI
SET DEFINE OFF;
Insert into KULLANICI (KULLANICI_ID,EMAIL,AD,SOYAD,PAROLA,TELEFON,KULLANICI_TURU,ADRES_ID) values ('3              ','enes@gmail.com','Enes','Karaman','enes12','0567897345','1','1001');
Insert into KULLANICI (KULLANICI_ID,EMAIL,AD,SOYAD,PAROLA,TELEFON,KULLANICI_TURU,ADRES_ID) values ('1              ','erdinckiyik@gmail.com','erdinç','kýyýk','erdo12','5459474155','1','1001');
Insert into KULLANICI (KULLANICI_ID,EMAIL,AD,SOYAD,PAROLA,TELEFON,KULLANICI_TURU,ADRES_ID) values ('2              ','necati99@gmail.com','necati','üstün','necati12','5386642727','1','1002');
REM INSERTING into ODEME_BILGILERI
SET DEFINE OFF;
Insert into ODEME_BILGILERI (ODEME_ID,KART_NO,CVV,SON_KULLANMA_TARIHI,ADRES_ID) values ('111','1234123456785678','454',to_date('04/09/2026','DD/MM/RRRR'),'1');
REM INSERTING into SATICI
SET DEFINE OFF;
Insert into SATICI (SATICI_ID,SATICI_ACIKLAMA,ADI,SADRES_ID,TEL_NO) values ('1              ','YETKÝLÝ SATICI','HEZAR','2343','8768885431');
Insert into SATICI (SATICI_ID,SATICI_ACIKLAMA,ADI,SADRES_ID,TEL_NO) values ('2              ','ELEKTRONÝKÜRÜNLER','EMÝNE','2344','7676898989');
REM INSERTING into SATICI_YORUM
SET DEFINE OFF;
REM INSERTING into SEPET
SET DEFINE OFF;
REM INSERTING into SIPARISLER
SET DEFINE OFF;
Insert into SIPARISLER (SIPARIS_ID,ALICI_ID,INDIRIM_ID,ODEME_ID,SIPARIS_TARIHI) values ('123','12             ','23','1',to_date('01/04/2022','DD/MM/RRRR'));
REM INSERTING into SIPARIS_TUTAR
SET DEFINE OFF;
Insert into SIPARIS_TUTAR (STUTAR_ID,SIPARIS_ID,INDIRIM_TUTARI,TOPLAM_TUTAR) values ('12','123',null,'19000');
REM INSERTING into TASIYICI
SET DEFINE OFF;
Insert into TASIYICI (TASIYICI_ID,TASIYICI_ADI) values ('1','ptt');
REM INSERTING into URUNLER
SET DEFINE OFF;
Insert into URUNLER (URUN_ID,URUN_ADI,URUN_ACIKLAMASI,URUN_FIYATI,KATEGORI_ID) values ('1','samsung s21 ','samsung s21 ','3000','1');
Insert into URUNLER (URUN_ID,URUN_ADI,URUN_ACIKLAMASI,URUN_FIYATI,KATEGORI_ID) values ('2','masa','bahçeye koymalýk masa','500','2');
Insert into URUNLER (URUN_ID,URUN_ADI,URUN_ACIKLAMASI,URUN_FIYATI,KATEGORI_ID) values ('3','koltuk','kolduk','1000','2');
Insert into URUNLER (URUN_ID,URUN_ADI,URUN_ACIKLAMASI,URUN_FIYATI,KATEGORI_ID) values ('4','lenova','lenova','19000','1');
REM INSERTING into URUN_RESIM
SET DEFINE OFF;
REM INSERTING into URUNYORUM
SET DEFINE OFF;
Insert into URUNYORUM (URUNYORUM_ID,ALICI_ID,TANIM,BASLIK,URUN_ID) values ('1','1              ','Üründen çok memnun kaldým','kalitrli ürün','1');
REM INSERTING into KULLANICI_GOSTER
SET DEFINE OFF;
Insert into KULLANICI_GOSTER (KULLANICI_ID,AD,SOYAD,EMAIL,ADRES_ID,SEHIR,ILCE) values ('3              ','Enes','Karaman','enes@gmail.com','1001','AYDIN','SÖKE');
Insert into KULLANICI_GOSTER (KULLANICI_ID,AD,SOYAD,EMAIL,ADRES_ID,SEHIR,ILCE) values ('1              ','erdinç','kýyýk','erdinckiyik@gmail.com','1001','AYDIN','SÖKE');
Insert into KULLANICI_GOSTER (KULLANICI_ID,AD,SOYAD,EMAIL,ADRES_ID,SEHIR,ILCE) values ('2              ','necati','üstün','necati99@gmail.com','1002','MERSÝN','MUT');
--------------------------------------------------------
--  DDL for Index ADRESID_TEL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESID_TEL_UK" ON "ADRESLER" ("TELEFON") 
  ;
--------------------------------------------------------
--  DDL for Index ISTEKLISTESI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ISTEKLISTESI_PK" ON "ISTEKLISTESI" ("ISTEK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_UK1" ON "KULLANICI" ("EMAIL", "TELEFON") 
  ;
--------------------------------------------------------
--  DDL for Index SATICI_YORUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SATICI_YORUM_PK" ON "SATICI_YORUM" ("SYORUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007036
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007036" ON "KULLANICI" ("KULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007037
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007037" ON "ALICI" ("ALICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007044
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007044" ON "ODEME_BILGILERI" ("ODEME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007050
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007050" ON "KATEGORI" ("KATEGORI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007054
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007054" ON "URUNLER" ("URUN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007055
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007055" ON "SEPET" ("SEPET_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007063
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007063" ON "INDIRIM" ("INDIRIM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007065
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007065" ON "SIPARISLER" ("SIPARIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007069
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007069" ON "SATICI" ("SATICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007094
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007094" ON "KARGO" ("KARGO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007097
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007097" ON "TASIYICI" ("TASIYICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007104
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007104" ON "IADE" ("IADE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007105
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007105" ON "INDIRIM_TURU" ("INDIRIMTURU_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007108
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007108" ON "KAMPANYA" ("KAMPANYA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007110
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007110" ON "KAMPANYA_TUR" ("KTUR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007111
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007111" ON "SIPARIS_TUTAR" ("STUTAR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007154
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007154" ON "ADRESLER" ("ADRES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index URUN_RESIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URUN_RESIM_PK" ON "URUN_RESIM" ("URUN_RES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index URUNYORUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URUNYORUM_PK" ON "URUNYORUM" ("URUNYORUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007154
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007154" ON "ADRESLER" ("ADRES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ADRESID_TEL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRESID_TEL_UK" ON "ADRESLER" ("TELEFON") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007037
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007037" ON "ALICI" ("ALICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007104
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007104" ON "IADE" ("IADE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007063
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007063" ON "INDIRIM" ("INDIRIM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007105
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007105" ON "INDIRIM_TURU" ("INDIRIMTURU_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ISTEKLISTESI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ISTEKLISTESI_PK" ON "ISTEKLISTESI" ("ISTEK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007108
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007108" ON "KAMPANYA" ("KAMPANYA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007110
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007110" ON "KAMPANYA_TUR" ("KTUR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007094
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007094" ON "KARGO" ("KARGO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007050
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007050" ON "KATEGORI" ("KATEGORI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007036
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007036" ON "KULLANICI" ("KULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_UK1" ON "KULLANICI" ("EMAIL", "TELEFON") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007044
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007044" ON "ODEME_BILGILERI" ("ODEME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007069
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007069" ON "SATICI" ("SATICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SATICI_YORUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SATICI_YORUM_PK" ON "SATICI_YORUM" ("SYORUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007055
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007055" ON "SEPET" ("SEPET_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007065
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007065" ON "SIPARISLER" ("SIPARIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007111
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007111" ON "SIPARIS_TUTAR" ("STUTAR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007097
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007097" ON "TASIYICI" ("TASIYICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007054
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007054" ON "URUNLER" ("URUN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index URUN_RESIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URUN_RESIM_PK" ON "URUN_RESIM" ("URUN_RES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index URUNYORUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URUNYORUM_PK" ON "URUNYORUM" ("URUNYORUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ADRES_EKLE_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRES_EKLE_TRIG" 
BEFORE INSERT ON ADRESLER 
FOR EACH ROW
BEGIN
    IF  inserting THEN
        IF :NEW.ADRES_ID IS NULL THEN
            SELECT ADRES_SEQ.nextval INTO :NEW.ADRES_ID FROM DUAL;
        END IF;
    END IF;
END;
/
ALTER TRIGGER "ADRES_EKLE_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ADRES_EKLE_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRES_EKLE_TRIG" 
BEFORE INSERT ON ADRESLER 
FOR EACH ROW
BEGIN
    IF  inserting THEN
        IF :NEW.ADRES_ID IS NULL THEN
            SELECT ADRES_SEQ.nextval INTO :NEW.ADRES_ID FROM DUAL;
        END IF;
    END IF;
END;
/
ALTER TRIGGER "ADRES_EKLE_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure KATEGORI_EKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KATEGORI_EKLE" (P_KID NUMBER, P_KADI VARCHAR2,P_ACK VARCHAR2 ) IS
V_KID NUMBER;
V_KADI VARCHAR2(15 BYTE);
KONTROL NUMBER;
BEGIN
    SELECT COUNT(*) INTO KONTROL FROM KATEGORI
    WHERE KATEGORI_ID=P_KID ;
    IF KONTROL>0 THEN 
        raise_application_error(-20001,'Bu Kategori Zaten mevcut!!!!');
    END IF;
    SELECT MAX(KATEGORI_ID)+1 INTO V_KID FROM KATEGORI WHERE KATEGORI_ID=P_KID;

    INSERT INTO KATEGORI(KATEGORI_ID,KATEGORI_ADI,KATOGORI_ACIKLAMASI)
    VALUES(P_KID,P_KADI,P_ACK);


END;

/
--------------------------------------------------------
--  DDL for Function IHARFBUYUK
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "IHARFBUYUK" (
    METIN IN VARCHAR2
)
RETURN VARCHAR2
IS
BEGIN
    RETURN UPPER(SUBSTR(METIN, 1, 1)) || LOWER(SUBSTR(METIN, 2));
END;

/
--------------------------------------------------------
--  DDL for Function URUN_BUL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "URUN_BUL" (URUN_NUM NUMBER) RETURN VARCHAR2 IS
  uAD VARCHAR(200);
BEGIN
  SELECT INITCAP(URUN_ADI)||' '||URUN_FIYATI
  INTO uAD
  FROM URUNLER
  WHERE URUN_ID = URUN_NUM;
  RETURN uAD;
END;

/
--------------------------------------------------------
--  Constraints for Table ADRESLER
--------------------------------------------------------

  ALTER TABLE "ADRESLER" ADD CONSTRAINT "ADRESID_TEL_UK" UNIQUE ("TELEFON") ENABLE;
  ALTER TABLE "ADRESLER" ADD PRIMARY KEY ("ADRES_ID") ENABLE;
  ALTER TABLE "ADRESLER" MODIFY ("TELEFON" NOT NULL ENABLE);
  ALTER TABLE "ADRESLER" MODIFY ("ULKE" NOT NULL ENABLE);
  ALTER TABLE "ADRESLER" MODIFY ("POSTA_KODU" NOT NULL ENABLE);
  ALTER TABLE "ADRESLER" MODIFY ("ADRES_TANIMI" NOT NULL ENABLE);
  ALTER TABLE "ADRESLER" MODIFY ("ILCE" NOT NULL ENABLE);
  ALTER TABLE "ADRESLER" MODIFY ("SEHIR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALICI
--------------------------------------------------------

  ALTER TABLE "ALICI" ADD PRIMARY KEY ("ALICI_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table IADE
--------------------------------------------------------

  ALTER TABLE "IADE" ADD PRIMARY KEY ("IADE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table INDIRIM
--------------------------------------------------------

  ALTER TABLE "INDIRIM" ADD PRIMARY KEY ("INDIRIM_ID") ENABLE;
  ALTER TABLE "INDIRIM" ADD CHECK ( INDIRIM_TUTARI >= 0 ) ENABLE;
  ALTER TABLE "INDIRIM" MODIFY ("INDIRIM_TUTARI" NOT NULL ENABLE);
  ALTER TABLE "INDIRIM" MODIFY ("INDIRIM_ACIKLAMASI" NOT NULL ENABLE);
  ALTER TABLE "INDIRIM" MODIFY ("INDIRIM_ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INDIRIM_TURU
--------------------------------------------------------

  ALTER TABLE "INDIRIM_TURU" ADD PRIMARY KEY ("INDIRIMTURU_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ISTEKLISTESI
--------------------------------------------------------

  ALTER TABLE "ISTEKLISTESI" ADD CONSTRAINT "ISTEKLISTESI_PK" PRIMARY KEY ("ISTEK_ID") ENABLE;
  ALTER TABLE "ISTEKLISTESI" MODIFY ("ALICI_ID" NOT NULL ENABLE);
  ALTER TABLE "ISTEKLISTESI" MODIFY ("URUN_ID" NOT NULL ENABLE);
  ALTER TABLE "ISTEKLISTESI" MODIFY ("ISTEK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KAMPANYA
--------------------------------------------------------

  ALTER TABLE "KAMPANYA" ADD PRIMARY KEY ("KAMPANYA_ID") ENABLE;
  ALTER TABLE "KAMPANYA" MODIFY ("K_ACIKLAMA" NOT NULL ENABLE);
  ALTER TABLE "KAMPANYA" MODIFY ("K_ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KAMPANYA_TUR
--------------------------------------------------------

  ALTER TABLE "KAMPANYA_TUR" ADD PRIMARY KEY ("KTUR_ID") ENABLE;
  ALTER TABLE "KAMPANYA_TUR" MODIFY ("KTUR_ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KARGO
--------------------------------------------------------

  ALTER TABLE "KARGO" ADD PRIMARY KEY ("KARGO_ID") ENABLE;
  ALTER TABLE "KARGO" MODIFY ("KARGO_DURUMU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KATEGORI
--------------------------------------------------------

  ALTER TABLE "KATEGORI" ADD PRIMARY KEY ("KATEGORI_ID") ENABLE;
  ALTER TABLE "KATEGORI" MODIFY ("KATOGORI_ACIKLAMASI" NOT NULL ENABLE);
  ALTER TABLE "KATEGORI" MODIFY ("KATEGORI_ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULLANICI
--------------------------------------------------------

  ALTER TABLE "KULLANICI" ADD CONSTRAINT "KULLANICI_UK1" UNIQUE ("EMAIL", "TELEFON") ENABLE;
  ALTER TABLE "KULLANICI" ADD PRIMARY KEY ("KULLANICI_ID") ENABLE;
  ALTER TABLE "KULLANICI" MODIFY ("KULLANICI_TURU" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI" MODIFY ("TELEFON" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI" MODIFY ("PAROLA" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI" MODIFY ("AD" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODEME_BILGILERI
--------------------------------------------------------

  ALTER TABLE "ODEME_BILGILERI" ADD CONSTRAINT "CHK_KART" CHECK ( LENGTH(KART_NO) = 16) ENABLE;
  ALTER TABLE "ODEME_BILGILERI" ADD PRIMARY KEY ("ODEME_ID") ENABLE;
  ALTER TABLE "ODEME_BILGILERI" MODIFY ("ADRES_ID" NOT NULL ENABLE);
  ALTER TABLE "ODEME_BILGILERI" MODIFY ("SON_KULLANMA_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "ODEME_BILGILERI" MODIFY ("CVV" NOT NULL ENABLE);
  ALTER TABLE "ODEME_BILGILERI" MODIFY ("KART_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SATICI
--------------------------------------------------------

  ALTER TABLE "SATICI" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "SATICI" MODIFY ("SATICI_ACIKLAMA" NOT NULL ENABLE);
  ALTER TABLE "SATICI" MODIFY ("TEL_NO" NOT NULL ENABLE);
  ALTER TABLE "SATICI" MODIFY ("SADRES_ID" NOT NULL ENABLE);
  ALTER TABLE "SATICI" ADD PRIMARY KEY ("SATICI_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SATICI_YORUM
--------------------------------------------------------

  ALTER TABLE "SATICI_YORUM" MODIFY ("SATICI_ID" NOT NULL ENABLE);
  ALTER TABLE "SATICI_YORUM" MODIFY ("TANIM" NOT NULL ENABLE);
  ALTER TABLE "SATICI_YORUM" MODIFY ("BASLIK" NOT NULL ENABLE);
  ALTER TABLE "SATICI_YORUM" ADD CONSTRAINT "SATICI_YORUM_PK" PRIMARY KEY ("SYORUM_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SEPET
--------------------------------------------------------

  ALTER TABLE "SEPET" ADD CONSTRAINT "SYS_C007055" PRIMARY KEY ("SEPET_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SIPARISLER
--------------------------------------------------------

  ALTER TABLE "SIPARISLER" ADD PRIMARY KEY ("SIPARIS_ID") ENABLE;
  ALTER TABLE "SIPARISLER" MODIFY ("SIPARIS_TARIHI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SIPARIS_TUTAR
--------------------------------------------------------

  ALTER TABLE "SIPARIS_TUTAR" ADD PRIMARY KEY ("STUTAR_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TASIYICI
--------------------------------------------------------

  ALTER TABLE "TASIYICI" ADD PRIMARY KEY ("TASIYICI_ID") ENABLE;
  ALTER TABLE "TASIYICI" MODIFY ("TASIYICI_ADI" NOT NULL ENABLE);
  ALTER TABLE "TASIYICI" MODIFY ("TASIYICI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table URUNLER
--------------------------------------------------------

  ALTER TABLE "URUNLER" ADD PRIMARY KEY ("URUN_ID") ENABLE;
  ALTER TABLE "URUNLER" MODIFY ("URUN_FIYATI" NOT NULL ENABLE);
  ALTER TABLE "URUNLER" MODIFY ("URUN_ACIKLAMASI" NOT NULL ENABLE);
  ALTER TABLE "URUNLER" MODIFY ("URUN_ADI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table URUN_RESIM
--------------------------------------------------------

  ALTER TABLE "URUN_RESIM" ADD CONSTRAINT "URUN_RESIM_PK" PRIMARY KEY ("URUN_RES_ID") ENABLE;
  ALTER TABLE "URUN_RESIM" MODIFY ("URUN_RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table URUNYORUM
--------------------------------------------------------

  ALTER TABLE "URUNYORUM" MODIFY ("URUN_ID" NOT NULL ENABLE);
  ALTER TABLE "URUNYORUM" MODIFY ("ALICI_ID" NOT NULL ENABLE);
  ALTER TABLE "URUNYORUM" ADD CONSTRAINT "URUNYORUM_PK" PRIMARY KEY ("URUNYORUM_ID") ENABLE;
  ALTER TABLE "URUNYORUM" MODIFY ("URUNYORUM_ID" NOT NULL ENABLE);
  ALTER TABLE "URUNYORUM" MODIFY ("BASLIK" NOT NULL ENABLE);
  ALTER TABLE "URUNYORUM" MODIFY ("TANIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table IADE
--------------------------------------------------------

  ALTER TABLE "IADE" ADD CONSTRAINT "IADE_FK1" FOREIGN KEY ("ALICI_ID")
	  REFERENCES "ALICI" ("ALICI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KARGO
--------------------------------------------------------

  ALTER TABLE "KARGO" ADD CONSTRAINT "KARGO_FK1" FOREIGN KEY ("TASIYICI_ID")
	  REFERENCES "TASIYICI" ("TASIYICI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SATICI_YORUM
--------------------------------------------------------

  ALTER TABLE "SATICI_YORUM" ADD CONSTRAINT "SATICI_SATICIYORUMFK" FOREIGN KEY ("SATICI_ID")
	  REFERENCES "SATICI" ("SATICI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEPET
--------------------------------------------------------

  ALTER TABLE "SEPET" ADD CONSTRAINT "URUN_ID_FK" FOREIGN KEY ("URUN_ID")
	  REFERENCES "URUNLER" ("URUN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIPARIS_TUTAR
--------------------------------------------------------

  ALTER TABLE "SIPARIS_TUTAR" ADD CONSTRAINT "SIPARIS_TUTAR_FK1" FOREIGN KEY ("SIPARIS_ID")
	  REFERENCES "SIPARISLER" ("SIPARIS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table URUN_RESIM
--------------------------------------------------------

  ALTER TABLE "URUN_RESIM" ADD CONSTRAINT "URUN_RESIM_FK1" FOREIGN KEY ("URUN_ID")
	  REFERENCES "URUNLER" ("URUN_ID") ENABLE;
