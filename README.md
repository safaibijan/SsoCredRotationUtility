# SsoCredRotationUtility
Utility script to rotate the creds in ~/.aws/credentials for SSO based accounts. Currently the tooling used to interact with AWS leverages creds stored in the ~/.aws/credentials file. The session token in this file expires perodicly. A workaround was already set up to refresh session tokens for MFA based accounts but this system does not work with SSO based accounts set up through Rippling. This script provides a mechanism to refresh session tokens on SSO based accounts with little effort.

# Requirments:
Have your AWS cli configured with your sso account. TODO link to page

# Usage Instructions
1. Install aws2-wrap: pip3 install aws2-wrap
2. Mark script as executable: chmod 755 refresh_aws_session_sso.sh
3. Find SSO Profile name in ~/.aws/config
4. Run script when fresh creds are needed with your sso profile name specified: path/to/script/refresh_aws_session_sso.sh <PROFILE NAME> 
