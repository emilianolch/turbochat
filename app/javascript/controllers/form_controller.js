import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
    this.element.reset()

    // Scroll page to bottom
    // Not workings
    console.log('hello worldsss')
    const { scrollHeight, clientHeight, offsetHeight } = this.element
    if (scrollHeight >= clientHeight) {
      this.element.scrollTop = scrollHeight - clientHeight
    }
  }
}
