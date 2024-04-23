
List<Product> product = [
  Product(
      name: '2-Pack Crewneck T-Shirts - Black',
      imageUrls: [
        'https://images-na.ssl-images-amazon.com/images/I/91ieWhKe9AL._AC_UX569_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/71UqhKT2MDL._AC_UX466_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/81K7OAepB9L._AC_UX466_.jpg',
        'https://images-na.ssl-images-amazon.com/images/I/812T%2Bu00R4L._AC_UX466_.jpg'
      ],
      cost: 12.99,
      category: mensCategory,
      productType: 'shirts',
      sizes: ['S', 'M', 'L', 'XL']),
  Product(
    name: 'Short Sleeve Henley - Blue',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/81tpGc13OgL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/81oNSlos2tL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/819ea2vQIjL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91SH0RB-8dL._AC_UY606_.jpg'
    ],
    cost: 17.99,
    category: mensCategory,
    productType: 'shirts',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Polo RL V-Neck',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/61m68nuygSL._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61URnzIoCPL._AC_UX522_.jpg',
    ],
    cost: 24.99,
    category: mensCategory,
    productType: 'shirts',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Athletic-Fit Stretch Jeans',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg',
    ],
    cost: 29.99,
    category: mensCategory,
    productType: 'jeans',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
  Product(
    name: "Levi's Original Jeans",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg',
    ],
    cost: 39.99,
    category: mensCategory,
    productType: 'jeans',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
  Product(
    name: '2-Pack Performance Shorts',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg',
    ],
    cost: 19.99,
    category: mensCategory,
    productType: 'shorts',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
  Product(
    name: "Levi's Cargo Shorts",
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/I/915Io2JEUPL._AC_UX679_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/91WJgn0FNkL._AC_UX679_.jpg',
    ],
    cost: 29.99,
    category: mensCategory,
    productType: 'shorts',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
  ),
];

class Product {
  final String name;
  final List<String> imageUrls;
  final double cost;
  final String? description;
  final List<String>? sizes;

  /// Which overall category this product belongs in. e.g - Men, Women, Pets, etc.
  final Category category;

  /// Represents type of product such as shirt, jeans, pet treats, etc.
  final String productType;

  Product(
      {required this.name,
      required this.imageUrls,
      required this.cost,
      this.description,
      this.sizes,
      required this.category,
      required this.productType});
}

class Category {
  final String title;
  final List<String> selections;

  Category({required this.title, required this.selections});
}

Category mensCategory = Category(title: 'Men', selections: [
  'Shirts',
  'Jeans',
  'Shorts',
]);
Category womensCategory = Category(title: 'Women', selections: [
  'Shirts',
  'Jeans',
]);
Category petsCategory = Category(title: 'Pets', selections: [
  'Toys',
  'Treats',
]);

Category kidsCategory = Category(title: "no comment", selections: []);


