class Books {
  String title;
  String author;
  String type;
  String pages;
  String date;
  String publisher;
  String description;
  String imageUrl;

  Books({
    required this.title,
    required this.author,
    required this.type,
    required this.pages,
    required this.date,
    required this.publisher,
    required this.description,
    required this.imageUrl
  });
}

var bookCatalougeList = [
  Books(
    title: 'Laut Bercerita',
    author: "Leila S. Chudori",
    type: "Novel",
    pages: "400",
    date: "2017",
    publisher: "Kepustakaan Populer Gramedia",
    description: "Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.",
    imageUrl: "https://cf.shopee.co.id/file/a6dee66656b54901ba52740847b8b17c"
  ),

  Books(
      title: 'Sagaras',
      author: "Tere Liye",
      type: "Novel",
      pages: "384",
      date: "2022",
      publisher: "PENERBIT SABAK GRIP",
      description: "Akhirnya. Siapa orang tua Ali dijawab di buku ini. Ali, bertahun-tahun, berusaha memecahkan misteri itu. Paib dan Seli tentu tidak akan membiarkan Ali sendirian, mereka sahabat sejati. Dan jangan lupakan, Batozar alias Master B, dengan segenap kalimat kasar, seolah tidak peduli, dia selalu siap membela. Tapi bagaimana jika misteri itu terhadang tembok kokoh SagaraSe? Dan mereka harus bertarung hidup-mati lima ronde melawan Ksatria SagaraS?",
      imageUrl: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/4/15/17f74419-ce63-450e-80ff-674da1a2e329.jpg"
  ),

  Books(
      title: 'Melangkah',
      author: "Js. Khairen",
      type: "Novel",
      pages: "368",
      date: "2020",
      publisher: "Gramedia Widiasarana Indonesia",
      description: "Listrik padam di seluruh Jawa dan Bali secara misterius! Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.Saat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik!",
      imageUrl: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1584173524l/52366756._SY475_.jpg"
  ),

  Books(
      title: 'Jujutsu Kaisen 06',
      author: "Gege Akutami",
      type: "Manga",
      pages: "200",
      date: "2022",
      publisher: "Elex Media komputindo",
      description: "Tim Kyoto memanfaatkan program pertukaran untuk membunuh Itadori...!! Di sisi lain, Jurei dan Jusoshi yang dipimpin Mahito menyusup masuk ke tempat berlangsungnya acara. Para guru pun bergegas pergi untuk menyelamatkan murid-murid, tapi mereka terhalang oleh Tobari! ",
      imageUrl: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/4/1/cf548c4a-2ab5-4163-bade-3d5024e7b777.jpg"
  ),

  Books(
      title: 'Kimetsu no Yaiba 08',
      author: "Koyoharu Gotouge",
      type: "Manga",
      pages: "200",
      date: "2022",
      publisher: "Elex Media komputindo",
      description: "Bagaimana akhir dari pertarungan antara \"Iblis Penidur\" Enmu melawan Tanjiro yang melancarkan jurus pamungkas Hinokami Kagura `Hekira no Ten`!? Namun, tiba-tiba saja sosok baru muncul di hadapan Tanjiro! Enbashira Kyojuro Rengoku pun beraksi.",
      imageUrl: "https://images-na.ssl-images-amazon.com/images/I/81CcEq7wQPL.jpg"
  ),

  Books(
      title: 'Lukacita',
      author: "Valerie Patkar",
      type: "Novel",
      pages: "452",
      date: "2022",
      publisher: "BHUANA ILMU POPULER",
      description: "Untuk mereka yang berhasil menggapai cita-cita, tetapi masih terluka karenanya. Lukacita bercerita tentang para pemimpi yang dikhianati cita-cita mereka sendiri. Ada seorang pendiri perusahaan startup idealis bernama Javier dan seorang mantan atlet catur penakut bernama Utara.",
      imageUrl: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1641215134l/60016154._SX318_.jpg"
  ),

  Books(
      title: 'Home Sweet Loan',
      author: "Almira Bastari",
      type: "Novel",
      pages: "312",
      date: "2022",
      publisher: "GRAMEDIA PUSTAKA UTAMA",
      description: "Empat orang yang berteman sejak SMA bekerja di perusahaan yang sama meski beda nasib. Di usia 31 tahun, mereka berburu rumah idaman yang minimal… nyerempet Jakarta. Kaluna, pegawai Bagian Umum, yang gajinya tak pernah menyentuh dua digit. Gadis ini kerja sampingan sebagai model bibir, bermimpi membeli rumah demi keluar dari situasi tiga kepala keluarga yang bertumpuk di bawah satu atap. Di tengah perjuangannya menabung, Kaluna dirongrong oleh kekasihnya untuk pesta pernikahan mewah. ",
      imageUrl: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1646470594l/60129536._SX318_.jpg"
  ),

  Books(
      title: 'Bibi Gill',
      author: "Tere Liye",
      type: "Novel",
      pages: "356",
      date: "2022",
      publisher: "PENERBIT SABAK GRIP",
      description: "Bagaimana menjadi petarung terkuat di dunia paralel? Dengan latihan panjang dan pengorbanan. Termasuk kehilangan dan kesedihan. Inilah kisah tentang Bibi Gill, yang sejak kecil berusaha mengalahkan 'monster' dalam hidupnya. Apakah dia bisa menemukan jawaban yang selama ini dia cari? Hei, jika kalian melihat seseorang yang amat sederhana, seperti ibu-ibu penjaga kantin, tukang sapu, sopir ojek online. Jangan buru-buru menilainya memang sesederhana itu. Boleh jadi dia adalah pemilik teknik bertarung paling mematikan di dunia paralel.",
      imageUrl: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/2/3/ce8fccb2-300a-4684-bc41-84aa03a96907.jpg"
  ),

  Books(
      title: 'Pagi di Amerika',
      author: "Hikmat Darmawan",
      type: "Novel",
      pages: "181",
      date: "2015",
      publisher: "Serambi Ilmu Semesta",
      description: "Ketika peluru memasuki jantungnya, gadis itu bersandar ke sebuah loker dan menyaksikan Kyle menembakkan pistol itu lagi dan lagi. Ketika gadis itu meluncur perlahan ke lantai, gadis itu mendapatkan pencerahan seakan sebuah vista, seluruh dunia terpandang dari sebuah puncak gunung. Surga dan dunia terkandung dalam sejarah pikiran : kami sungguh tak cukup mengasihi kyle, dan kyle telah menderita karena nya.",
      imageUrl: "https://ebooks.gramedia.com/ebook-covers/24322/big_covers/ID_SIS2015MTH06PDAM_B.jpg"
  ),

  Books(
      title: 'Yazid bin Abdul Qadir Jawas',
      author: "Dzikir PAGI PETANG dan Sesudah Shalat",
      type: "Religi",
      pages: "126",
      date: "2017",
      publisher: "Pustaka Imam Asy-syafii",
      description: "Allah memerintahkan kita untuk banyak berdzikir ketika pagi dan petang. Demikian pula ketika selesai mengerjakan shalat Fardhu, kita juga disyari'atkan untuk berdzikir kepada-Nya juga. Lalu bagaimanakah dan apa saja dzikir-dzikir yang telah diajarkan oleh Rasulullah? Dzikir-dzikir yang dicantumkan di dalam buku ini bersumber dari Rasulullah karena disebutkan di dalam kita-kitab hadits yang shahih. Jika diamailkan sungguh bermanfaat karena selain berdzikir kepada Allah, Anda juga turut menghidupkan Sunnah Rasulullah dalam berdzikir di saat pagi, petang, dan sesudah shalat fardhu.",
      imageUrl: "https://cf.shopee.co.id/file/9c011d3cdc6081ea77cf381c92e83a9a"
  ),
];