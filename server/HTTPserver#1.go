// cd path/to/HTTPserver#1.go
// go build HTTPserver#1.go
// go run HTTPserver#1.go
// open http://localhost:8080 in your browser

package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi there, I love %s!", r.URL.Path[1:])
}

func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":8080", nil)
}
