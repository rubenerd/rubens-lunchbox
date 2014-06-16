*select your vm:*

  `xe vm-list`
  
*detect id of dom of its vm:*

  `xe vm-param-list uuid=8e2dd6ac-4883-0e6e-5cce-afbf214fa916 | grep dom-id`
  
*read vnc port by that dom_id:*

  `xenstore-read /local/domain/18/console/vnc-port`