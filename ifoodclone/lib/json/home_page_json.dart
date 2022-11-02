const List menu = ["Delivery", "Retirar", "Reservar"];
const List peopleFeedback = [
  "Rápido e confiável. (12)",
  "Gostoso e custo favorável. (11)",
  "O pedido veio como eu havia imaginado! (11)"
];
const List categories = [
  {"img": "assets/images/pickup.svg", "name": "Retirar"},
  {"img": "assets/images/groceries.svg", "name": "Grocery"},
  {"img": "assets/images/essentials.svg", "name": "Essencial"},
  {"img": "assets/images/fruit.svg", "name": "Frutas"},
  {"img": "assets/images/alcohols.svg", "name": "Bebidas Alcoólicas"},
  {"img": "assets/images/deals.svg", "name": "Deals"},
  {"img": "assets/images/discount.svg", "name": "Descontos"},
];
const List firstMenu = [
  {
    "img":
        "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": true,
    "name": "Mary's Breakfast Burritos",
    "description": "Café da Manhã e Almoço - Americano - Sanduíches",
    "time": "45-55 min",
    "delivery_fee": "\$2.49 Entrega Grátis"
  }
];
const List exploreMenu = [
  {
    "img":
        "https://images.unsplash.com/photo-1530016555861-3d1f3f5ca94b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZCUyMGRvbnV0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": true,
    "name": "Dunkin' (122 Fulton St)",
    "description": "Café da Manhã e Almoço - Donuts",
    "time": "15-25 Min",
    "delivery_fee": "\$1.00 Entrega Grátis",
    "rate": "4.5",
    "rate_number": "105"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1552895638-f7fe08d2f7d5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZCUyMG1jZG9uYWxkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": false,
    "name": "McDonald's - LES (Delancey St)",
    "description": "Americano - Fast Food - Hamburguers",
    "time": "20-30 Min",
    "delivery_fee": "\$1.49 Entrega Grátis",
    "rate": "4.5",
    "rate_number": "500+"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": true,
    "name": "Subway (30 BROAD ST)",
    "description": "Fast Food - Sanduíche - Americano",
    "time": "40-50 Min",
    "delivery_fee": "\$2.49 Entrega Grátis",
    "rate": "4.5",
    "rate_number": "133"
  },
];

const List popluarNearYou = [
  {
    "img":
        "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": false,
    "name": "Village Breakfast Snob",
    "description": "Café da Manhã e Almoço - Americano - Sanduíche",
    "time": "20-30 Min",
    "delivery_fee": "\$1.49 Entrega Grátis",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1467453678174-768ec283a940?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "is_liked": false,
    "name": "Soho Finest Market",
    "description": "Café da Manhã e Almoço - Sucos e Smoothies",
    "time": "15-25 Min",
    "delivery_fee": "\$2.49 Entrega Grátis",
    "rate": "4.4",
    "rate_number": "22"
  },
];

const List packForYou = [
  {
    "img":
        "https://images.unsplash.com/photo-1559847844-5315695dadae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1940&q=80",
    "name": "O Bacon, Ovo e Queijo Bagel",
    "description":
        'Bagel recheado com ovos frescos, bacon e creamy cheese...',
    "price": "\$ 11.99"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1527324688151-0e627063f2b1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60",
    "name": "Torradas Francesas Originais",
    "description":
        'Pão de chalá fatiado embebido em ovos e leite, depois de frito sirva com um bom...',
    "price": "\$ 9.99"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1557079604-d28080618be0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60",
    "name": "Omelete Espanhola",
    "description":
        'Ovos franceses, tomates, cebolars e pimentões, creamy cheese e saladas...',
    "price": "\$ 13.99"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1557499305-87bd9049ec2d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60",
    "name": "2 Ovos Servidos com Fritas Caseiras e Torrada",
    "description":
        '2 ovos servidos ao seu gosto com fritas caseiras e torradas quentes. Escolha de Adição...',
    "price": "\$ 10.99"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1580476262798-bddd9f4b7369?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "name": "Sanduíche de Bacon, Ovo e Queijo",
    "description":
        'Pão recheado com ovos frescos, bacon e creamy cheese...',
    "price": "\$ 11.99"
  }
];
