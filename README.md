# carton2


//install carton
brew install swiftwasm/tap/carton

//init new (I don't think you need this to run this existing project)
carton init --template basic

//edit code in Sources/carton2/carton2.swift
/*
currently it's loading a constants.js file from my server and the P5 sketch draw loop is logging the START variable. I was testing to see if I could load external variables and access them within the project.
*/

//spin up the server and run
carton dev