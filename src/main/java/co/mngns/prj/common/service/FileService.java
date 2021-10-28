package co.mngns.prj.common.service;

import java.util.List;

import co.mngns.prj.common.vo.FileUploadVO;
import co.mngns.prj.common.vo.FileVO;

public interface FileService {
	List<FileVO> FileList();
	int FileSelectList(FileVO file);
	int FileInsert(FileUploadVO file);
	int FileUpdate(FileVO file);
	int FileDelete(FileVO file);
}
