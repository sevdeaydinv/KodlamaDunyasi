Proje Açıklaması
Kodlama Dünyası, yazılım geliştirme ve kodlama öğrenmek isteyenler için hazırlanmış kapsamlı bir eğitim ve kaynak platformudur. Farklı seviyelerdeki yazılımcılara rehberlik eden platform, temel derslerden ileri düzey projelere kadar geniş bir içerik sunar.

Özellikler

Programlama dillerine ve yazılım araçlarına yönelik rehber içerikler
Temel ve ileri düzey eğitimler
Ücretli ve ücretsiz eğitim içerikleri
Kullanıcı rolleri: Kullanıcı, Admin, Satıcı (Opsiyonel)
Güvenli ödeme ve sipariş takibi
Kullanıcı aktiviteleri ve içerik performansı raporları

Kurulum Adımları

1. Projeyi Klonlayın

Terminal veya komut satırında aşağıdaki komutu çalıştırın:

git clone https://github.com/gzmycs/KodlamaDunyasi.git

Ardından proje dizinine gidin:

cd KodlamaDunyasi

2. Gereksinimleri Yükleyin

.NET Core SDK’nın kurulu olduğundan emin olun. Yüklemek için:
🔗 Resmi .NET Core İndirme Sayfası

Bağımlılıkları yüklemek için:

dotnet restore

3. Veritabanı Ayarları

Eğer veritabanı kullanıyorsanız, appsettings.json dosyasını yapılandırın. Varsayılan olarak SQL Server kullanılmıştır.

Veritabanını oluşturmak için:

dotnet ef database update

4. Uygulamayı Çalıştırın

dotnet run

Uygulama çalıştığında tarayıcınızda aşağıdaki adresi ziyaret edebilirsiniz:
👉 http://localhost:5000

Kullanılan Teknolojiler
	•	ASP.NET Core 5.0
	•	C#
	•	Entity Framework Core
	•	SQL Server
	•	Bootstrap & CSS

Katkıda Bulunma

Projeye katkıda bulunmak isterseniz:
	1.	Depoyu forklayın.
	2.	Geliştirmelerinizi yapın.
	3.	Pull Request gönderin.

Lisans

Bu proje MIT Lisansı ile lisanslanmıştır.
