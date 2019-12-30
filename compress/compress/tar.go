package compress

import (
	"archive/tar"
	"bytes"
	"compress/gzip"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
)

func WithTar() {
	inst := &withTarPkg{}
	//inst.tarballContainDir()
	inst.gzippedTarball()
}

type withTarPkg struct{}

func (wtp *withTarPkg) tarballContainDir() {
	files := map[string][]string{
		"a/": []string{"1.txt", "2.txt"},
		"b/": []string{"1.txt", "2.txt"},
	}
	data := "hello, world"

	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)

	for dir, fs := range files {
		hdr := tar.Header{
			Name: dir,
			Mode: 0755,
		}
		//create directory
		tw.WriteHeader(&hdr)
		for _, f := range fs {
			fdr := tar.Header{
				Name: filepath.Join(dir, f),
				Mode: 0644,
				Size: int64(len(data)),
			}
			tw.WriteHeader(&fdr)
			tw.Write([]byte(data))
		}
	}
	tw.Flush()
	defer tw.Close()

	if out := ioutil.WriteFile("./test.tar", buf.Bytes(), os.ModePerm); out != nil {
		log.Println(out)
	}
}

func (wtp *withTarPkg) gzip(data []byte) []byte {
	var cdata bytes.Buffer
	gw, _ := gzip.NewWriterLevel(&cdata, gzip.DefaultCompression)
	gw.Write([]byte(data))
	gw.Close()
	return cdata.Bytes()
}
func (wtp *withTarPkg) gzippedTarball() {
	files := map[string][]string{
		"a/": []string{"1.txt", "2.txt"},
		"b/": []string{"1.txt", "2.txt"},
	}
	data := "hello, world"

	var buf bytes.Buffer
	tw := tar.NewWriter(&buf)

	for dir, fs := range files {
		hdr := tar.Header{
			Name: dir,
			Mode: 0755,
		}
		//create directory
		tw.WriteHeader(&hdr)
		for _, f := range fs {
			fdr := tar.Header{
				Name: filepath.Join(dir, f),
				Mode: 0644,
				Size: int64(len(data)),
			}
			tw.WriteHeader(&fdr)
			tw.Write([]byte(data))
		}
	}
	tw.Close()

	compressed := wtp.gzip(buf.Bytes())

	if out := ioutil.WriteFile("./test.tar.gz", compressed, os.ModePerm); out != nil {
		log.Println(out)
	}
}
