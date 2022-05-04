# Lab Vagrant com Mysql8
* Descrição.

VM criada com vagrant e virtual box para estudo do SQL com mysqldb.


### Pre-requisitos

- vagrant
- virtualbox

### Instalando o laboradorio vagrant-mysql8-lab

```python
# Baixando o repositorio.

git clone https://github.com/esilva/vagrant-mysql8-lab.git

# Iniciando as VM com os seguintes commandos

vagrant init
vagrant up --provision

# Para acessar cada VM via ssh
vagrant ssh 
ou
vagrant ssh dbserver

# Para desligar as VMs
vagrant halt

# Para remover as VMs
vagrant destroy

```

## Referencias de pesquisa 
https://github.com/troysandal/mysql8-vagrant
https://app.vagrantup.com/peppla/boxes/MySQL8
https://rclayton.silvrback.com/quick-mysql-box-using-vagrant-and-ansible
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-8
https://techglimpse.com/failed-metadata-repo-appstream-centos-8/
https://citizix.com/using-ansible-to-install-and-initialize-mysql-8-on-centos-8/
https://mydbops.wordpress.com/2019/01/25/automate-mysql-8-0-installation-with-ansible/


