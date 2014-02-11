
all: resume.pdf
	

resume.pdf: resume.html resume.css
	wkhtmltopdf resume.html resume.pdf
	open resume.pdf
	open -a "Google Chrome" resume.html

resume.css:
	lessc resume.less > resume.css

clean:
	rm -f resume.css
	rm -f resume.pdf