##Azure QR Code Generator

This mini project deploys a Node.js Azure Function that returns a QR code image from input text.
Infrastructure is defined and deployed using Terraform, demonstrating infrastructure as code.
The function uses the qrcode npm package to generate the QR image.
Azure Monitor was used to diagnose a missing module issue during testing with Postman.
Before deployment, ensure qrcode is listed in package.json dependencies.
Run terraform apply to provision Azure resources and deploy the function.
Test the API by sending a GET or POST request with the text parameter to the provided function URL.
Based on the work of Rishab Kumar and Piyush Sachdeva: azure-qr-code
.
