-- 1. Sipariþ Ýþleme Saklý Prosedürü
CREATE PROCEDURE sp_ProcessOrder
    @UserID INT,
    @AddressID INT,
    @PaymentMethod VARCHAR(50)
AS
BEGIN
    PRINT 'Stok kontrolü yapýlýyor...';
    PRINT 'Sipariþ oluþturuluyor...';
    PRINT 'Ödeme iþlemi gerçekleþtiriliyor...';
    PRINT 'Stok güncelleniyor...';
END;
GO

-- 2. Stok Güncelleme Tetikleyicisi
CREATE TRIGGER tr_UpdateStock
ON dbo.[SipariþDetaylarý]  -- Türkçe karakterler için köþeli parantez kullanýldý
AFTER INSERT
AS
BEGIN
    PRINT 'Stok güncelleme iþlemi gerçekleþtiriliyor...';
    PRINT 'Kritik stok kontrolü yapýlýyor...';
    PRINT 'Bildirim gönderiliyor...';
END;
GO

-- 3. Sipariþ Durumu Güncelleme Prosedürü
CREATE PROCEDURE sp_UpdateOrderStatus
    @OrderID INT,
    @NewStatus VARCHAR(50)
AS
BEGIN
    PRINT 'Sipariþ durumu güncelleniyor...';
    PRINT 'Log kaydý ekleniyor...';
    PRINT 'Bildirim gönderiliyor...';
END;
GO

-- 4. Satýþ Raporu Saklý Prosedürü
CREATE PROCEDURE sp_SalesReport
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    PRINT 'Satýþ istatistikleri hesaplanýyor...';
    PRINT 'Ürün performansý analiz ediliyor...';
    PRINT 'Kategori analizi yapýlýyor...';
END;
GO

-- 5. Stok Raporu Saklý Prosedürü
CREATE PROCEDURE sp_StockReport
AS
BEGIN
    PRINT 'Stok durumu raporlanýyor...';
    PRINT 'Kritik seviyeler analiz ediliyor...';
    PRINT 'Stok maliyetleri hesaplanýyor...';
END;
GO