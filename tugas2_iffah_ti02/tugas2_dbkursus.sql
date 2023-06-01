-- use database
USE db_kursus;

-- INNER JOIN table (materi + kategori)
SELECT materi.id, materi.kode, materi.nama_materi, materi.deskripsi, materi.durasi_jam, materi.biaya,
kategori.nama AS kategori
FROM materi
INNER JOIN kategori ON materi.kategori_id = kategori.id;

-- INNER JOIN table (kategori + materi + pengajar + peserta + penjadwalan_kelas)
SELECT *
FROM kategori, materi, pengajar, peserta, penjadwalan_kelas
INNER JOIN kategori ON penjadwalan_kelas.kategori_id = kategori.id;
INNER JOIN materi ON penjadwalan_kelas.materi_id = materi.id;
INNER JOIN pengajar ON penjadwalan_kelas.pengajar_id = pengajar.id;

-- -- INNER JOIN table memakai alias (kategori + materi + pengajar + peserta + penjadwalan_kelas)
SELECT *
FROM kategori, materi, pengajar, peserta, penjadwalan_kelas AS jadwal_kursus
INNER JOIN kategori ON penjadwalan_kelas.kategori_id = kategori.id;
INNER JOIN materi ON penjadwalan_kelas.materi_id = materi.id;
INNER JOIN pengajar ON penjadwalan_kelas.pengajar_id = pengajar.id;
