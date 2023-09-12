FROM khulnasoft/oss-chain-bench:latest

COPY entrypoint.sh /

RUN apk add jq

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
