-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 01.37
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_20_020910_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(10, 'daWph5JrrRU2kZxz8rwV0BtO7xAO5KicmkRlAJJj.jpg', 'Lumpia', '<p>Lumpia adalah kuliner khas Kota Semarang sekaligus produk akulturasi budaya Jawa- Dari namanya, lumpia Semarang&nbsp;<strong>berasal dari gabungan kata &#39;lun&#39; yang artinya gulung [Bahasa Jawa] dan pia yang artinya kue [Bahasa Hokkien]</strong>. Sejak tahun 2014, lumpia Semarang masuk sebagai Warisan Budaya Tak Benda Indonesia.</p>', '2023-10-19 23:51:56', '2023-10-19 23:51:56'),
(11, '4ODAzFmPW5wbTjfmETjGBpmZWsmSmhsCJRgFMULw.jpg', 'Rawon', '<p>sejarah mengenai rawon&nbsp;<strong>tercantum dalam prasasti Taji yang ada sejak 901 Masehi</strong>. Prasasti ini, ditemukan di dekat Ponorogo, Jawa Timur. Dimana pada prasasti ini, rawon dituliskan dengan sebutan rarawwan (sayur rawon). Seiring berkembangnya zaman, rawon semakin dikenal di kalangan masyarakat luas.</p>', '2023-10-19 23:54:53', '2023-10-19 23:54:53'),
(12, 'oXHVzulBsHXYmsRak7y1dwmRc41k1YC9G2nt6jcW.jpg', 'Rendang', '<p>Asal usul rendang ditelusuri&nbsp;<strong>berasal dari tanah Minangkabau, Sumatera Barat</strong>. Bagi masyarakat Minang, rendang sudah ada sejak dahulu dan telah menjadi masakan tradisi yang dihidangkan dalam berbagai acara adat dan hidangan keseharian.</p>', '2023-10-19 23:56:07', '2023-10-19 23:56:07'),
(13, 'v49ARzJLpVu4iugAvIKDpleVbXxMIsWuHNQBs9wT.jpg', 'Sotoo.', '<p>Soto&nbsp;<strong>pertama kali dikenal di pesisir pantai utara jawa pada abad ke-19 Masehi, sebagai masakan berkuah dengan potongan daging atau jeroan</strong>. Menurut Denys Lombard dalam bukunya yang berjudul Nusa Jawa 2: Silang Budaya Jaringan Asia (1996), soto mulai dikenal oleh masyarakat Indonesia karena imigran dari Cina.</p>', '2023-10-19 23:58:44', '2023-11-23 19:36:34'),
(24, 'xX1gaFS6TFPsvw6eh7Z1ynTwbdq4KhsqbsDKTiZw.jpg', 'Satee', '<p>Sate&nbsp;<strong>ditengarai muncul di abad ke-19, diciptakan oleh pedagang makanan jalanan di pulau Jawa</strong>. Pada masa itu, banyak pedagang muslim Tamil dan Gujarat dari India yang datang ke Indonesia dan memberi pengaruh budaya juga kuliner. Dari Ponorogo inilah, sate pun menjadi makin populer dan menyebar ke seluruh nusantara</p>', '2023-11-30 17:01:13', '2023-12-03 05:01:30'),
(25, 'aHPtQ3shLBSLKTiJNthkgZr7npZnAsDwHs3BCbul.jpg', 'Papeda', '<p>Papeda adalah makanan berupa bubur sagu khas&nbsp;<strong>Maluku dan Papua</strong>&nbsp;yang biasanya disajikan dengan ikan tongkol atau bubara yang dibumbui dengan kunyit. Papeda berwarna putih dan bertekstur lengket menyerupai lem dengan rasa yang tawar. Papeda merupakan makanan yang kaya serat, rendah kolesterol, dan cukup bernutrisi.</p>', '2023-12-03 05:18:39', '2023-12-03 05:20:24'),
(26, 'sulwD5kdu8BmRlJWzaphVwqqGJLl0MV7mCpCCHDg.jpg', 'Nasi Pecel', '<p>Pecel merupakan&nbsp;<strong>makanan kuno yang sudah ada sejak abad ke-9 masehi, era kerajaan Mataram Kuno dibawah pemerintahan raja Rakai Watukura Dyah Balitung (898-930 M) yang tercatat dalam Kakawin Ramayana</strong>.</p>', '2023-12-03 05:24:16', '2023-12-03 05:24:16'),
(27, 'LSAPieRH8Y5J4VnHKoaHvzYNEc0fLJnkBhhlttAh.jpg', 'Baksoo', '<p>Sejarah bakso&nbsp;<strong>berasal dari cerita di masa Dinasti Ming (1368-1644), Tiongkok (sekarang)</strong>. Konon, seorang pemuda bernama Meng Bo ingin memasakkan daging empuk dan lembut untuk sang ibu. Ia terinspirasi dari kue mochi, camilan yang terbuat dari ketan yang ditumbuk agar halus, sehingga makanan ini terasa lembut.</p>', '2023-12-03 05:26:33', '2023-12-10 05:27:37'),
(28, 'xs6e4KmnIbALZNvjYBVkT9mdVRAI9z7cZIACpEW0.jpg', 'lumpia', '<p>lumpia khas jawa</p>', '2023-12-10 05:32:45', '2023-12-10 05:33:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'arya', 'aryaff41@gmail.com', NULL, '$2y$10$ubJq3IAiQ7s0mfG.HibDseAD9Rj9Svy6JhOJzQL3xIU1/F5m3KPD2', NULL, '2023-11-23 18:49:19', '2023-11-23 18:49:19'),
(3, 'arya endsha wira setia', 'aryasetia82@smp.belajar.id', NULL, '$2y$10$yfLO9Di/p0.uH4zOefIVROSVN9Zb32SY77OZKADPD/tyPvAsCTJze', NULL, '2023-11-23 23:04:22', '2023-11-23 23:04:22'),
(5, 'aan fatkhurrahman', 'aan@gmail.com', NULL, '$2y$10$wZNM0aV6nA94m2I5/g4TAu3jlj6kR7rUnLXO6vvoXmZX4T0nBgarq', NULL, '2023-11-24 01:01:04', '2023-11-24 01:01:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
