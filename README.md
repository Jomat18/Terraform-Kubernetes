# Terraform

Terraform es una herramienta de orquestación que puede proporcionar infraestructura con código. En vez de abrir la Consola de administración de AWS o de Google Cloud para crear nuestros recursos, podemos hacerlo directamente con HCL (lenguaje de configuración de HashiCorp) a traves de codigo, lo que nos permite automatizar la creación de recursos.

## Requisitos Generales
* Instalación de terraform, puedes descargar el binario de: https://www.terraform.io/downloads.html , descomprimirlo y moverlo a la ruta mostrada debajo.

```bash
sudo mv ~/Downloads/terraform /usr/local/bin/
terraform version
```

## Requisitos en Google Cloud
Necesitará un archivo con las credenciales que Terraform necesita para interactuar con la API de Google Cloud para crear los recursos. Ve a la sección IAM y administración de la barra lateral de navegación de Google Cloud Console y selecciona Service Accounts. Una vez dentro, crea una cuenta de servicio, luego, se le pedirá que seleccione un rol. Puede seleccionar Proyecto: Editor. En la siguiente pagina, clic en crear clave y seleccione el tipo Json. Luego descargue el archivo y muevalo al directorio donde realizará el ejemplo

## Requisitos en AWS
* Cuenta en AWS
* Crear un usuario de IAM
* Instalación y configuración de AWS CLI
```bash
$ aws configure
AWS Access Key ID [None]: YOUR_AWS_ACCESS_KEY_ID
AWS Secret Access Key [None]: YOUR_AWS_SECRET_ACCESS_KEY
Default region name [None]: YOUR_AWS_REGION
Default output format [None]: json
```
Mas detalles del AWS CLI en: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

## Opcional
Para el ejemplo de Kubernetes necesitas instalar el kubectl los pasos los encuentras en: https://kubernetes.io/docs/tasks/tools/install-kubectl/

## Ejemplos de aprovisionamiento de recursos con Terraform

* Automatizar AWS con Terraform
* Automatizar Google Cloud con Terraform

```bash
terraform init 
terraform fmt
terraform validate 
terraform plan 
terraform apply
terraform output
terraform show
terraform state list
terraform graph | dot -Tpng > graph.png
terraform destroy -auto-approve
```