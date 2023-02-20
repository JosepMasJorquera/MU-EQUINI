void mouseDragged() {
  // Comprova els drag sobre la gui (sliders)
    if (BodyY.mouseOnSlider()) {
    BodyY.updateSlider();
  } else if (X.mouseOnSlider()) {
    X.updateSlider();
  } else if (Y.mouseOnSlider()) {
    Y.updateSlider();
  } else if (Z.mouseOnSlider()) {
    Z.updateSlider();
  }
}
