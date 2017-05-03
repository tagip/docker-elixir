FROM elixir:1.4

# Install dependencies
RUN apt-get update && \
  apt-get install -yq --no-install-recommends git postgresql-client && \
  apt-get -y clean && \
  rm -rf /var/lib/apt/lists/*

# Install other dependencies 
RUN mix local.hex --force && \
  mix local.rebar --force

# Clone hex and install locally
RUN git clone https://github.com/tagip/hex.git && \
  cd hex && \
  git checkout custom-timeout-90s && \
  mix deps.get && \
  mix install
