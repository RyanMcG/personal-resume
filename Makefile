# # Résumé Makefile
# What to call the generated résumé
JOBNAME=McGowan,\ Ryan-résumé

# The default make command generates a pdf with the given JOBNAME.
genpdf:
	pdflatex --jobname=${JOBNAME} resume

# Uses Ruby's watchr library on the included watch_res.rb to run make whenever
# resume.tex changes.
watch:
	watchr watch_res.rb

# Move the newly created pdf to the public folder of Dropbox.
drop: genpdf
	cp ${JOBNAME}.pdf ~/Dropbox/Public/resume.pdf

# Remove all generated files from the directory.
clean:
	rm -f *.log *.pdf
