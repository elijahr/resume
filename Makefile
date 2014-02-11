
all: resume.pdf
	
resume.pdf: index.html resume.css
	wkhtmltopdf --grayscale index.html resume.pdf
	open resume.pdf
	open -a "Google Chrome" index.html

resume.css:
	lessc resume.less > resume.css

clean:
	rm -f resume.css
	rm -f resume.pdf
