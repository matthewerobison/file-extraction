@load ../__load__

module FileExtraction;

const custom_types: set[string] = { "application/x-rar-compressed",
									"application/x-bzip2",
									"application/gzip",
									"application/x-lzma",
									"application/x-lzip",
									"application/x-xz",
									"application/x-lzop",
									"application/x-compress",
									"application/x-7z-compressed",
									"application/x-ace-compressed",
									"application/vnd.ms-cab-compressed",
									"application/x-gtar",
									"application/zip",
									"text/plain",
									"image/png",
									"image/jpeg",
									"text/ini",
									"text/html",
									"application/javascript",
									"image/gif",
									"image/x-icon",
									"text/json",
									"image/svg+xml",
									"application/x-shockwave-flash",
									"application/java-archive",
									"application/x-java-applet",
									"application/x-java-jnlp-file",
									"application/msword",
									"application/vnd.openxmlformats-officedocument.wordprocessingml.document",
									"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
									"application/vnd.openxmlformats-officedocument.presentationml.presentation",
									"application/pdf",
									"application/x-dosexec",
								  };

hook FileExtraction::extract(f: fa_file, meta: fa_metadata) &priority=5
	{
	if ( meta$mime_type in custom_types )
		break;
	}
