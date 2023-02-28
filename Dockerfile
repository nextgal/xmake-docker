FROM debian:bullseye

ENV XMAKE_ROOT y

ENV LANG C.UTF-8

# runtime dependencies
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		build-essential curl; \
	rm -rf /var/lib/apt/lists/*

RUn curl --insecure -fsSL https://xmake.io/shget.text --output shget.text; \
  bash shget.text; \
  rm shget.text
