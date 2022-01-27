# dontknow-userbot
# Copyright (C) 2021-2022 dontknow
# This file is a part of < https://github.com/merarundme/dontknow/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM github.mrarunDME/dontknow

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://heroku.com/deploy?template=https://github.com/mrarunDME/dont-know/tree/LEGEND /root/ \
    && pip3 install --no-cache-dir -r root/mrarundme/requirements.txt \
    && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/dontknow/

# start the bot
CMD ["bash", "startup"]
