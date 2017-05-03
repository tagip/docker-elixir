# docker-elixir

Elixir docker image with longer hex timeout. Because hex has a default timeout of 15sec, installing dependencies from a low-speed internet connection can often break. This image use a cloned version of hex with a custom timeout of 90sec.

