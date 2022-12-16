import JavaScriptKit


let document = JSObject.global.document
let head:JSValue = document.head
let body:JSValue = document.body

print("body: \(body)")

//add a script tag to the head  
var script = document.createElement("script")
script.src = "https://jasonjsnell.com/nyu/dna/constants.js"
_ = head.appendChild(script)


//add p5.js to the head
var p5Script = document.createElement("script")
p5Script.src = "https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.0/p5.min.js"
_ = head.appendChild(p5Script)


//create main div
var mainDiv = document.createElement("div")
mainDiv.id = "main"
_ = body.appendChild(mainDiv)

//add p5 sketch to main div
var sketch:JSValue = document.createElement("script")
//sketch.src = "https://jasonjsnell.com/nyu/dna/sketch.js"
//add p5 setup function
sketch.innerHTML = "function setup() { createCanvas(400, 400); }; function draw() { background(220); var myVar=32; console.log(START); }"
_ = mainDiv.appendChild(sketch)



var divElement = document.createElement("div")
divElement.innerText = "Hello, world"
_ = document.body.appendChild(divElement)