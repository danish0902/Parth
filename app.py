from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Podman container!"

@app.route('/health')
def health():
    return {"status": "healthy", "message": "Service is running"}, 200

if __name__ == '__main__':
    print("Starting web service...")
    print("Hello from Podman container!")
    app.run(host='0.0.0.0', port=80)
