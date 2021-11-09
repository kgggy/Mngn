package co.mngns.prj.common.service;

import java.util.List;

import co.mngns.prj.common.vo.FilesVO;

public interface FileService {
	List<FilesVO> FileList();
	int FileSelectList(FilesVO file);
	int FileInsert(FilesVO file);
	int FileUpdate(FilesVO file);
	int FileDelete(FilesVO file);
}
