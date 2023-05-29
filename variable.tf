variable "RGname" {
    default= "RGroup2"
}
variable "location" {
    default= "East Us"
}
variable "vnetname" {
    default="vnet5"
}
variable "addspace" {
    default= ["10.0.0.0/16"]
}
variable "subnet" {
    type=map
    default = {
        subnet1 = {
            name= "sn1"
            address_prefixes= ["10.0.1.0/24"]
        }
        subnet2 = {
            name= "sn2"
            address_prefixes= ["10.0.2.0/24"]
        }
        subnet3 = {
            name= "sn3"
            address_prefixes= ["10.0.3.0/24"]
        }
        subnet4 = {
            name= "sn4"
            address_prefixes= ["10.0.4.0/24"]
        }
    }
}
