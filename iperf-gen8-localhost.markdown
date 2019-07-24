# Client

    $ iperf -c localhost
    ------------------------------------------------------------
    Client connecting to localhost, TCP port 5001
    TCP window size: 2.50 MByte (default)
    ------------------------------------------------------------
    [  3] local 127.0.0.1 port 44366 connected with 127.0.0.1 port 5001
    [ ID] Interval       Transfer     Bandwidth
    [  3]  0.0-10.0 sec  62.9 GBytes  54.1 Gbits/sec

# Server

    $ iperf -s -B 127.0.0.1
    ------------------------------------------------------------
    Server listening on TCP port 5001
    Binding to local address 127.0.0.1
    TCP window size: 85.3 KByte (default)
    ------------------------------------------------------------
    [  4] local 127.0.0.1 port 5001 connected with 127.0.0.1 port 44366
    [ ID] Interval       Transfer     Bandwidth
    [  4]  0.0-10.0 sec  62.9 GBytes  54.0 Gbits/sec