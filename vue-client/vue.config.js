module.exports = {
    devServer: {
        proxy: {
            '^/api': {
                target: 'http://127.0.0.1:8000',
                changeOrigin: true,
                secure: false,
                pathRewrite: {'^/api': '/api/'},
                logLevel: 'debug'
            },
        },
        allowedHosts: ['127.0.0.1:8000'],
        overlay: {
            warnings: true,
            errors: true
        }
    }
};

