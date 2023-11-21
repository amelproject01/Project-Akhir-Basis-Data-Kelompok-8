CREATE TABLE NOTA (
no_nota VARCHAR(5) NOT NULL PRIMARY KEY,
tanggal_masuk VARCHAR(10) NOT NULL,
tanggal_keluar VARCHAR(10) NOT NULL,
jenis_sepeda VARCHAR(50) NOT NULL,
nomor_polisi VARCHAR(10) NOT NULL,
nama_pelanggan VARCHAR(50) NOT NULL,
nama_toko VARCHAR(100) NOT NULL,
nama_pegawai VARCHAR(50) NOT NULL,
total VARCHAR(50) NOT NULL,
)

CREATE TABLE PELANGGAN (
nama_pelanggan VARCHAR(100) NOT NULL,
telepon_pelanggan VARCHAR(15) NOT NULL,
)

CREATE TABLE TOKO (
nama_toko VARCHAR(100) NOT NULL,
alamat_toko VARCHAR(100) NOT NULL,
telepon_toko VARCHAR(15) NOT NULL
)

CREATE TABLE KODE_BARANG (
kode_barang VARCHAR(5) NOT NULL PRIMARY KEY,
nama_barang VARCHAR(50) NOT NULL,
jumlah_barang VARCHAR(10) NOT NULL,
harga_satuan VARCHAR(50) NOT NULL
)

CREATE TABLE TRANSAKSI (
no_nota VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES NOTA (no_nota),
kode_barang VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES KODE_BARANG (kode_barang),
nama_barang VARCHAR(50) NOT NULL,
jumlah_barang VARCHAR(10) NOT NULL,
subtotal VARCHAR(50) NOT NULL
)

INSERT INTO NOTA (no_nota, tanggal_masuk, tanggal_keluar, jenis_sepeda, nomor_polisi,
nama_pelanggan, nama_toko, nama_pegawai, total) VALUES
('NOTA-001', '1/12/2023', '2/12/2023', 'Yamaha Aerox 155 VVA', 'N 1234 AA',
'Budi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '11000'),

('NOTA-002', '1/12/2023', '6/12/2023', 'Honda Scoopy', 'N 2345 AB',
'Ani', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '28000'),

('NOTA-003', '2/12/2023', '3/12/2023', 'Honda PCX160', 'N 3456 AC',
'Caca', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '6000'),

('NOTA-004', '2/12/2023', '7/12/2023', 'Honda Vario 125', 'N 4567 AD',
'Dodi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '12000'),

('NOTA-005', '2/12/2023', '7/12/2023', 'Yamaha Mio M3', 'N 5678 AE',
'Eka', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '400000'),

('NOTA-006', '3/12/2023', '4/12/2023', 'Honda Beat', 'N 6789 AF',
'Fafa', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '22000'),

('NOTA-007', '3/12/2023', '8/12/2023', 'Yamaha Nmax', 'N 7890 AG',
'Gaga', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '28000'),

('NOTA-008', '4/12/2023', '5/12/2023', 'Honda Vario 125', 'N 8901 AH',
'Hana', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '6000'),

('NOTA-009', '4/12/2023', '9/12/2023', 'Yamaha Aerox 155 VVA', 'N 9012 AI',
'Ika', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '8000'),

('NOTA-010', '5/12/2023', '6/12/2023', 'Honda Scoopy', 'N 0123 AJ',
'Jaja', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '400000'),

('NOTA-011', '5/12/2023', '10/12/2023', 'Yamaha Mio M3', 'N 1234 AK',
'Kiki', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '22000'),

('NOTA-012', '6/12/2023', '7/12/2023', 'Honda Beat', 'N 2345 AL', 
'Lala', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Sisil', '56000'),

('NOTA-013', '6/12/2023', '11/12/2023', 'Honda PCX160', 'N 3456 AM', 
'Mimi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '6000'),

('NOTA-014', '7/12/2023', '8/12/2023', 'Yamaha Nmax', 'N 4567 AN', 
'Nana', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '8000'),

('NOTA-015', '7/12/2023', '12/12/2023', 'Honda Vario 125', 'N 5678 AO', 
'Ola', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '400000'),

('NOTA-016', '8/12/2023', '9/12/2023', 'Yamaha Aerox 155 VVA', 'N 6789 AP', 
'Pipi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '22000'),

('NOTA-017', '8/12/2023', '13/12/2023', 'Honda Scoopy', 'N 7890 AQ', 
'Qiqi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '28000'),

('NOTA-018', '9/12/2023', '10/12/2023', 'Yamaha Mio M3', 'N 8901 AR', 
'Rara', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '6000'),

('NOTA-019', '9/12/2023', '14/12/2023', 'Honda Beat', 'N 9012 AS', 
'Sasa', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '4000'),

('NOTA-020', '10/12/2023', '11/12/2023', 'Honda PCX160', 'N 0123 AT', 
'Titi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Amel', '400000'),

('NOTA-021', '10/12/2023', '15/12/2023', 'Yamaha Nmax', 'N 1234 AU', 
'Ucu', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '11000'),

('NOTA-022', '11/12/2023', '12/12/2023', 'Honda Vario 125', 'N 2345 AV',
'Vivi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '28000'),

('NOTA-023', '11/12/2023', '16/12/2023', 'Yamaha Aerox 155 VVA', 'N 3456 AW', 
'Wawa', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '6000'),

('NOTA-024', '12/12/2023', '13/12/2023', 'Honda Scoopy', 'N 4567 AX',
'Xixi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '4000'),

('NOTA-025', '12/12/2023', '17/12/2023', 'Yamaha Mio M3', 'N 5678 AY',
'Yaya', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '400000'),

('NOTA-026', '13/12/2023', '14/12/2023', 'Honda Beat', 'N 6789 AZ', 
'Zaza', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Lia', '11000'),

('NOTA-027', '13/12/2023', '18/12/2023', 'Honda PCX160', 'N 7890 BA', 
'Amel', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '14000'),

('NOTA-028', '14/12/2023', '15/12/2023', 'Yamaha Nmax', 'N 8901 BB', 
'Yafi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '6000'),

('NOTA-029', '14/12/2023', '15/12/2023', 'Honda Vario 125', 'N 9012 BC', 
'Riri', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '4000'),

('NOTA-030', '15/12/2023', '16/12/2023', 'Yamaha Aerox 155 VVA', 'N 0123 BD',
'Sisi', 'Gayang Maren Spesialis Servis Sepeda Motor', 'Dinda', '400000');

INSERT INTO PELANGGAN (nama_pelanggan, telepon_pelanggan) VALUES
('Budi', '081234567890'),
('Ani','081234567891'),
('Caca', '081234567892'),
('Dodi', '081234567893'),
('Eka', '081234567894'),
('Fafa', '081234567895'),
('Gaga', '081234567896'),
('Hana', '081234567897'),
('Ika', '081234567898'),
('Jaja', '081234567899'),
('Kiki', '081234567900'),
('Lala', '081234567901'),
('Mimi', '081234567902'),
('Nana', '081234567903'),
('Ola', '081234567904'),
('Pipi', '081234567905'),
('Qiqi', '081234567906'),
('Rara', '081234567907'),
('Sasa', '081234567908'),
('Titi', '081234567909'),
('Ucu', '081234567910'),
('Vivi', '081234567911'),
('Wawa', '081234567912'),
('Xixi', '081234567913'),
('Yaya', '081234567914'),
('Zaza', '081234567915'),
('Amel', '081234567916'),
('Yafi', '081234567917'),
('Riri', '081234567918'),
('Sisi', '081234567919');

INSERT INTO TOKO (nama_toko,alamat_toko,telepon_toko) VALUES
('Gayang Maren Spesialis Servis Sepeda Motor', 'Jalan Candi Panggung Barat No. 1 Malang', '0852723334021')

INSERT INTO KODE_BARANG (kode_barang, nama_barang, jumlah_barang, harga_satuan) VALUES
('K01', 'Kabel Rem', 1, 11000),
('L05', 'Lampu Sepeda', 2, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 3, 4000),
('K09', 'Kopling Sepeda', 1, 400000),
('K01', 'Kabel Rem', 2, 11000),
('L05', 'Lampu Sepeda', 2, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 2, 4000),
('K09', 'Kopling Sepeda', 1, 400000),
('K01', 'Kabel Rem', 2, 11000),
('L05', 'Lampu Sepeda', 4, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 2, 4000),
('K09', 'Kopling Sepeda', 1, 400000),
('K01', 'Kabel Rem', 2, 11000),
('L05', 'Lampu Sepeda', 2, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 1, 4000),
('K09', 'Kopling Sepeda', 1, 400000),
('K01', 'Kabel Rem', 1, 11000),
('L05', 'Lampu Sepeda', 2, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 1, 4000),
('K09', 'Kopling Sepeda', 1, 400000),
('K01', 'Kabel Rem', 1, 11000),
('L05', 'Lampu Sepeda', 1, 14000),
('B08', 'Bel Sepeda', 1, 6000),
('K02', 'Kabel Gigi', 1, 4000),
('K09', 'Kopling Sepeda', 1, 400000),

INSERT INTO TRANSAKSI (no_nota, kode_barang, nama_barang, jumlah_barang, subtotal) VALUES
('NOTA-001', 'K01', 'Kabel Rem', 1, 11000),
('NOTA-002', 'L05', 'Lampu Sepeda', 2, 28000),
('NOTA-003', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-004', 'K02', 'Kabel Gigi', 3, 12000),
('NOTA-005', 'K09', 'Kopling Sepeda', 1, 400000),
('NOTA-006', 'K01', 'Kabel Rem', 2, 22000),
('NOTA-007', 'L05', 'Lampu Sepeda', 2, 28000),
('NOTA-008', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-009', 'K02', 'Kabel Gigi', 2, 8000),
('NOTA-010', 'K09', 'Kopling Sepeda', 1, 400000),
('NOTA-011', 'K01', 'Kabel Rem', 2, 22000),
('NOTA-012', 'L05', 'Lampu Sepeda', 4, 56000),
('NOTA-013', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-014', 'K02', 'Kabel Gigi', 2, 8000),
('NOTA-015', 'K09', 'Kopling Sepeda', 1, 400000),
('NOTA-016', 'K01', 'Kabel Rem', 2, 22000),
('NOTA-017', 'L05', 'Lampu Sepeda', 2, 28000),
('NOTA-018', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-019', 'K02', 'Kabel Gigi', 1, 4000),
('NOTA-020', 'K09', 'Kopling Sepeda', 1, 400000),
('NOTA-021', 'K01', 'Kabel Rem', 1, 11000),
('NOTA-022', 'L05', 'Lampu Sepeda', 2, 28000),
('NOTA-023', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-024', 'K02', 'Kabel Gigi', 1, 4000),
('NOTA-025', 'K09', 'Kopling Sepeda', 1, 400000),
('NOTA-026', 'K01', 'Kabel Rem', 1, 11000),
('NOTA-027', 'L05', 'Lampu Sepeda', 1, 14000),
('NOTA-028', 'B08', 'Bel Sepeda', 1, 6000),
('NOTA-029', 'K02', 'Kabel Gigi', 1, 4000),
('NOTA-030', 'K09', 'Kopling Sepeda', 1, 400000);
