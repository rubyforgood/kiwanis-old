import React, { useState } from 'react'
import { Menu } from 'antd';
import { MailOutlined, AppstoreOutlined, SettingOutlined } from '@ant-design/icons';

const { SubMenu } = Menu;

const Navigation = () => {

  const [current, setCurrent] = useState('mail')

  handleClick = e => {
    console.log('click ', e);
    setCurrent(e.key);
  };

  return (
    <Menu onClick={handleClick} selectedKeys={[current]} mode="horizontal">
      <Menu.Item key="mail" >
        <a href="/clubs">
          Clubs
        </a>
      </Menu.Item>
      <Menu.Item key="app">
        <a href="/events">
          Events
        </a>
      </Menu.Item>
      <Menu.Item key="alipay">
        <a href="/email">
          Email List
        </a>
      </Menu.Item>
    </Menu>
  );
  
}

// ReactDOM.render(<Navigation />, mountNode);
export default Navigation