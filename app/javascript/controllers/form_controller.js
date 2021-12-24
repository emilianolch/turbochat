import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.scroll({
      top: document.body.scrollHeight,
      behavior: 'instant'
    })
  }
  reset() {
    this.element.reset()

    // Scroll page to bottom
    const yPosition = document.body.offsetHeight + 1000
    window.scroll({
      top: yPosition,
      behavior: 'smooth'
    })
    console.log('scroll1000')
  }
}
