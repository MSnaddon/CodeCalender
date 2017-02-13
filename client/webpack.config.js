config = {
  entry: "./src/app.js",
  output: {
    filename: "bundle.js",
    path: "./build"
  },
  resolve: {
    extensions: ['.js', '.jsx']
  },
  module:{
    loaders: [
      {
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel-loader', 
        query: {
          presets: ['es2015']
        }
      },
      {
       test: /\.tag$/,
       loader: 'tag',
       exclude: /(node_modules|bower_components)/
      }
    ]
  },
  devtool: 'source-map'
}

module.exports = config;
