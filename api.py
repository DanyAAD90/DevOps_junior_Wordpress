from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True)

    
#W powyższym kodzie definiujemy prostą aplikację internetową w języku Python, 
#która wykorzystuje framework Flask. Aplikacja ma jedno proste API, 
#które zwraca komunikat "Hello, World!".

#Po napisaniu kodu, możemy go przesłać do repozytorium Git za pomocą komendy git add ., 
#która doda wszystkie pliki z projektu do śledzenia, 
#a następnie za pomocą komendy git commit -m "Initial commit", 
#która utworzy nowy commit z opisem "Initial commit". 
#W ten sposób zapisujemy nasz kod w repozytorium Git.

#W przypadku dalszej pracy nad projektem, 
#można utworzyć nowe commity, 
#które będą zawierać nowe zmiany w kodzie. 
#W celu przesłania nowych commmitów do repozytorium zdalnego, 
#można wykorzystać komendę git push, która przesłać nowe commity na serwer.
