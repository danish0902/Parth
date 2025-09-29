import unittest
import subprocess
import sys
import requests
import time
import threading
from app import app

class TestApp(unittest.TestCase):
    
    def test_app_output(self):
        """Test that app.py produces expected output when run directly"""
        result = subprocess.run([sys.executable, 'app.py'], 
                              capture_output=True, text=True, timeout=5)
        # The app will start the web server, so we expect it to be terminated
        # But it should print the expected message
        self.assertIn("Hello from Podman container!", result.stdout)
        self.assertIn("Starting web service...", result.stdout)
    
    def test_app_import(self):
        """Test that app.py can be imported successfully"""
        try:
            import app
            # Verify Flask app exists
            self.assertIsNotNone(app.app)
            self.assertEqual(app.app.name, 'app')
        except ImportError:
            self.fail("app.py could not be imported")
    
    def test_flask_routes(self):
        """Test Flask application routes"""
        with app.test_client() as client:
            # Test root route
            response = client.get('/')
            self.assertEqual(response.status_code, 200)
            self.assertEqual(response.data.decode(), "Hello from Podman container!")
            
            # Test health route
            response = client.get('/health')
            self.assertEqual(response.status_code, 200)
            data = response.get_json()
            self.assertEqual(data['status'], 'healthy')
            self.assertEqual(data['message'], 'Service is running')

if __name__ == '__main__':
    unittest.main()