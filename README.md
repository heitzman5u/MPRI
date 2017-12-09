# MPRI

Implémentation d'un programme permettant à partir d'une image de repérer des images semblables.
Les images sont des silhouettes blanches sur fond noir.

## Fonctionnement

A chaque image est associée un descripteur, construit de la manière suivante:
- On calcule la barycentre de chaque forme
- On détermine une approximation des limites de la forme en partant du barycentre, et en traçant des segments vers l'extérieur. On obtient ainsi un vecteur de distances au barycentre. Ce vecteur est appelé la signature du l'image. Cette signature n'est pas très bonne comme descripteur, puisqu'elle est sensible aux rotations et mises à l'échelle de l'image
- On calcule la transformée de Fourier (TF) de cette signature. Ce descripteur est insensible aux rotations, mais l'est à la mise à l'échelle
- On normalise TF, en divisant chaque composante du vecteur par la première composante. On a maintenant un descripteur (TFN) insensible aux mises à l'échelle
- On ne conserve que les fréquences basses de TFN, car celles-ci donnent des informations sur la forme générale de l'objet. On ignore simplement les fréquences hautes, qui nous sont moins utiles

Il suffit ensuite de comparer les descripteurs des images pour déterminer si elles représentent le même objet.

Cet algorithme comporte des limites, en particulier:
- Il fonctionne correctement sur des formes convexes, mais pas sur des formes concaves. La raison est simple: des morceaux de la forme seront ignorés lors du calcul de la signature
- Il comporte plusieurs paramètres, qui peuvent être difficile à fixer (quelles fréquences de TFN conserver? Quel angle choisir entre 2 segments du barycentre pour la calcul de la signature?)


## Détails

Ce programme a été implémenté sous matlab.
Les images ont été fournies par la Faculté des Sciences et Technologies de Vandoeuvre-lès-Nancy.
