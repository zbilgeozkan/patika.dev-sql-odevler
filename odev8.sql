-- 1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee (id, name, birthday, email) VALUES (1, 'John Doe', '1990-01-01', 'john.doe@example.com');
INSERT INTO employee (id, name, birthday, email) VALUES (2, 'Jane Smith', '1985-05-15', 'jane.smith@example.com');
.
.
.
  
-- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
  -- name sütununa göre email güncelleme
UPDATE employee SET email = 'updated.email@example.com' WHERE name = 'John Doe';

-- id sütununa göre name güncelleme
UPDATE employee SET name = 'Updated Name' WHERE id = 2;

-- birthday sütununa göre name güncelleme
UPDATE employee SET name = 'Another Name' WHERE birthday = '1985-05-15';

-- email sütununa göre birthday güncelleme
UPDATE employee SET birthday = '1995-12-12' WHERE email = 'jane.smith@example.com';

-- id sütununa göre email güncelleme
UPDATE employee SET email = 'new.email@example.com' WHERE id = 1;


-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
  -- id sütununa göre silme
DELETE FROM employee WHERE id = 1;

  -- name sütununa göre silme
DELETE FROM employee WHERE name = 'Jane Smith';

  -- birthday sütununa göre silme
DELETE FROM employee WHERE birthday = '1990-01-01';

  -- email sütununa göre silme
DELETE FROM employee WHERE email = 'john.doe@example.com';

  -- id sütununa göre silme
DELETE FROM employee WHERE id = 2;
