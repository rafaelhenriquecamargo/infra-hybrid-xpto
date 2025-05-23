Arquitetura da Solução Híbrida - XPTO

🎯 Objetivo

Modernizar a infraestrutura on-premises da empresa XPTO adotando uma abordagem híbrida (cloud + local), garantindo alta disponibilidade, segurança, escalabilidade, governança e automação.

🌐 Visão Geral da Arquitetura

A solução adota um modelo híbrido com integração segura entre o data center on-premises e o Microsoft Azure via VPN Gateway.

Componentes principais:

On-Premises:

VMs legadas com serviços monolíticos (controle de lançamentos e consolidado diário)

Cloud (Azure):

Azure Kubernetes Service (AKS) para microsserviços escaláveis

Azure Functions para execução serverless de tarefas específicas

Azure PostgreSQL como banco de dados gerenciado

Azure Redis Cache para otimização de desempenho

Application Gateway + WAF para balanceamento de carga e proteção

Azure Monitor + Log Analytics para observabilidade

🔐 Segurança e Protocolos

Conexões seguras: VPN entre Azure e o ambiente on-premises

Gerenciamento e acesso:

SSH com chave pública para acesso a VMs

HTTPS para comunicação entre clientes e serviços

TLS entre serviços internos (API Gateway, banco de dados, etc)

Segredos e credenciais: armazenados no Azure Key Vault

🔁 Tráfego de Rede

Usuário → Application Gateway (WAF) → AKS / Azure Function
                                   ↘ VPN → VMs on-prem

AKS consome serviços on-prem via VPN

Serviços on-prem podem ser desacoplados gradualmente para AKS

⚙️ Kubernetes vs Serverless

AKS (Kubernetes):

Ideal para microsserviços que exigem controle, escalabilidade e orquestração

Aplicado nos serviços que compõem o consolidado diário

Azure Functions (Serverless):

Ideal para tarefas baseadas em eventos como envio de relatórios, ETL leve, notificações

Aplicado a processos de integração e jobs assíncronos

🗂️ Banco de Dados e Cache

Azure PostgreSQL: banco de dados relacional para controle de lançamentos

Redis Cache: cache de leitura para melhorar performance nos acessos ao consolidado

🧱 Justificativa da Arquitetura

Flexibiliza a migração por fases

Minimiza lock-in em nuvem com uso de padrões abertos (Kubernetes, PostgreSQL)

Permite alta disponibilidade com Zonas de Disponibilidade e Failover geo-redundante

Reduz custos operacionais com automação e serverless

📌 Considerações

O desenho considera failover com réplicas em múltiplas regiões

A escalabilidade horizontal automática do AKS será utilizada para picos de uso promocional

Estratégias de FinOps serão aplicadas para garantir uso eficiente de recursos
