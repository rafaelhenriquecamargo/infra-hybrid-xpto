Aplicação do Modelo OSI na Infraestrutura XPTO

A estrutura da solução considera as camadas do modelo OSI para diagnósticos, segurança e desempenho de rede.

📶 Camada 1 - Física

Conectividade on-prem: redundância de links com ISPs distintos

Infraestrutura de datacenter com equipamentos de energia e refrigeração controlados

🌐 Camada 2 - Enlace de Dados

Segmentação de VLANs em switches e roteadores on-prem

Diagnóstico de MAC address conflicts, broadcast storms

🛰️ Camada 3 - Rede

Subnetting entre on-prem e Azure

Roteamento dinâmico com BGP (VPN Gateway)

Monitoramento de IP flow logs e route tables

🌍 Camada 4 - Transporte

Monitoramento de conexões TCP e UDP (latência, timeouts)

Verificação de handshakes e retransmissões com Packet Capture

🌐 Camada 5 - Sessão

Sessões seguras com TLS e controle de estado por firewall

📁 Camada 6 - Apresentação

Padrões de criptografia (AES-256), compressão de payloads JSON

Integração de APIs com autenticação via OAuth2

💻 Camada 7 - Aplicação

Protocolos como HTTPS, SSH, SMTP utilizados com segurança

Logs de requests via Application Gateway, Application Insights e KQL

🎯 Benefícios

Diagnóstico eficiente e rápido por camada

Segurança em múltiplos níveis (defesa em profundidade)

Padronização na análise e mitigação de incidentes

Essa abordagem ajuda a XPTO a manter a eficiência e a segurança da infraestrutura híbrida em qualquer ponto da rede.
