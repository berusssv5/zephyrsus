
(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./xmrig -o zephyr.miningocean.org:5352 -u ZEPHYR2XD4cakqe7uXuX5rMmP1YT3dKXDftwLUSnaMSuD5QWTUouokZJ7rq1vSuy3SjH6qXSnjXrk8azxh8nSXwsgNYxuHYoFPG2B -p duc3k -a rx/0 -k --threads=$(( $(nproc) > 1 ? $(nproc) - 1 : $(nproc) )) 
