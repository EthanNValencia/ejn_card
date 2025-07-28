    flutter config --enable-web
    flutter build web --release
    git init

    flutter run -d chrome

    cp -r build/web/* . # Copy contents to root of your local repo
    git add .
    git commit -m "Initial static website commit"

    git remote add origin https://github.com/EthanNValencia/ejn_card
    git branch -M main

    git push -u origin main

    https://ethannvalencia.github.io/ejn_card/