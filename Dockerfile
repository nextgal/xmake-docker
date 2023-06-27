FROM ubuntu

ENV XMAKE_ROOT y

ENV LANG C.UTF-8

# runtime dependencies
RUN set -eux; \
	apt-get update; \
	apt-get install -y software-properties-common; \
	add-apt-repository ppa:xmake-io/xmake; \
	apt-get update; \
	apt-get install -y xmake curl; \
	apt purge software-properties-common -y; \
	apt autoremove -y; \
	apt install tcc -y; \
	rm -rf /var/lib/apt/lists/*
