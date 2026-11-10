# tms_globus_redirect_test_data

- Clone the repo:
`git clone https://github.com/taoteg/tms_globus_redirect_test_data`

- To run the local endpoint for testing tms_portal login:
`./serve-institutions-endpoint.sh`

- To test that the endpoint is live (in another terminal):
`curl http://127.0.0.1:3001/v1/tms/institutions`

Note: To test against different login conditions, change the symlink to point to a different test data file.

- `institutions-all`                      - All possible logins (Institutions + Tapis + Globus)
- `institutions-only_globus`              - Only Globus.
- `institutions-globus_no-tapis_yes`      - Institutions + Tapis
- `institutions-only`                     - Only Institutions (no Tapis, no Globus)
- `institutions-only_tapis`               - Only Tapis

