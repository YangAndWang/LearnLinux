/*gzip*/

-c,--stdout将解压缩的内容输出到标准输出,源文件保持不变
-d,--decompress解压缩
-f,--force强制覆盖旧文件
-l,--list列出压缩包内储存的原始文件的信息(如,解压后的名字、压缩率等)
-n,--no-name压缩时不保存原始文件的文件名和时间戳,解压缩时不恢复原始文件的文件名和时间戳(此时,解出来的文件,其文件名为压缩包的文件名)
-N，--name压缩时保存原始文件的文件名和时间戳，解压缩时恢复原始文件的文件名和时间戳
-q，--quiet抑制所有警告信息
-r，--recursive递归
-t，--test测试压缩文件完整性
-v，--verbose冗余模式（即显示每一步的执行内容）
-1、-2、...、-9压缩率依次增大，速度依次减慢，默认为-6



@https://www.gnu.org/software/gzip/manual/gzip.html

	gzip [OPTION]... [FILE]...

	-c, --stdout      write on standard output, keep original files unchanged
	-d, --decompress  decompress
	-f, --force       force overwrite of output file and compress links
	-h, --help        give this help
	-k, --keep        keep (don't delete) input files
	-l, --list        list compressed file contents
	-L, --license     display software license
	-n, --no-name     do not save or restore the original name and time stamp
	-N, --name        save or restore the original name and time stamp
	-q, --quiet       suppress all warnings
	-r, --recursive   operate recursively on directories
	-S, --suffix=SUF  use suffix SUF on compressed files
	-t, --test        test compressed file integrity
	-v, --verbose     verbose mode
	-V, --version     display version number
	-1, --fast        compress faster
	-9, --best        compress better
