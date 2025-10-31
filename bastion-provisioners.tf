resource "null_resource" "ec2-copy-keys" {
   depends_on = [module.ec2_bastion ]
   connection {
     type = "ssh"
     host = aws_eip.bastion-eip.public_ip
     user = "ec2-user"
     password = ""
     private_key = file("private-keys/lupfumo-key-mumbai.pem")
   }

   provisioner "file" {
    source = "private-keys/lupfumo-key-mumbai.pem"
    destination = "/tmp/lupfumo-key-mumbai.key.pem"
   }

   provisioner "remote-exec" {
    inline = [ 
        "sudo chmod 400 /tmp/lupfumo-key-mumbai.pem"
     ]
     
   }
}