.SILENT:
.PHONY: all clear ECGE1222 LANGL2 FSAB1402 LECGE1212
.DEFAULT_GOAL=help
ESPACE_HELP=10


all: ECGE1222 LANGL2 FSAB1402 LECGE1212  ## Compile toutes les notes en PDF ( Pandoc and texlive sont requis )


clear: ## Supprime les fichiers temporaires non indispensables

	rm *.pdf

help: ## Affiche l'aide

		@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-$(ESPACE_HELP)s\033[0m %s\n", $$1, $$2}'


# ----- Cours file by file ----

ECGE1222: ## Compile les notes de Micro en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LANGL2: ## Compile les notes de anglais 2 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

FSAB1402: ## Compile les notes de Informatique2 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LECGE1212: ## Copie le PDF du cours de Macro dans le directory principal 

	cp LECGE1212/LECGE1212.pdf .
