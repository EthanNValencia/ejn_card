    flutter config --enable-web
    flutter build web --release
    git init

    flutter run -d chrome

    cp -r build/web/* . # Copy contents to root of your local repo
    git add .
    git commit -m "Test 005"

    git remote add origin https://github.com/EthanNValencia/ejn_card
    git branch -M main

    git push -u origin main

    https://ethannvalencia.github.io/ejn_card/
	
	
	
    flutter build web --release
    edit -> build/web/index.html -> <base href="/"> -> <base href="/ejn_card/">

	cp -r build/web/* .
	git add .
	git commit -m "Test 005"
	git push -u origin main




    qr code - https://app.qr-code-generator.com
	
	
	idea - make the email open to an english and spanish greeting, or possibly check if the browser has a prefered language and then open to that language