## EXO1:

```C
#include <stdio.h>

int convertirEnBase10(int n, int b) {
    if (n == 0) {
        return 0;
    } else {
        return (n % 10) + b * convertirEnBase10(n / 10, b);
    }
}
/**
1- Si n est égal à zéro, cela signifie que nous avons atteint la fin de notre nombre en base b.
   Dans ce cas, la fonction retourne zéro.

2- Sinon, n % 10 donne le chiffre le moins significatif de n en base b, et n / 10 donne le reste du nombre (sans ce chiffre).

3- On multiplie ensuite le chiffre le moins significatif par b élevé à la puissance de la position de ce chiffre (0, 1, 2, ...).
   Cela revient à le placer correctement dans le systéme décimal.

4- On répéte ces étapes pour tous les chiffres du nombre n, en les ajoutant tous ensemble.

Dans le programme principal (main), l'utilisateur est invité à entrer un nombre n et la base b.
Si les conditions ne sont pas respectées (négatif ou base inférieure à 2), un message d'erreur est affiché.
Sinon, la fonction convertirEnBase10 est appelée et le résultat est affiché.
**/
int main() {
    int n, b;
    printf("Entrez un nombre n (en base b) : ");
    scanf("%d %d", &n, &b);

    if (n < 0 || b < 2) {
        printf("n doit étre positif et b doit étre au moins égal à 2.\n");
    } else {
        int resultat = convertirEnBase10(n, b);
        printf("%d en base 10 est : %d\n", n, resultat);
    }

    return 0;
}
```

## EXO2

```C
#include <stdio.h>

void afficherDecroissant(int n) {
    if (n > 0) {
        printf("%d ", n);
        afficherDecroissant(n - 1);
    }
}
/**
Fonction afficherDecroissant:

- Cette fonction prend un entier n comme argument.
- Si n est supérieur à zéro, elle affiche n, puis appelle récursivement la méme fonction avec n-1.
- Cela se répéte jusqu'à ce que n atteigne zéro, alors la récursion s'arréte.
**/
void afficherCroissant(int n) {
    if (n > 0) {
        afficherCroissant(n - 1);
        printf("%d ", n);
    }
}
/**
Fonction afficherCroissant:

- Cette fonction fonctionne de maniére similaire, mais les étapes sont inversées.
- Elle appelle d'abord récursivement la fonction avec n-1, puis affiche n.
- Cela fait que les nombres sont affichés dans l'ordre croissant.
**/
int main() {
    int n;
    printf("Entrez un entier naturel non nul : ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("L'entier doit étre un entier naturel non nul.\n");
    } else {
        printf("Affichage décroissant : ");
        afficherDecroissant(n);
        printf("\n");
        printf("Affichage croissant : ");
        afficherCroissant(n);
        printf("\n");
    }

    return 0;
}
```

## EXO3

```C
#include <stdio.h>
#include <math.h>
double f(double x) {
    return pow(x, 3) + x + 1;
}

double dichotomie(double a, double b, double p) {
    double c = (a + b) / 2;

    if (fabs(b - a) < p) {
        return c;
    }

    if (f(c) == 0) {
        return c;
    } else if (f(a) * f(c) < 0) {
        return dichotomie(a, c, p);
    } else {
        return dichotomie(c, b, p);
    }
}
/**
La méthode de la dichotomie, également connue sous le nom de méthode de la moitié-intervalle, est une technique de recherche de solutions d'une équation en divisant progressivement l'intervalle dans lequel la solution se trouve en deux parties égales, puis en sélectionnant la moitié de l'intervalle qui contient la solution.

Voici les étapes de base de la méthode de la dichotomie :

1- Initialisation : Vous devez avoir un intervalle initial [a,b] où l'équation a une solution.
   Il est crucial que la fonction change de signe entre a et b (c'est-à-dire, (f(a)*f(b))<0
   pour garantir qu'il y a une racine dans l'intervalle.

2- Calcul du point médian : Calculez le point médian c de l'intervalle initial : c=(a+b)/2

3- Évaluation de la fonction : Calculez f(c).

4- Vérification de la précision : Si ∣b−a∣ est inférieur à une certaine précision prédéfinie p, vous pouvez considérer
c comme une approximation de la racine et terminer l'algorithme.

5- Mise à jour de l'intervalle : Si f(a)*f(c)<0, cela signifie que la racine se trouve entre a et c. Dans ce cas, mettez à jour
b=c. Sinon, mettez à jour a=c.

6-Répétition : Répétez les étapes 2 à 5 jusqu'à ce que la précision souhaitée soit atteinte.

La méthode de la dichotomie est particulièrement efficace pour les fonctions continues et monotones sur un intervalle donné.

Dans le contexte de la programmation, comme dans l'exemple que j'ai fourni précédemment, la méthode de la dichotomie est souvent mise en œuvre de manière récursive.
Cela permet de diviser l'intervalle de manière itérative jusqu'à ce que la précision souhaitée soit atteinte.
**/
int main() {
    double precision;
    printf("Entrez la précision p : ");
    scanf("%lf", &precision);

    double a = -3.0;
    double b = 3.0;
    double racine = dichotomie(a, b, precision);

    printf("L'approximation de la racine est : %lf\n", racine);

    return 0;
}

```
