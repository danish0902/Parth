import unittest
import subprocess
import sys
import os

class TestApp(unittest.TestCase):
    
    def test_app_output(self):
        """Test that app.py produces expected output"""
        # Run the app as a subprocess to capture output
        result = subprocess.run([sys.executable, 'app.py'], 
                              capture_output=True, text=True, cwd=os.getcwd())
        
        # Check that it ran successfully
        self.assertEqual(result.returncode, 0, f"App failed with error: {result.stderr}")
        
        # Check the output
        expected_output = "Hello from Podman container!"
        self.assertEqual(result.stdout.strip(), expected_output)
    
    def test_app_file_exists(self):
        """Test that app.py exists"""
        self.assertTrue(os.path.exists('app.py'), "app.py file not found")
    
    def test_app_is_readable(self):
        """Test that app.py is readable"""
        try:
            with open('app.py', 'r') as f:
                content = f.read()
                self.assertIn('print', content, "app.py should contain a print statement")
        except Exception as e:
            self.fail(f"Could not read app.py: {e}")

if __name__ == '__main__':
    # Run tests with verbose output
    unittest.main(verbosity=2)