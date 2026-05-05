CREATE DATABASE Pharmacy;
USE Pharmacy;


CREATE TABLE Pharmacy_Inventory (
    Inventory_ID INT AUTO_INCREMENT PRIMARY KEY, 
    Drug_Name VARCHAR(255),                      
    Batch_Number VARCHAR(50),                
    Expiry_Date DATE,                     
    Quantity INT                                
);



CREATE INDEX idx_drug_expiry ON Pharmacy_Inventory(Drug_Name, Expiry_Date);



EXPLAIN SELECT * FROM Pharmacy_Inventory 
WHERE Drug_Name = 'Paracetamol' AND Expiry_Date <= '2026-12-31';

-- LIKE 'Para%'VẪN HOẠT ĐỘNG Database tìm được các mục bắt đầu bằng "Para".
-- LIKE '%cetamol%': Index BỊ VÔ HIỆU HÓA.
-- Vì dấu % nằm ở đầu, Database không biết chuỗi bắt đầu từ đâu để tra cứu trong cây B-Tree