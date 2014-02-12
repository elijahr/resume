
all: resume.pdf
	
resume.pdf: index.html resume.css
	wkhtmltopdf --grayscale --print-media-type --encoding utf8 index.html resume.pdf
	open -a "Google Chrome" index.html
	open resume.pdf

resume.css:
	lessc resume.less > resume.css

clean:
	rm -f resume.css
	rm -f resume.pdf
