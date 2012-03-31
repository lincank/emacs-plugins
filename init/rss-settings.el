(autoload 'newsticker-start "newsticker" "Emacs Newsticker" t)
(autoload 'newsticker-show-news "newsticker" "Emacs Newsticker" t)

(setq newsticker-url-list
	  (quote (
			  ("Solidot" "http://solidot.org.feedsportal.com/c/33236/f/556826/index.rss" nil nil nil)
			  ("LinuxTOY" "http://feeds.feedburner.com/linuxtoy" nil nil nil)
			  ("CNBeta" "http://www.cnbeta.com/backend.php" nil nil nil)
			  ("BaiduSearch" "http://stblog.baidu-tech.com/?feed=rss2" nil nil nil)
			  ("Taobao核心系统" "http://rdc.taobao.com/blog/cs/?feed=rss2" nil nil nil)
			  ("Taobao数据" "http://www.tbdata.org/feed" nil nil nil)
			  ("Taobao核心系统" "http://rdc.taobao.com/blog/cs/?feed=rss2" nil nil nil)
			  ("TaobaoJava中间件" "http://rdc.taobao.com/team/jm/feed" nil nil nil)
			  ("Taobao量子统计" "http://www.linezing.com/blog/?feed=rss2" nil nil nil)
			  )))
(newsticker-show-news)