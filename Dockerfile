FROM alpine:3.10

RUN echo "#!/bin/sh -l" > /entrypoint.sh \
  && echo "echo '++++++++ FROM ENTRYPOINT.sh +++++++++" >> /entrypoint.sh \
  && chmod +x /entrypoint.sh
