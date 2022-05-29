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
    imageUrl: "https://cdn.gramedia.com/uploads/items/9786024246945_Laut-Bercerita.jpg"
  ),

  Books(
      title: 'Sagaras',
      author: "Tere Liye",
      type: "Novel",
      pages: "384",
      date: "2022",
      publisher: "PENERBIT SABAK GRIP",
      description: "Akhirnya. Siapa orang tua Ali dijawab di buku ini. Ali, bertahun-tahun, berusaha memecahkan misteri itu. Paib dan Seli tentu tidak akan membiarkan Ali sendirian, mereka sahabat sejati. Dan jangan lupakan, Batozar alias Master B, dengan segenap kalimat kasar, seolah tidak peduli, dia selalu siap membela. Tapi bagaimana jika misteri itu terhadang tembok kokoh SagaraSe? Dan mereka harus bertarung hidup-mati lima ronde melawan Ksatria SagaraS?",
      imageUrl: "https://cdn.gramedia.com/uploads/items/sagaras.jpeg"
  ),

  Books(
      title: 'Melangkah',
      author: "Js. Khairen",
      type: "Novel",
      pages: "368",
      date: "2020",
      publisher: "Gramedia Widiasarana Indonesia",
      description: "Listrik padam di seluruh Jawa dan Bali secara misterius! Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.Saat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik!",
      imageUrl: "https://cdn.gramedia.com/uploads/items/9786020523316_Melangkah_UV_Spot_R4-1.jpg"
  ),

];