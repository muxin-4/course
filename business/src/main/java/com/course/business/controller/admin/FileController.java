package com.course.business.controller.admin;

import com.course.server.domain.File;
import com.course.server.dto.FileDto;
import com.course.server.dto.PageDto;
import com.course.server.dto.ResponseDto;
import com.course.server.exception.ValidatorException;
import com.course.server.service.FileService;
import com.course.server.util.ValidatorUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/admin/file")
public class FileController {
    private static final Logger LOG = LoggerFactory.getLogger(FileController.class);
    public static final String BUSINESS_NAME = "课程内容";

    @Resource
    private FileService fileService;

    /**
     * 列表查询
     * @param pageDto
     * @return
     */
    @PostMapping("/list")
    public ResponseDto list(@RequestBody PageDto pageDto) {
        LOG.info("pageDto:{}", pageDto);
        ResponseDto responseDto = new ResponseDto();
        fileService.list(pageDto);
        responseDto.setContent(pageDto);
        return responseDto;
    }

    /**
     * 保存，id有值时更新，无值时新增
     * @param fileDto
     * @return
     */
    @PostMapping("/save")
    public ResponseDto list(@RequestBody FileDto fileDto) {
        LOG.info("fileDto:{}", fileDto);

        // 保存校验
                ValidatorUtil.require(fileDto.getPath(), "相对路径");
                ValidatorUtil.length(fileDto.getPath(), "相对路径", 1, 100);
                ValidatorUtil.length(fileDto.getName(), "文件名", 1, 100);
                ValidatorUtil.length(fileDto.getSuffix(), "后缀", 1, 10);

        ResponseDto responseDto = new ResponseDto();
        fileService.save(fileDto);
        responseDto.setContent(fileDto);
        return responseDto;
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @DeleteMapping("/delete/{id}")
    public ResponseDto list(@PathVariable String id) {
        LOG.info("id:{}", id);
        ResponseDto responseDto = new ResponseDto();
        fileService.delete(id);
        return responseDto;
    }
}