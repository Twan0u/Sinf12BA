/*
La libraire string(3) implémente un grand nombre de fonctions de manipulation des strings qui vous serons utile lors de différents projets de programmation. Pour ce mini-projet vous devriez implémenter les fonctions suivantes:

strlen(3)

strcat(3)

strcasecmp(3)

Indice : pour strcasecmp, travaillez à partir des données de ce tableau (vous n'avez pas accès à la fonction tolower de ctype.h).

Cette question a pour objectif de vérifier que votre implémentation, que vous avez normalement testée sur votre ordinateur, fonctionne correctement. Le nombre de soumissions autorisées est limité.
*/
//Entrez ici le corps de la fonction strlen.
size_t strlen(const char *s) {
	int i = 0;
	while(*(str+i) != '\0') {
		i++;
	}
	return(i);
}

//Entrez ici le corps de la fonction strcat.
char *strcat(char *destination, const char *source) {
	size_t dest_len = strlen(destination);
	int i = 0;
	while(*(source+i) != '\0') {
		destination[dest_len+i] = source[i];
		i++;
	}
	return(destination);
}
//Entrez ici le corps de la fonction strcasecmp.
int strcasecmp(const char *s1, const char *s2){
//
}
