 <h1 align="center">💻 Kodlama Dünyası - Veritabanı Projesi</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Dil-SQL-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/Veritabanı-MSSQL%20Server-green?style=flat-square" />
  <img src="https://img.shields.io/badge/Proje-Tamamlanmış-success?style=flat-square" />
</p>

---

## 📌 Proje Hakkında

Bu proje, temel bir e-ticaret uygulamasının veritabanı yapısını modellemek amacıyla oluşturulmuştur. Kullanıcı, ürün, kategori, sipariş gibi temel kavramlar için tablolar oluşturulmuş, ilişkisel yapı kurulmuş ve çeşitli SQL işlemleri (CRUD + JOIN + Stored Procedure) uygulanmıştır.

---

## ⚙️ Kullanılan Yapılar

- *MSSQL Server*  
- *SQL Sorguları*  
- *INNER / LEFT JOIN*  
- *Stored Procedure (SP)*  
- *Veritabanı Normalizasyonu*  
- *İlişkisel Tablolar*  

---

## 🧩 Tablolar

| Tablo Adı           | Açıklama |
|---------------------|----------|
| Kullanicilar      | Kullanıcı bilgilerini tutar |
| Urunler           | Ürün detaylarını içerir |
| Kategoriler       | Ürün kategorileri |
| Sepet             | Kullanıcıların ürünleri eklediği geçici liste |
| SepetUrunleri     | Sepetteki ürünlerin detayları |
| Siparisler        | Kullanıcının verdiği siparişler |
| Adresler          | Teslimat ve fatura adres bilgileri |
| Yorumlar          | Ürünlere yapılan yorumlar |
| Favoriler         | Kullanıcının favoriye eklediği ürünler |

---

## 📁 Dosya Yapısı

│
├── KodlamaDunyasi.sql     → Veritabanı script dosyası (tablolar + veriler)
├── README.md              → Proje açıklaması (bu dosya)


## 💡 Yapılan SQL İşlemleri

- SELECT, INSERT, UPDATE, DELETE  
- INNER JOIN, LEFT JOIN örnekleri  
- Stored Procedure ile ürün listeleme ve ekleme  
- Alt sorgular ve koşullu filtrelemeler

---

## 🛠️ Nasıl Kullanılır?

1. KodlamaDunyasi.sql dosyasını SQL Server Management Studio'da aç  
2. Script'i çalıştırarak veritabanı yapısını oluştur  
3. SELECT * FROM Urunler gibi sorgularla test et  
4. İsteğe göre prosedürleri çalıştır:  
   ```sql
   EXEC sp_UrunEkle 'Kulaklık', 299.99, 1;
   EXEC sp_UrunListele;
