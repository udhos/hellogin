#!/bin/bash

go get github.com/gin-gonic/gin

gofmt -s -w *.go
go tool fix *.go
go tool vet .

go test -v .
go install .

