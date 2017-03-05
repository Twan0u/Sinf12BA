
void swap(struct fract_t *a, struct fract_t *b) {
	int tmp = a->num;// on optimise le code en utilisant qu'une seule variable 
	a->num = b->num;
	b->num = tmp;
	tmp = a->denum;
	a->denum = b->denum;
	b->denum = tmp;
}
