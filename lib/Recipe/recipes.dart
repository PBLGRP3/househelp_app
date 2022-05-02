import 'package:flutter/material.dart';
import 'recipe_screen.dart';
import 'recipe_display.dart';

class Recipes extends StatelessWidget {
  var image1 = "Saag Vegetable Curry";
  var image2 = "Tandoori Roasted Cup Mushrooms";
  var image3 = "Mushroom Korma Curry";
  var image4 = "One-pan Coconut Chettinad Prawn Curry";
  var image5 = "Cauliflower and Chickpea Curry";
  var image6 = "Veg Tikka Masala Vegetarian Pies";
  var image7 = "One-Pan Butter Chicken";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(217, 254, 255, 255),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Recipes",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.normal)),
        backgroundColor: Colors.green,
        elevation: 1.0,
      ),
      body: ListView(
        children: <Widget>[
          recipe_display(
            recipe_screen(
              '''Ingredients:
 \n1.  2 red onions
 \n2.  2 tablespoons lime juice
 \n3.  salt and finely ground white pepper
 \n4.  200g paneer cheese, drained, cut into 2cm cubes
 \n5.  2tablespoon vegetable oil
 \n6.  1 yellow capsicum, deseeded, cut into thin strips
 \n7.  100g green beans, trimmed
 \n8.  1 small head of broccoli, cut into florets
 \n9.  375g Passage to India Saag Curry Simmer Sauce
 \n10. Large bunch baby spinach (about 100g)
 \n11. Steamed basmati rice to serve
 \n12. Pappadams, to serve

\n\nMethod:
\n1. Thinly slice 1 red onion and place into a small bowl. Add lime juice, salt and white pepper. Toss until combined.
\n2. Cut remaining onion into thin wedges. Pat paneer dry with paper towel. Brush with oil. Heat a large non-stick frying pan over medium heat. When hot. Add paneer and cook for 1-2 minutes each side or until golden. Transfer to a plate.
\n3. Heat remaining oil in frying pan over medium heat. Add onion wedges and capsicum. Cook for 4 minutes or until softened. Add green beans, broccoli, Passage to India Saag Curry Simmer Sauce and 1 cup water. Stir until combined and mixture comes to the boil. Reduce heat and simmer curry for 8 minutes or until vegetables are softened.
\n4. Stir spinach into curry and cook for 1 minute or until wilted. Spoon rice into serving bowls. Top with vegetable curry, pickled onion and paneer with pappadams on the side.





''',
              "assets/images/R1.jpg",
              "Saag Vegetable Curry with Paneer Cheese",
            ),
            image1,
            "assets/images/R1.jpg",
          ),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
            recipe_screen(
              '''Ingredients:
\n1. 1 cup Greek-style natural yoghurt
\n2. 5 tbs tandoori paste
\n3. 1 tsp ground cumin
\n4. 500g cup mushrooms
\n5. Coriander leaves, yoghurt, naan bread & lemon wedges, to serve


Method:

\n1. Preheat oven to 250°C or 230°C fan forced. Combine yoghurt, tandoori paste and cumin in a large bowl. Add mushrooms and stir to coat
\n2. Place mushrooms onto a well-greased baking tray. Roast for 10-12 minutes until lightly charred and tender
\n3. Top with coriander leaves and serve with yoghurt, naan bread and lemon wedges

Tips & Hints:

Serves 4 as a light meal''',
              "assets/images/R2.jpg",
              "Tandoori Roasted Cup Mushrooms",
            ),
            image2,
            "assets/images/R2.jpg",
          ),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
              recipe_screen(
                '''Ingredients:
\n1.  1 tbs ghee or vegetable oil
\n2.  1 brown onion, finely chopped
\n3.  3 tsp garam masala
\n4.  400g button mushrooms, trimmed
\n5.  2/3 cup korma curry paste
\n6.  1/2 small (about 350g) cauliflower, trimmed, chopped
\n7.  1 small (about 400g) orange sweet potato, peeled, chopped
\n8.  2 cups vegetable stock
\n9.  400ml can coconut milk
\n10. 125g green beans, trimmed, cut in half
\n11. Roasted cashews, fresh coriander leaves & steamed basmati rice, to serve

\n\nMethod:
\n1. Heat ghee or oil in a large wok over medium heat. Add onion and garam masala. Cook, stirring occasionally for 3 minutes, until soft. Add mushrooms
\n2. Cook, stirring over a high heat for about 5 minutes, or until mushrooms are soft. Add curry paste. Cook, stirring, for 1-2 minutes, or until fragrant
\n3. Add cauliflower and sweet potato and stir to coat in spice mixture. Add stock and coconut milk. Bring to boil. Cover with lid
\n4. Simmer, stirring occasionally over a medium-low heat for about 15 minutes, or until potato is tender. Remove lid
\n5. Add beans and simmer, uncovered for about 5 minutes or until beans are tender. Serve. Sprinkle over cashews and coriander. Serve with basmati rice

\n\nTips & Hints:
\nYou can use other vegetables such as butternut pumpkin, red capsicum and zucchini''',
                "assets/images/R3.jpg",
                "Mushroom Korma Curry",
              ),
              image3,
              'assets/images/R3.jpg'),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
            recipe_screen(
              '''Ingredients:
\n1. 450g peeled, deveined green king prawns
\n2. 225g pkt Street Kitchen Coconut Chicken Chettinad Kit
\n3. 2 tbsp vegetable oil
\n4. 250g punnet cherry tomatoes
\n5. 165ml tin coconut milk
\n6. 450g pkt family size microwave basmati rice
\n7. 2 x birdseye chillies, thinly sliced
\n8. Coriander leaves, to serve
\n9. Lime wedges, to serve

\n\nMethod:
\n1. Place prawns in a bowl and add the ginger & garlic paste from the Street Kitchen pack. Stir to coat.
\n2. Heat 1 tbsp of the oil in a large non-stick lidded frying pan over medium high heat. Add the prawns and cook, stirring, for 2-3 minutes or until lightly coloured. Transfer to a plate
\n3. Heat remaining oil in the pan and add the Street Kitchen spices. Cook for 1-2 minutes or until aromatic. Add the tomatoes and cook over high heat for 2 minute or until starting to split. Pour in the curry sauce and bring to a simmer. Stir in 1 cup of water and the coconut milk. Add the rice, stir to combine, cover and cook for 10 minutes or until the rice is almost cooked.
\n4. Return prawns and chilli to the pan, gently stir to combine. Cover and cook for a further 2 minutes or until the rice and prawns are cooked
\n5. Serve the prawns and rice, scattered with remaining chilli, coriander and lime wedges.''',
              "assets/images/R4.jpg",
              "One-pan Coconut Chettinad Prawn Curry",
            ),
            image4,
            'assets/images/R4.jpg',
          ),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
            recipe_screen('''Ingredients:
\n1.  20ml olive oil
\n2.  1 onion, finely sliced
\n3.  2 tablespoons medium curry paste
\n4.  1/2 cauliflower (approx. 450g), cut into florets
\n5.  400g can ARDMONA Whole Peeled Tomatoes
\n6.  400g can chickpeas, drained and rinsed
\n7.  100g green beans, trimmed and chopped
\n8.  1 cup water
\n9.  Salt flakes and freshly ground black pepper, to taste
\n10. 1/2 cup coriander leaves, chopped
\n11. Steamed rice and naan bread, to serve

\n\nMethod:
\n1. Heat oil in a deep frying pan over a low heat. Add onion and cook for 2-3 minutes until softened. Stir in curry paste and cook for 1-2 minutes until fragrant
\n2. Add cauliflower, tomatoes, chickpeas, beans and water to pan. Bring to the boil, reduce heat and simmer covered, stirring often for 12-15 minutes or until cauliflower is tender. Season to taste
\n3. Stir in coriander leaves and accompany with steamed rice and bread''',
                "assets/images/R5.jpg", "Cauliflower and Chickpea Curry"),
            image5,
            'assets/images/R5.jpg',
          ),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
            recipe_screen('''Ingredients:
\n1.  1 tablespoon vegetable oil
\n2.  1 brown onion, finely diced
\n3.  1 carrot, finely diced
\n4.  375g Passage to India Tikka Masala simmer sauce
\n5.  1 zucchini, finely diced
\n6.  1 1/2 cups broccoli florets
\n7.  100g green beans, cut into 2cm pieces
\n8.  1 cob of corn, kernels removed
\n9.  4 sheets ready rolled frozen puff pastry
\n10. 1 egg, whisked
\n11. 1 tablespoon sesame seeds
\n12. Mango chutney, to serve

\n\nMethod:
\n1. Heat oil in a large non-stick frying pan over medium heat. Add onion and carrot and cook for 5 minutes or until softened. Add Passage to India Tikka Masala Simmer Sauce and 1/3 cup water. Bring curry to the boil.
\n2. Add zucchini, broccoli, green beans and corn. Stir until well combined. Cook for 4 minutes or until tender. Cool.
\n3. Preheat oven to 200°C / 180°C fan forced. Place a baking tray in oven. Grease 4 metal pie tins. Cut 4 x 13cm rounds from pastry. Line prepared tins with pastry. Spoon vegetable curry mixture into pie shells. Cut 4 x 12cm rounds from pastry. Brush edge of pastry shell with water. Cover curried pie filling with pastry rounds and seal. Brush top of pies with egg and sprinkle with sesame seeds. Cut a small cross on the top of each pie. Place pies onto hot tray and bake for 25 minutes or until golden and crisp.''',
                "assets/images/R6.jpg", "Veg Tikka Masala Vegetarian Pies"),
            image6,
            'assets/images/R6.jpg',
          ),
          const SizedBox(
            height: 30.0,
          ),
          recipe_display(
              recipe_screen('''Ingredients:
\n1. 1 tablespoon vegetable oil
\n2. 8 chicken thigh cutlets, with skin on
\n3. 1 brown onion, thinly sliced
\n4. 1/2 (500g) cauliflower, cut into florets
\n5. 375g Passage to India Butter Chicken Simmer Sauce
\n6. 2 tablespoons light thickened cream
\n7. Steamed basmati rice, to serve
\n8. Roasted salted cashews, roughly chopped, to serve
\n9. Coriander sprigs, to serve

\n\nMethod:
\n1. Heat oil in a large non-stick frying pan over medium heat. Add chicken pieces and cook for 10 minutes or until browned on all sides. Transfer to a plate. Drain excess fat and discard
\n2. Add onion and cauliflower to pan and cook for 5 minutes or until softened. Pour Passage of India Butter Chicken Simmer Sauce over vegetables and bring to a simmer. Return chicken pieces to pan, coating well with sauce. Cover pan, reduce heat and simmer for 20 minutes or until chicken is cooked through. Stir through cream just before serving
\n3. Spoon rice onto a platter. Top with chicken, vegetables and sauce. Sprinkle with cashew nuts and coriander''',
                  "assets/images/R7.jpg",
                  "One-Pan Butter Chicken with Cauliflower"),
              image7,
              'assets/images/R7.jpg'),
          const SizedBox(
            height: 35.0,
          ),
        ],
      ),
    );
  }
}
