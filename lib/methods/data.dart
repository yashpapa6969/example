import 'package:flutter/material.dart';
class AnimalInfo {
  final int? position;
  final String? name;
  final String? iconImage;
  final String? paragraph;


  AnimalInfo(this.position,
      {this.name,
        this.iconImage,

        this.paragraph,
        });
}


List<AnimalInfo> animallist = [
  AnimalInfo(1,
      name: 'James Web Telescope',
      iconImage: 'asstes/jwt.jpeg',

paragraph: "The new telescope is at least 100 times more powerful than the Hubble Telescope. And with its golden mirror, astronomers are hoping to catch glimpses of the universe like never before. For the best view of space, one needs to be in space. And that's what Webb will do. While Hubble mirror stood at 7.8 feet in diameter, the James Webb telescope's mirror has the diameter of 21.3 feet, allowing it to capture six times more light than Hubble."
  ),
  AnimalInfo(2,
      name: 'Hubble In Comparison',
      iconImage: 'asstes/hubble.jpeg',
paragraph:      "With infrared imaging, astronomers may be able to peek into extremely old galaxies owing to a process called redshifting wherein light is stretched as it appears and disappears, leaving a red trail behind. With infrared, Webb will be able to capture extremely old galaxies that are currently being pushed farther away from Earth and becoming redder. That's how you look back in time!  The James Webb Telescope will help astronomers not only look farther out into space, but will also take us back in time. With the new telescope, astronomers are hoping to study the very first stars and galaxies in the universe to understand its secrets.  With Hubble, scientists were able to peek into galaxies that formed 400 million years after the Big Bang."

      "James Webb Telescope may be able to bridge that gap and show images from 250 million years after the Big Bang, taking us closer to the starting point of our universe."
  ),

  AnimalInfo(3,
      name: 'Distance From Earth',
      iconImage: 'asstes/distance_earth.jpeg',
      paragraph: "While Hubble was only 547 kilometres away from Earth, the James Webb Telescope will be millions of kilometres away from Earth - roughly four times the distance between the Earth and Moon. It took just 30 days for the James Webb Space Telescope to travel nearly a million miles (1.5 million kilometers) to its permanent home: Lagrange point 2 — a gravitationally stable location in space"
  ),
  AnimalInfo(4,
      name: 'Achievements',
      iconImage: 'asstes/achievements.jpeg',
paragraph: "The James Webb Space Telescope is the product of an impressive international(opens in new tab) collaboration between NASA, the European Space Agency (ESA), and the Canadian Space Agency. According to NASA, the JWST involved over 300 universities, organizations and companies across 29 U.S. states and 14 countries."),
  AnimalInfo(5,
      name: 'Images',
      iconImage: 'asstes/images.jpg',
paragraph: "The James Webb Space Telescopes' first science images were officially released by NASA during a live event on July 12, at 10:30 a.m. EDT (1430 GMT). They included the Cosmic Cliffs in the Carina Nebula, the striking Southern Ring Nebula, Stephan's Quintet and an analysis of the atmospheric composition of the hot gas giant exoplanet WASP-96 b."

),
  AnimalInfo(6,
      name: 'Great asset',
      iconImage: 'asstes/greatasset.jpg',
paragraph: "Not just a great valley, but a shrine to human foresight, the strength of granite, the power of glaciers, the persistence of life, and the tranquility of the High Sierra. First protected in 1864, Yosemite National Park is best known for its waterfalls, but within its nearly 1,200 square miles, you can find deep valleys, grand meadows, ancient giant sequoias, a vast wilderness area, and much more."),
];
