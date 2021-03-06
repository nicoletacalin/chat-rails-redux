import React from 'react';
import ChannelList from '../containers/channel_list';
import MessageList from '../containers/message_list';

import logo from '../../../assets/images/logo.png';

const App = (props) => {
  return (
    <div className="messaging-wrapper">
      <div className="logo-container">
      </div>
      <ChannelList selectedChannel={props.match.params.channel} />
      <MessageList selectedChannel={props.match.params.channel} />
    </div>
  );
};

export default App;
