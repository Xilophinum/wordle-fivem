<template>
	<div id="container" v-show="uiOpen">
		<div id="open-sequence" v-show="openingSequence">
			<span><font-awesome-icon class="icon" icon="user-secret" /> {{titleSequence}}</span>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="10" :style="{backgroundColor: getLetterColor(firstLineFinal, 0)}"><span>{{firstLine[0] ? firstLine[0] : ""}}</span></div>
			<div class="letter" ref="11" :style="{backgroundColor: getLetterColor(firstLineFinal, 1)}"><span>{{firstLine[1] ? firstLine[1] : ""}}</span></div>
			<div class="letter" ref="12" :style="{backgroundColor: getLetterColor(firstLineFinal, 2)}"><span>{{firstLine[2] ? firstLine[2] : ""}}</span></div>
			<div class="letter" ref="13" :style="{backgroundColor: getLetterColor(firstLineFinal, 3)}"><span>{{firstLine[3] ? firstLine[3] : ""}}</span></div>
			<div class="letter" ref="14" :style="{backgroundColor: getLetterColor(firstLineFinal, 4)}"><span>{{firstLine[4] ? firstLine[4] : ""}}</span></div>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="20" :style="{backgroundColor: getLetterColor(secondLineFinal, 0)}"><span>{{secondLine[0] ? secondLine[0] : ""}}</span></div>
			<div class="letter" ref="21" :style="{backgroundColor: getLetterColor(secondLineFinal, 1)}"><span>{{secondLine[1] ? secondLine[1] : ""}}</span></div>
			<div class="letter" ref="22" :style="{backgroundColor: getLetterColor(secondLineFinal, 2)}"><span>{{secondLine[2] ? secondLine[2] : ""}}</span></div>
			<div class="letter" ref="23" :style="{backgroundColor: getLetterColor(secondLineFinal, 3)}"><span>{{secondLine[3] ? secondLine[3] : ""}}</span></div>
			<div class="letter" ref="24" :style="{backgroundColor: getLetterColor(secondLineFinal, 4)}"><span>{{secondLine[4] ? secondLine[4] : ""}}</span></div>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="30" :style="{backgroundColor: getLetterColor(thirdLineFinal, 0)}"><span>{{thirdLine[0] ? thirdLine[0] : ""}}</span></div>
			<div class="letter" ref="31" :style="{backgroundColor: getLetterColor(thirdLineFinal, 1)}"><span>{{thirdLine[1] ? thirdLine[1] : ""}}</span></div>
			<div class="letter" ref="32" :style="{backgroundColor: getLetterColor(thirdLineFinal, 2)}"><span>{{thirdLine[2] ? thirdLine[2] : ""}}</span></div>
			<div class="letter" ref="33" :style="{backgroundColor: getLetterColor(thirdLineFinal, 3)}"><span>{{thirdLine[3] ? thirdLine[3] : ""}}</span></div>
			<div class="letter" ref="34" :style="{backgroundColor: getLetterColor(thirdLineFinal, 4)}"><span>{{thirdLine[4] ? thirdLine[4] : ""}}</span></div>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="40" :style="{backgroundColor: getLetterColor(fourthLineFinal, 0)}"><span>{{fourthLine[0] ? fourthLine[0] : ""}}</span></div>
			<div class="letter" ref="41" :style="{backgroundColor: getLetterColor(fourthLineFinal, 1)}"><span>{{fourthLine[1] ? fourthLine[1] : ""}}</span></div>
			<div class="letter" ref="42" :style="{backgroundColor: getLetterColor(fourthLineFinal, 2)}"><span>{{fourthLine[2] ? fourthLine[2] : ""}}</span></div>
			<div class="letter" ref="43" :style="{backgroundColor: getLetterColor(fourthLineFinal, 3)}"><span>{{fourthLine[3] ? fourthLine[3] : ""}}</span></div>
			<div class="letter" ref="44" :style="{backgroundColor: getLetterColor(fourthLineFinal, 4)}"><span>{{fourthLine[4] ? fourthLine[4] : ""}}</span></div>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="50" :style="{backgroundColor: getLetterColor(fifthLineFinal, 0)}"><span>{{fifthLine[0] ? fifthLine[0] : ""}}</span></div>
			<div class="letter" ref="51" :style="{backgroundColor: getLetterColor(fifthLineFinal, 1)}"><span>{{fifthLine[1] ? fifthLine[1] : ""}}</span></div>
			<div class="letter" ref="52" :style="{backgroundColor: getLetterColor(fifthLineFinal, 2)}"><span>{{fifthLine[2] ? fifthLine[2] : ""}}</span></div>
			<div class="letter" ref="53" :style="{backgroundColor: getLetterColor(fifthLineFinal, 3)}"><span>{{fifthLine[3] ? fifthLine[3] : ""}}</span></div>
			<div class="letter" ref="54" :style="{backgroundColor: getLetterColor(fifthLineFinal, 4)}"><span>{{fifthLine[4] ? fifthLine[4] : ""}}</span></div>
		</div>
		<div class="line-box" v-show="!openingSequence">
			<div class="letter" ref="60" :style="{backgroundColor: getLetterColor(sixthLineFinal, 0)}"><span>{{sixthLine[0] ? sixthLine[0] : ""}}</span></div>
			<div class="letter" ref="61" :style="{backgroundColor: getLetterColor(sixthLineFinal, 1)}"><span>{{sixthLine[1] ? sixthLine[1] : ""}}</span></div>
			<div class="letter" ref="62" :style="{backgroundColor: getLetterColor(sixthLineFinal, 2)}"><span>{{sixthLine[2] ? sixthLine[2] : ""}}</span></div>
			<div class="letter" ref="63" :style="{backgroundColor: getLetterColor(sixthLineFinal, 3)}"><span>{{sixthLine[3] ? sixthLine[3] : ""}}</span></div>
			<div class="letter" ref="64" :style="{backgroundColor: getLetterColor(sixthLineFinal, 4)}"><span>{{sixthLine[4] ? sixthLine[4] : ""}}</span></div>
		</div>
	</div>
</template>

<script>
const Letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
import { WORDS } from './words'
const sleep = m => new Promise(r => setTimeout(r, m))

export default {
    name: 'App',
    components: {
      
    },
	data() {
		return {
			uiOpen: false,
			openingSequence: false,
			titleSequence: "Initializing Hack...",
			chosenWord: ["B", "L", "A", "N", "K"],
			firstLine: [],
			firstLineFinal: [],
			firstRound: true,
			secondLine: [],
			secondLineFinal: [],
			secondRound: false,
			thirdLine: [],
			thirdLineFinal: [],
			thirdRound: false,
			fourthLine: [],
			fourthLineFinal: [],
			fourthRound: false,
			fifthLine: [],
			fifthLineFinal: [],
			fifthRound: false,
			sixthLine: [],
			sixthLineFinal: [],
			sixthRound: false,
		}
	},
	methods: {
		eventHandler: function(event) {
            let action = event.data.action;
            if (action == "open") {
				this.openingSequence = true
				let sWords = this.shuffle(WORDS);
				let newWord = sWords[Math.floor(Math.random()*sWords.length)].toUpperCase();
				this.chosenWord = newWord.split("");
                this.uiOpen = true;
				this.beginSequence();
            }
			if (action == "close") {
                return this.close()
            }
		},
		keyupHandler: function(e) {
			if (e.which == 27) {
				this.close()
				return this.postMessage('didWin', {success: false})
			} else if (e.which == 13) {
				return this.solve()
			} else if (e.which == 8) {
				return this.removeLetter()
			} else {
				return this.addLetter(e)
			}
		},
		beginSequence: async function() {
			this.titleSequence = "Initializing Hack..."
			await sleep(2200)
			this.titleSequence = "Decrypting System..."
			await sleep(2200)
			this.titleSequence = "Decryption complete... Awaiting user verification"
			await sleep(2200)
			this.titleSequence = ""
			this.openingSequence = false
		},
		close: function() {
			this.firstRound = true
			this.secondRound = false
			this.thirdRound = false
			this.fourthRound = false
			this.fifthRound = false
			this.sixthRound = false
			this.firstLine = []
			this.secondLine = []
			this.thirdLine = []
			this.fourthLine = []
			this.fifthLine = []
			this.sixthLine = []
			this.firstLineFinal = []
			this.secondLineFinal = []
			this.thirdLineFinal = []
			this.fourthLineFinal = []
			this.fifthLineFinal = []
			this.sixthLineFinal = []
			this.openingSequence = false
			let letters = document.getElementsByClassName("letter");
			for (let i = 0; i < letters.length; i++) {
				letters[i].classList.remove("flipInY");
			}
			return this.uiOpen = false
		},
		solve: async function() {
			let correct = true
			if (this.firstRound && this.firstLine.length == 5) {
				this.firstRound = false
				this.secondRound = true
				let letters = [...this.firstLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${1}${i}`)].classList.add("flipInY");
					this.firstLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.firstLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, false)
			} else if (this.secondRound && this.secondLine.length == 5) {
				this.secondRound = false
				this.thirdRound = true
				let letters = [...this.secondLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${2}${i}`)].classList.add("flipInY");
					this.secondLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.secondLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, false)
			} else if (this.thirdRound && this.thirdLine.length == 5) {
				this.thirdRound = false
				this.fourthRound = true
				let letters = [...this.thirdLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${3}${i}`)].classList.add("flipInY");
					this.thirdLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.thirdLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, false)
			} else if (this.fourthRound && this.fourthLine.length == 5) {
				this.fourthRound = false
				this.fifthRound = true
				let letters = [...this.fourthLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${4}${i}`)].classList.add("flipInY");
					this.fourthLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.fourthLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, false)
			} else if (this.fifthRound && this.fifthLine.length == 5) {
				this.fifthRound = false
				this.sixthRound = true
				let letters = [...this.fifthLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${5}${i}`)].classList.add("flipInY");
					this.fifthLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.fifthLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, false)
			} else if (this.sixthRound && this.sixthLine.length == 5) {
				let letters = [...this.sixthLine]
				for (let i = 0; i < 5; i++) {
					this.$refs[Number(`${6}${i}`)].classList.add("flipInY");
					this.sixthLineFinal.push(letters.shift());
					await sleep(500)
				}
				for (let i = 0; i < 5; i++) {
					if (this.chosenWord[i] !== this.fifthLineFinal[i]) { correct = false }
				}
				this.checkWinner(correct, true)
			}
		},
		removeLetter: function() {
			if (this.firstRound) {
				this.firstLine.pop();
			} else if (this.secondRound) {
				this.secondLine.pop();
			} else if (this.thirdRound) {
				this.thirdLine.pop();
			} else if (this.fourthRound) {
				this.fourthLine.pop();
			} else if (this.fifthRound) {
				this.fifthLine.pop();
			} else if (this.sixthRound) {
				this.sixthLine.pop();
			}
		},
		addLetter: function(e) {
			let key = e.key.toUpperCase()
			if (Letters.includes(key)) {
				if (this.firstRound && this.firstLine.length < 5) {
					this.firstLine.push(key)
				} else if (this.secondRound && this.secondLine.length < 5) {
					this.secondLine.push(key)
				} else if (this.thirdRound && this.thirdLine.length < 5) {
					this.thirdLine.push(key)
				} else if (this.fourthRound && this.fourthLine.length < 5) {
					this.fourthLine.push(key)
				} else if (this.fifthRound && this.fifthLine.length < 5) {
					this.fifthLine.push(key)
				} else if (this.sixthRound && this.sixthLine.length < 5) {
					this.sixthLine.push(key)
				}
			}
		},
		getLetterColor: function(letters, index) {
			if (this.firstLine.length < 5) return;
			let letter = letters[index]
			if (letter) {
				if (this.chosenWord.includes(letter)) {
					let wordIDX = this.chosenWord.indexOf(letter);
					if (wordIDX !== -1 && wordIDX == index) return 'green'
					let wordIDXLast = this.chosenWord.lastIndexOf(letter);
					if (wordIDXLast !== -1 && wordIDXLast == index) return 'green'
					return '#c1c41a' // Yellow
				}
				return 'grey'
			} else {
				return ''
			}
		},
		shuffle: function(arr) {
			let shuffled = arr
				.map(value => ({ value, sort: Math.random() }))
				.sort((a, b) => a.sort - b.sort)
				.map(({ value }) => value)
			return shuffled;
		},
		postMessage: function(endpoint, data) {
			/*global GetParentResourceName*/
			/*eslint no-undef: "error"*/
			fetch(`http://${GetParentResourceName()}/${endpoint}`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify(data)
            })
		},
		checkWinner: async function(solved, doEnd) {
			if (solved) {
				await sleep(1000)
				this.close()
				this.postMessage('didWin', {success: true})
			} else if (doEnd) {
				await sleep(1000)
				this.close()
				this.postMessage('didWin', {success: false})
			}
		}
	},
	mounted(){
        window.addEventListener('message',this.eventHandler);
        document.addEventListener('keyup', this.keyupHandler);
    },
    beforeUnmount() {
        window.removeEventListener('message', this.eventHandler);
        document.removeEventListener('keyup', this.keyupHandler);
    },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}

#container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 30%;
	height: 70%;
	background-color: #2c3e50;
}

#open-sequence {
	position: absolute;
	width: 100%;
	height: 50%;
	top: 25%;
	background-color: #2c3e50;
	display: flex;
	justify-content: center;
	vertical-align: middle;
	align-items: center;
}

#open-sequence span {
	color: white;
	font-size: 1.5rem;
}

.line-box {
	display: flex;
	flex-flow: row nowrap;
	justify-content: space-evenly;
	vertical-align: middle;
	align-items: center;
	width: 100%;
	height: 16.66666666666667%;
}

.letter {
	border: 2px solid rgb(255, 255, 255);
	width: 18%;
	height: 90%;
	margin: 3px;
	display: flex;
	justify-content: center;
	vertical-align: middle;
	align-items: center;
	background-color: #2c3e50;
}
.letter span {
	color: white;
	font-size: 8vh;
	font-weight: bold;
}

@keyframes flipInY {
  from {
    transform: perspective(400px) rotate3d(0, 1, 0, 90deg);
    animation-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    transform: perspective(400px) rotate3d(0, 1, 0, -20deg);
    animation-timing-function: ease-in;
  }

  60% {
    transform: perspective(400px) rotate3d(0, 1, 0, 10deg);
    opacity: 1;
  }

  80% {
    transform: perspective(400px) rotate3d(0, 1, 0, -5deg);
  }

  to {
    transform: perspective(400px);
  }
}

.flipInY {
	animation: flipInY 2s ease;
	transition: .5s;
}
</style>
