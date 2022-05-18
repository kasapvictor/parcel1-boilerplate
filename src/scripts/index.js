const foo = () => {
  const d = 3;
  console.log('INDEX.JS1');
  return d;
};

const init = () => {
  const d = foo();
  console.log(d + 4);
};

init();
