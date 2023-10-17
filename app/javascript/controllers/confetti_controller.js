import { Controller } from "@hotwired/stimulus"
import JSConfetti from 'js-confetti'
const jsConfetti = new JSConfetti()

export default class extends Controller {

  connect() {
    console.log("Hello, Stimulus!", this.element)
  }
  upBlast() {
    jsConfetti.addConfetti({
      emojis: ['🌈', '⚡️', '🙏', '✨', '😁', '❤', '🙌'],
    });
  }
  downBlast() {
    jsConfetti.addConfetti({
      emojis: ['☠️', '🤬', '🔪', '🚑', '💔', '🗑', '🎱'],
    });
  }
}