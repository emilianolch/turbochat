import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.scrollTo(0, document.body.scrollHeight)
  }
  reset() {
    this.element.reset()

    // Scroll page to bottom
    window.scrollTo(0, document.body.scrollHeight)
  }
}
