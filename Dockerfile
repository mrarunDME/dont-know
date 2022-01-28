



FROM mrarundme/dont-know:main

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/mrarundme/dont-know /root/mrarundme/ \
    && pip3 install --no-cache-dir -r root/mrarundme/requirements.txt \
    && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/mrarunDME/

# start the bot
CMD ["bash", "startup"]
