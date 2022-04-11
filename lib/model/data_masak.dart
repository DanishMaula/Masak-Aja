class DataMasak {
  String name;
  String description;
  String time;
  String recipe;
  String image;
  String title;


  DataMasak({
    required this.name,
    required this.description,
    required this.time,
    required this.recipe,
    required this.image,
    required this.title,

  });
}

var dataMasakList = [
  DataMasak(
    title : 'Asian',
    name : 'Ayam Gulai',
    image: "images/ayam_gulai.png",
    description : 'Gulai adalah masakan Minang berbahan baku ayam atau daging atau ikan. Kemudian dimasak dengan aneka rempah dan santan kelapa segar.',
    time : '60 Menit',
    recipe : '1 ekor ayam \n300 ml santan murni \n700 ml santan instan \n1 lembar daun kunyit \n3 lembar daun jeruk'
        ' \n2 lembar daun salam \n1 buah asam kandis \n1 sdm garam \n1 sdm gula \n5 siung bawang putih \n12 siung bawang merah \n10 buah cabai merah keriting'
        ' \n5 buah cabai rawit \n4 butir kemiri \n1 sdt ketumbar \n2 ruas kunyit \n2 sdm minyak goreng',
  ),
  DataMasak(
    title: 'Eastern',
      name: 'Ayam Bakar',
      description: 'Ayam bakar adalah masakan Minang yang terbuat dari daging ayam yang dibakar. Ayam bakar biasanya dibuat dengan cara memasaknya dengan menggunakan bumbu bumbu yang berbeda-beda.',
      time: '60 Menit',
      recipe: '1 ekor ayam \n1 sdm minyak goreng \n1 sdm garam \n1 sdm gula \n1 sdm ketumbar \n1 sdm air \n1 sdm daun jeruk \n1 sdm daun salam \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit '
              '\n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit '
              '\n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit \n1 sdm daun kunyit',
    image: 'images/ayambakar.jpg',
  ),
  DataMasak(
    title: 'Western',
    name : 'Cheese Burger',
    image: "images/cheeseb.png",
    description : '',
    time : '60 Menit',
    recipe : '1 ekor ayam \n300 ml santan murni \n700 ml santan instan \n1 lembar daun kunyit \n3 lembar daun jeruk'
        ' \n2 lembar daun salam \n1 buah asam kandis \n1 sdm garam \n1 sdm gula \n5 siung bawang putih \n12 siung bawang merah \n10 buah cabai merah keriting'
        ' \n5 buah cabai rawit \n4 butir kemiri \n1 sdt ketumbar \n2 ruas kunyit \n2 sdm minyak goreng',
  ),
  DataMasak(
    title: 'italy',
    name : 'Steak',
    image: "images/beefs.png",
    description : '',
    time : '60 Menit',
    recipe : '1 ekor ayam \n300 ml santan murni \n700 ml santan instan \n1 lembar daun kunyit \n3 lembar daun jeruk'
        ' \n2 lembar daun salam \n1 buah asam kandis \n1 sdm garam \n1 sdm gula \n5 siung bawang putih \n12 siung bawang merah \n10 buah cabai merah keriting'
        ' \n5 buah cabai rawit \n4 butir kemiri \n1 sdt ketumbar \n2 ruas kunyit \n2 sdm minyak goreng',
  ),
  DataMasak(
    title: '',
    name: 'Onigiri',
    image: 'images/sotop.jpg',
    description: 'makanan Jepang yang terbuat dari nasi putih yang dibentuk menjadi bentuk segitiga atau silinder dan sering dibungkus dengan nori.',
    time: '',
    recipe: '',
  ),
  DataMasak(
    title: '',
    name: 'Salad',
    image: 'images/sayur.jpg',
    description: 'hidangan yang terdiri dari campuran, sebagian besar bahan alami dengan setidaknya satu bahan mentah.',
    time: '',
    recipe: '',
  ),
  DataMasak(
    title: '',
    name: 'Soto Padang',
    image: 'images/rendang.jpg',
    description: 'sejenis soto bening tanpa santan , yang biasanya berisi daging sapi , bawang , kentang , dan mie bihun putih sebagai bahan utamanya.',
    time: '',
    recipe: '',
  ),
  DataMasak(
    title: '',
    name: 'Kebab',
    image: 'images/kebab.jpg',
    description: 'Kebab terdiri dari daging yang dipotong atau digiling, terkadang dengan sayuran, dan berbagai pelengkap lainnya sesuai dengan resep tertentu.',
    time: '',
    recipe: '',
  ),
];



