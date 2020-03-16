#!/bin/bash
echo ">>> Here is Golang Proxy Setup Scripts."
echo "@ Turn on GOlang 1.11 module feature"
go env -w GO111MODULE=on
echo "@ Set GoProxy address: https://goproxy.cn  direct mode"
go env -w GOPROXY=https://goproxy.cn,direct

# Belows are go plugin & componments, using go get command getting.
echo "@ gocode plugin => github.com/mdempsky/gocode "
go get -u -v github.com/mdempsky/gocode
echo "@ gopkgs plugin => githuh.com/uudashr/gopkgs/cmd/gopkgs"
go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
echo "@ go-outline plugin => github.com/ramya-rao-a/go-outline"
go get -u -v github.com/ramya-rao-a/go-outline
echo "@ go-symbols plugin => github.com/acroca/go-symbols"
go get -u -v github.com/acroca/go-symbols
echo "@ guru plugin => golang.org/x/tools/cmd/guru"
go get -u -v golang.org/x/tools/cmd/guru
echo "@ gorename plugin => golang.org/x/tools/cmd/gorename"
go get -u -v golang.org/x/tools/cmd/gorename
echo "@ dlv plugin => github.com/go-delve/delve/cmd/dlv"
go get -u -v github.com/go-delve/delve/cmd/dlv
echo "@ gocode plugin => github.com/stamblerre/gocode"
go get -u -v github.com/stamblerre/gocode
echo "@ godef plugin => github.com/rogpeppe/godef"
go get -u -v github.com/rogpeppe/godef
echo "@ goimports plugin => golang.org/x/tools/cmd/goimports"
go get -u -v golang.org/x/tools/cmd/goimports
echo "@ golint plugin => golang.org/x/lint/golint"
go get -u -v golang.org/x/lint/golint
echo "@ gopls plugin => golang.org/x/tools/cmd/gopls"
go get -u -v golang.org/x/tools/cmd/gopls
echo "@ gotests plugin => github.com/cweill/gotests"
go get -u -v github.com/cweill/gotests/... 
echo "@ gomodifytags plugin => github.com/fatih/gomodifytags"
go get -u -v github.com/fatih/gomodifytags
echo "@ impl plugin => github.com/josharian/impl"
go get -u -v github.com/josharian/impl
echo "@ fillstruct plugin => github.com/davidrjenni/reftools/cmd/fillstruct"
go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
echo "@ goplay plugin => github.com/haya14busa/goplay/cmd/goplay"
go get -u -v github.com/haya14busa/goplay/cmd/goplay
echo "@ godoctor plugin => github.com/godoctor/godoctor"
go get -u -v github.com/godoctor/godoctor 