package site.metacoding.miniproject.web;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.ImageService;

@RequiredArgsConstructor
@Controller
public class ImageController {
    private ImageService imageService;

    @GetMapping("/image")
    public ResponseEntity<Resource> getImage(@RequestParam("imageName") String newImageName) throws Exception {
        // imageService.이미지불러오기(newImageName);
        String absolutePath = "src/main/resources/static/images/";
        FileSystemResource resource = new FileSystemResource(absolutePath + newImageName);
        if (!resource.exists()) {
            return null;
        }
        HttpHeaders header = new HttpHeaders();
        Path filePath = null;
        try {
            filePath = Paths.get(absolutePath + newImageName);
            header.add("Content-Type", Files.probeContentType(filePath));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
    }
}
