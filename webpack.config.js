const { merge } = require("webpack-merge");
const singleSpaDefaults = require("webpack-config-single-spa-react-ts");

module.exports = (webpackConfigEnv, argv) => {
  const defaultConfig = singleSpaDefaults({
    orgName: "codehub",
    projectName: "art",
    webpackConfigEnv,
    argv,
  });

  return merge(defaultConfig, {
    devServer: {
      //publicPath: '/dist/',
      allowedHosts: ['localhost:9000'],
      compress: true,
      port: 8502
    }
    // modify the webpack config however you'd like to by adding to this object
  });
};
