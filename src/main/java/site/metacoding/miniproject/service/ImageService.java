package site.metacoding.miniproject.service;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.image.resume.ResumeImageDao;
import site.metacoding.miniproject.web.dto.request.image.ResumeImageDto;

@RequiredArgsConstructor
@Service
public class ImageService {
    private final ResumeImageDao resumeImageDao;

    public void insertImage(MultipartFile image) throws Exception {
        // 파일이 빈 것이 들어오면 메서드 종료
        if (image.isEmpty()) {
            return;
        }

        // save할 DTO 띄우기
        ResumeImageDto resumeImageDto = new ResumeImageDto();

        // 절대경로 추출
        String absolutePath = new File("src/main/resources/static/images/").getAbsolutePath();

        // jpeg, png, gif 파일들만 받아서 처리
        if (!image.isEmpty()) {
            String contentType = image.getContentType();
            String originalImageExtension;
            // 확장자 명이 없으면 종료
            if (!StringUtils.hasText(contentType)) {
                return;
            } else {
                if (contentType.contains("image/jpeg")) {
                    originalImageExtension = ".jpg";
                } else if (contentType.contains("image/png")) {
                    originalImageExtension = ".png";
                } else if (contentType.contains("image/gif")) {
                    originalImageExtension = ".gif";
                }
                // 기타 확장자명일 경우 메서드 종료
                else {
                    return;
                }
            }
            String newImageName = UUID.randomUUID().toString() + originalImageExtension;

            // DTO에 담기
            resumeImageDto = ResumeImageDto.builder()
                    .originImageName(image.getOriginalFilename())
                    .newImageName(newImageName)
                    .imagePath(absolutePath)
                    .build();

            resumeImageDao.save(resumeImageDto);

            // 파일을 전송하기
            File file = new File(absolutePath + "/" + newImageName);
            if (!file.exists()) {
                file.mkdirs();
            }
            image.transferTo(file);
        }
    }
}
