package main

import (

   "fmt"
   "html"
   "log"
   "net/http"

//   "github.com/RangelReale/osin"

)

// TestStorage implements the "osin.Storage" interface
server := osin.NewServer(osin.NewServerConfig(), &TestStorage{})

// Authorization code endpoint
http.HandleFunc("/authorize", func(w http.ResponseWriter, r *http.Request) {
    resp := server.NewResponse()
    defer resp.Close()

    if ar := server.HandleAuthorizeRequest(resp, r); ar != nil {

        // HANDLE LOGIN PAGE HERE

        ar.Authorized = true
        server.FinishAuthorizeRequest(resp, r, ar)
    }
    osin.OutputJSON(resp, w, r)
})

// Access token endpoint
http.HandleFunc("/token", func(w http.ResponseWriter, r *http.Request) {
    resp := server.NewResponse()
    defer resp.Close()

    if ar := server.HandleAccessRequest(resp, r); ar != nil {
        ar.Authorized = true
        server.FinishAccessRequest(resp, r, ar)
    }
    osin.OutputJSON(resp, w, r)
})

http.ListenAndServe(":14000", nil)
\
