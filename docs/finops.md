Estratégia FinOps

A adoção de práticas FinOps visa garantir o equilíbrio entre performance, escalabilidade e controle de custos durante toda a operação da infraestrutura híbrida da XPTO.

🔄 Otimização de Recursos

Escalabilidade Automática (AKS): permite escalar horizontalmente os pods e nodes com base em métricas de CPU/memória.

Serverless (Azure Functions): cobrança baseada em execução; ideal para cargas esporádicas ou por evento.

Desligamento automático: scripts via Azure Automation desligam recursos fora do horário comercial (ambientes dev/test).

Instâncias Reservadas: para bancos de dados e VMs que exigem disponibilidade contínua (ex: PostgreSQL), aproveita descontos com reserva de 1 ou 3 anos.

💸 Acompanhamento de Custos

Azure Cost Management + Power BI: dashboards para análise de consumo, alertas de budget e tendências de uso.

Tags: uso de env, owner, application para identificar responsáveis e ambientes (prod/dev/test).

Políticas com Azure Policy: para evitar criação de recursos fora dos padrões definidos.
