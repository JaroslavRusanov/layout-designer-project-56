css:
	sass ./src/scss/app.scss ./src/css/style.css -w

main-html:
	pug src/index.pug --pretty -w -o ./src/

art-html:
	pug src/artist.pug --pretty -w -o ./src/

deploy:
	npx surge ./src/

deploy-artist:
	npx surge ./src/artist.html

lint:
	npx npx stylelint "src/css/style.css" & npx htmlhint "src/index.html" & npx htmlhint "src/artist.html"

lint-fix:
	npx npx stylelint "src/css/style.css" --fix