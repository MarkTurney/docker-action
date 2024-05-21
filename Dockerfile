FROM alpine:3.10

RUN echo "#!/bin/sh -l" > /entrypoint.sh \
  && echo "echo '++++++++ FROM ENTRYPOINT.sh +++++++++'" >> /entrypoint.sh \
  && chmod +x /entrypoint.sh

RUN echo "#!/bin/sh -l" > /post-entrypoint.sh \
  && echo "echo '++++++++ FROM POST-ENTRYPOINT.sh +++++++++'" >> /post-entrypoint.sh \
  && chmod +x /post-entrypoint.sh
