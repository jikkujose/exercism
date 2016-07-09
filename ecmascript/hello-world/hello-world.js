export default class HelloWorld {
  hello(name = '') {
    let greeted = name == '' ? 'World' : name;

    return(
      `Hello, ${greeted}!`
    );
  }
}
