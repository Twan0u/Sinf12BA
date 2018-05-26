.SILENT:
.PHONY: all clear LELEC1930 LFSAB1590 LINGI1122 LINGI1131
.DEFAULT_GOAL=help
ESPACE_HELP=10


LELEC1930: ## Compile les notes de Télécom en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LFSAB1590: ## Compile les notes de P4 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LINGI1122: ## Compile les notes de MCP en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md

LINGI1131: ## Compile les notes de OZ2 en PDF

	echo $@/notes/chapitre*.md | xargs cat > temp_$@.md
	pandoc temp_$@.md -s -o $@.pdf
	echo $@
	rm temp_$@.md


all: LINGI1131 LINGI1122 LFSAB1590 LELEC1930## Compile toutes les notes en PDF ( Pandoc and texlive sont requis )



clear: ## Supprime les fichiers temporaires non indispensables

	rm *.pdf

help: ## Affiche l'aide

		@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-$(ESPACE_HELP)s\033[0m %s\n", $$1, $$2}'


