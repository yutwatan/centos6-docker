# どのイメージを基にするか
FROM centos:centos6

# 作成したユーザの情報
LABEL maintainer="yutwatan <yutwatan@yahoo.co.jp>"

ENV TZ Asia/Tokyo

RUN echo "now building..."
RUN yum install -y \
    epel-release \
    git \
    sudo \
    vim
RUN yum install -y colordiff
RUN useradd -d /home/yutwatan -g users -m -s /bin/bash yutwatan

# CMD: docker runするときに実行される
CMD ["/bin/bash"]

