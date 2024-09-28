css:
	sass ./src/scss/app.scss ./src/css/style.css -w

html:
	pug src/index.pug --pretty -w -o ./src/

deploy:
	npx surge ./src/

lint:
	npx npx stylelint "src/css/style.css" & npx htmlhint "src/index.html"

lint-fix:
	npx npx stylelint "src/css/style.css" --fix & npx htmlhint "src/index.html"