# Script d'énumération de domaines
Ce script permet d'effectuer une énumération de domaines/sous-domaines en utilisant plusieurs outils populaires tels que findomain, SubFinder, Amass et AssetFinder.


## Prérequis

- Un système d'exploitation compatible avec Bash
- Les outils findomain, SubFinder, Amass et AssetFinder installés sur le système

## Utilisation
- Clonez le repository contenant le script sur votre système:
```
git clone https://gitlab.com/incognito2465106/enum-domain.git
```
- Allez dans le répertoire du script:
```
cd enum-domain
```
-  Donnez les droits d'execution aux fichiers
```
chmod +x install.sh
```
- Installer les dépendances 
``` 
./install.sh
```
- Lancez le script en spécifiant le TLD pour lequel vous voulez effectuer une énumération de sous-domaines:
```

./enum-domain.sh tld

```
Le script va commencer à exécuter les outils d'énumération de sous-domaines, cela peut prendre quelques minutes. Une fois terminé, le script affichera les résultats dans le terminal et les sauvegardera également dans un fichier subdomains.txt dans le répertoire courant.

## Avertissement
L'utilisation de ce script peut être considérée comme une intrusion dans un système tiers sans autorisation. Veuillez utiliser ce script uniquement sur des systèmes pour lesquels vous avez la permission légale de le faire. L'auteur de ce script ne sera pas responsable de toute utilisation abusive ou illégale de ce script.