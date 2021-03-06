vsphere_server = <VSphere server address>
ssh_user = <userid from the template>
ssh_password = <password for ssh_user>
vsphere_datacenter = <Datacenter name>
vsphere_cluster = <Cluster ID>
vsphere_resource_pool = ""
vsphere_storage_username = <user with access to storage>
vsphere_storage_password = <password to Vsphere storage>
vsphere_storage_datastore = "datastore1"
datastore_cluster = <Datastore Cluster name>
template = <VMware template name>
folder = <Vmware folder to be created>
hostname_prefix = <name prefix to each VM>
rhn_username = <RH username>
rhn_password = <RH password to subscription>
rhn_poolid = <RH subscription poolid>
image_registry_username = <user associated to the token from RH>
image_registry_password = <token from RH to download images>
private_network_label = <VSphere Network label>

private_netmask = "24"
private_gateway = <network Gateway>
private_domain = "my-cluster.com"
private_dns_servers = [ <list of DNS Servers> ]

master_cname = "cp4d-res-master.my-cluster.com"
app_cname = "apps-cp4d-res.my-cluster.com"

bastion_private_ip = [ "192.168.102.34" ]
bastion = {
    nodes = "1"
    vcpu = "4"
    memory = "8192"
    disk_size = "100"
    docker_disk_size = "100"
    thin_provisioned = "true"
    keep_disk_on_remove = false
    eagerly_scrub = false
}

master_private_ip = [ "192.168.102.35" ]
master = {
    nodes = "1"
    vcpu = "8"
    memory = "32768"
    disk_size = "100"
    docker_disk_size = "200"
    thin_provisioned = "true"
    keep_disk_on_remove = false
    eagerly_scrub = false
}

infra_private_ip = [ "192.168.102.41" ]
infra = {
    nodes = "1"
    vcpu = "8"
    memory = "32768"
    disk_size = "100"
    docker_disk_size = "200"
    thin_provisioned = "true"
    keep_disk_on_remove = false
    eagerly_scrub = false
}

worker_private_ip = [ "192.168.102.79", "192.168.102.80", "192.168.102.91", "192.168.102.123" ]
worker = {
    nodes = "4"
    vcpu = "16"
    memory = "65536"
    disk_size = "100"
    docker_disk_size = "200"
    thin_provisioned = "true"
    keep_disk_on_remove = false
    eagerly_scrub = false
}

storage_private_ip = [ "192.168.102.125", "192.168.102.126", "192.168.102.129" ]
storage = {
    nodes = "3"
    vcpu = "4"
    memory = "16384"
    disk_size = "100"
    docker_disk_size = "100"
    gluster_disk_size = "1500"
    thin_provisioned = "true"
    keep_disk_on_remove = false
    eagerly_scrub = false
}