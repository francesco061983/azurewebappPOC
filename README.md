# Cloud web app production ready infrastructure provisioning con Terraform

Poc per la configurazione di un'infrastruttura cloud su Azure di un'applicazione web (frontend e backend) tramite Terraform.  

## File di configurazione

1. `serviceplan.tf`: Configurazione dell'app service plan necessario all'utilizzo delle web app.
2. `frontapp.tf`: Configurazione della web app di frontend.
3. `rg.tf`: Configurazione del gruppo di risorse.
4. `roleassignment.tf`: Configurazione di ruoli per l'accesso tramite managed identity.
5. `storage.tf`: Configurazione dello storage account.
6. `variables.tf`: Variabili utilizzate nel progetto.
7. `providers.tf`: Settings per il provider Azure.
8. `backend.tf`: File di configurazione Terraform
9. `backapp.tf`: Configurazione della web app di backend.
10. `network.tf`: Configurazione di rete del progetto.

## Dettagli Infrastruttura

1. App Service plan (appserviceplan.tf): Questa risorsa crea un App Service plan in Azure, che conterrà le web app di frontend e backend.

2. Web App (frontapp.tf): Questa risorsa crea una web app per il front-end e la connesione alla subnet di integrazione.

3. Resource Group (rg.tf): Questa risorsa crea un resource group in Azure per organizzare e gestire le risorse associate all'applicazione.

4. Role Assignment (roleassignment.tf): Questa risorsa assegna il ruolo di contributor per la web app di backend sullo storage account per consentirgli l'accesso tramite managed identity.

5. Storage Account (storage.tf): Questa risorsa crea uno storage account che potrà essere utilizzato dall'app di backend.

6. Variabili di configurazione (variables.tf): Questo file contiene le variabili utilizzate nel progetto.

7. Settings per il provider Azure (providers.tf): Questo file contiene i parametri del provider Azure e le variabili per l'autenticazione.

8. File di configurazione Terraform (backend.tf): Questo file definisce la configurazione del backend Terraform.

9. Web App (backapp.tf): Questa risorsa crea una web app backend-end ed abilita la managed identity.

10. Network (network.tf): Questo file definisce la configurazione di rete del progetto.