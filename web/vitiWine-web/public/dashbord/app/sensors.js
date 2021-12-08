function lm35(min, max) {
  min = typeof min == "undefined" ? 15 : min;
  max = typeof max == "undefined" ? 30 : max;

  let random = Math.random() * (max - min) + min;

  return random;
}


module.exports = { lm35};
