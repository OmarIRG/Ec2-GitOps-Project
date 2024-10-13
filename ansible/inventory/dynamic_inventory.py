#!/usr/bin/env python3
import json
import subprocess
import os

def get_terraform_output():
    try:
        # Change to the terraform directory to get the correct output
        os.chdir('../terraform')
        result = subprocess.run(["terraform", "output", "-json"], capture_output=True, text=True)
        
        if result.returncode != 0:
            print("Error executing terraform output command:", result.stderr)
            return None

        return json.loads(result.stdout)
    except Exception as e:
        print(f"Exception occurred: {e}")
        return None

def main():
    data = get_terraform_output()
    
    if not data or "ec2_public_ip" not in data:
        print("No public IP data found from Terraform output.")
        return
    
    # Ensure ec2_public_ip is returned as a list, even if it contains only one IP
    public_ips = data.get("ec2_public_ip", {}).get("value", [])
    if isinstance(public_ips, str):
        public_ips = [public_ips]  # Convert single string to list
    
    # Define inventory with public group containing the list of public IPs
    inventory = {
        "public": {
            "hosts": public_ips
        }
    }
    
    print(json.dumps(inventory, indent=4))

if __name__ == "__main__":
    main()
