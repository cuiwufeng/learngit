package com.wt.blog;

import java.io.File;
public class FileRename {

    public String rename(String username,File file) {
        String body=username;
        String ext=".jpg";
        String newName=body+ext;
        return newName;
    }

}