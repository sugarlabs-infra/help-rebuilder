import os
import fedmsg

fedmsg.init(name='prod')
for name, endpoint, topic, msg in fedmsg.tail_messages():
    if topic == 'org.sugarlabs.prod.hookin.hookS' and \
       msg['msg']['clone_url'] == 'https://github.com/godiard/help-activity':
        os.system('git pull')
        os.system('make html')
