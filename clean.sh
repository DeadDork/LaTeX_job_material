################################################################################
# Comments

# Stupid script to clean up the directory.

################################################################################
for i in *; do
	if [[ "${i}" == *.aux ]]; then
		rm *.aux
	fi

	if [[ "${i}" == *.log ]]; then
		rm *.log
	fi

	if [[ "${i}" == *.out ]]; then
		rm *.out
	fi

	if [[ "${i}" == *.pdf ]]; then
		rm *.pdf
	fi

	if [[ "${i}" == *.dvi ]]; then
		rm *.dvi
	fi

	if [[ "${i}" == *.ps ]]; then
		rm *.ps
	fi
done
