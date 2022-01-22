let proxyObj = {}//代理对象

const isDev = "development" === process.env.NODE_ENV;

const host = isDev ? "127.0.0.1" : '192.168.100.145';

proxyObj['^/'] = {//代理路径
    //websocket
    ws: false,
    //目标地址
    // target: 'http://192.168.100.136:9090',
    target: 'http://localhost:9090',
    //发送请求头中host会设置成target
    changeOrigin: true,// 开启跨域
    //不重写请求地址
    pathReWrite: {
        '^/': '/'
    }
};

module.exports = {
    devServer: {
        //  host: '192.168.100.136',
        host,
        port: 8080,
        //port:91,
        proxy: `http://${host}:9090`
    }
};
