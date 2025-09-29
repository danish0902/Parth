import unittest
import subprocess
import sys

class TestApp(unittest.TestCase):
    
    def test_app_output(self):
        """Test that app.py produces expected output"""
        result = subprocess.run([sys.executable, 'app.py'], 
                              capture_output=True, text=True)
        self.assertEqual(result.returncode, 0)
        self.assertEqual(result.stdout.strip(), "Hello from Podman container!")
    
    def test_app_import(self):
        
        try:
            # This will execute the print statement, but that's ok for this test
            import app
        except ImportError:
            self.fail("app.py could not be imported")

if __name__ == '__main__':
    unittest.main()