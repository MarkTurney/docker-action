FROM alpine:3.10

# Create /pre-entrypoint.sh
RUN echo "#!/bin/sh -l" > /pre-entrypoint.sh \
  && echo "echo '++++++++ FROM PRE-ENTRYPOINT.sh +++++++++'" >> /pre-entrypoint.sh \
  && chmod +x /pre-entrypoint.sh

# Create /entrypoint.sh
RUN echo "#!/bin/sh -l" > /entrypoint.sh \
  && echo "echo '++++++++ FROM ENTRYPOINT.sh +++++++++'" >> /entrypoint.sh \
  && chmod +x /entrypoint.sh

# Create /post-entrypoint.sh
RUN echo "#!/bin/sh -l" > /post-entrypoint.sh \
  && echo "echo '++++++++ FROM POST-ENTRYPOINT.sh +++++++++'" >> /post-entrypoint.sh \
  && chmod +x /post-entrypoint.sh
