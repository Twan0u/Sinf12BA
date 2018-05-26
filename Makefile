.SILENT:
.PHONY: all clear LANGL2 FSAB1402 LECGE1212 ECGE1222 LECGE1322 LSINF1225
.DEFAULT_GOAL=help
ESPACE_HELP=10


all: LANGL2 FSAB1402 LECGE1212 LECGE1322 LSINF1225 ECGE1222 ## Compile toutes les notes en PDF ( Pandoc and texlive sont requis )


clear: ## Supprime les fichiers temporaires non indispensables

	rm -f -- *.pdf
	rm -f -- temp*.md
	

help: ## Affiche l'aide

		@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-$(ESPACE_HELP)s\033[0m %s\n", $$1, $$2}'


# ----- Cours file by file ----

ECGE1222: ## Compile les notes de Micro en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	# pandoc temp_$@.md -s -o $@.pdf
	echo $@
	# rm temp_$@.md

LANGL2: ## Compile les notes de anglais 2 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LSINF1225: ## Compile les notes de anglais 2 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LECGE1322: ## Compile les notes de anglais 2 en PDF

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
	echo $@
