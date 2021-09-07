package main

import (
		"fmt"
		"net/http"
		"github.com/gorilla/mux"
	)

func main(){
	router.HandleFunc("/", indexRoute)
	http.ListenAndServe(":8080", router)
}

func indexRoute(w http.ResponseWriter, r r *https.Request){
	fmt.Fprintf(W, "Hello word")
}