'use strict';

var React = require('react-native');
var {
  Text,
  View,
  Image,
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'red'
  }
});

class SimpleApp extends React.Component {
  render() {
    return (
      <View style={styles.container}>
      <Image style = {{width : 30, height : 30}}
             source = {{uri : 'second'}} />
        <Text>This is a simple application.</Text>
      </View>
    )
  }
}

React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);