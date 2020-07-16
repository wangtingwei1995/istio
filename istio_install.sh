VERSION=1.6.3
if [ ! -f "istio-$VERSION-linux-amd64.tar.gz" ];then
  wget https://github.com/istio/istio/releases/download/$VERSION/istio-$VERSIONlinux-amd64.tar.gz
else
  echo "本地已经存在istio-$VERSION-linux-amd64.tar.gz文件，可以直接解压" && sleep 3
fi
tar -xvzf istio-$VERSION-linux-amd64.tar.gz 
cp istio-$VERSION/bin/istioctl /usr/bin/
istioctl version
istioctl manifest apply --set profile=demo
