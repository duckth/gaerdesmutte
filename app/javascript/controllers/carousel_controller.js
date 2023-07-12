import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  static targets = ["image"]

  connect() {
    this.index = 0
  }

  previous() {
    if (this.index > 0) {
      this.imageTargets[this.index].classList.add("hidden")
      this.index -= 1
      this.imageTargets[this.index].classList.remove("hidden")
    }
  }
  
  next() {
    if (this.index < this.imageTargets.length - 1) {
      this.imageTargets[this.index].classList.add("hidden")
      this.index += 1
      this.imageTargets[this.index].classList.remove("hidden")
    }
  }
}
