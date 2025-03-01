add_library(WWLib STATIC
        #        _convert.cpp
        #        _mono.cpp
        #        _timer.cpp
        #        argv.cpp
        #        b64pipe.cpp
        #        b64straw.cpp
        #        base64.cpp
        #        bfiofile.cpp
        #        blit.cpp
        #        blowfish.cpp
        #        blowpipe.cpp
        #        blwstraw.cpp
        #        buff.cpp
        #        bufffile.cpp
        #        chunkio.cpp
        #        convert.cpp
        #        cpudetect.cpp
        #        crc.cpp
        #        crcpipe.cpp
        #        crcstraw.cpp
        #        critsection.cpp
        #        cstraw.cpp
        #        data.cpp
        #        ddraw.cpp
        #        dib.cpp
        #        draw.cpp
        #        dsurface.cpp
        #        Except.cpp
        #        FastAllocator.cpp
        #        ffactory.cpp
        #        fixed.cpp
        #        gcd_lcm.cpp
        #        hash.cpp
        #        hsv.cpp
        #        ini.cpp
        #        int.cpp
        #        jshell.cpp
        #        keyboard.cpp
        #        LaunchWeb.cpp
        #        lcw.cpp
        #        lcwpipe.cpp
        #        load.cpp
        #        lzo.cpp
        #        lzo1x_c.cpp
        #        lzo1x_d.cpp
        #        lzopipe.cpp
        #        lzostraw.cpp
        #        md5.cpp
        #        mixfile.cpp
        #        mono.cpp
        #        mpmath.cpp
        #        mpu.cpp
        #        msgloop.cpp
        #        multilist.cpp
        #        mutex.cpp
        #        nstrdup.cpp
        #        obscure.cpp
        #        palette.cpp
        #        pcx.cpp
        #        pipe.cpp
        #        pk.cpp
        #        pkpipe.cpp
        #        pkstraw.cpp
        #        point.cpp
        #        ramfile.cpp
        #        random.cpp
        #        rawfile.cpp
        #        rc4.cpp
        #        rcfile.cpp
        #        readline.cpp
        #        realcrc.cpp
        #        refcount.cpp
        #        regexpr.cpp
        #        registry.cpp
        #        rgb.cpp
        #        rle.cpp
        #        rndstraw.cpp
        #        rndstrng.cpp
        #        sampler.cpp
        #        sha.cpp
        #        shapipe.cpp
        #        shastraw.cpp
        #        slnode.cpp
        #        srandom.cpp
        #        stimer.cpp
        #        straw.cpp
        #        strtok_r.cpp
        #        surface.cpp
        #        systimer.cpp
        #        tagblock.cpp
        #        TARGA.CPP
        #        textfile.cpp
        #        tgatodxt.cpp
        #        thread.cpp
        #        trim.cpp
        #        vector.cpp
        #        verchk.cpp
        #        widestring.cpp
        #        win.cpp
        #        WWCOMUtil.cpp
        #        wwfile.cpp
        #        wwfont.cpp
        #        wwlib.dsp
        #        wwmouse.cpp
        #        wwstring.cpp
        #        xpipe.cpp
        #        xstraw.cpp
        #        xsurface.cpp

        _convert.cpp
        _mono.cpp
        argv.cpp
        b64pipe.cpp
        b64straw.cpp
        base64.cpp
        blit.cpp
        blowfish.cpp
        buff.cpp
        bufffile.cpp
        chunkio.cpp
        convert.cpp
        cpudetect.cpp
        crc.cpp
        cstraw.cpp
        data.cpp
        ddraw.cpp
        dsurface.cpp
        Except.cpp
        FastAllocator.cpp
        ffactory.cpp
        gcd_lcm.cpp
        hash.cpp
        hsv.cpp
        ini.cpp
        int.cpp
        jshell.cpp
        keyboard.cpp
        LaunchWeb.cpp
        lcw.cpp
        load.cpp
        mixfile.cpp
        mono.cpp
        mpmath.cpp
        mpu.cpp
        msgloop.cpp
        multilist.cpp
        mutex.cpp
        nstrdup.cpp
        palette.cpp
        pcx.cpp
        pipe.cpp
        pk.cpp
        ramfile.cpp
        random.cpp
        rawfile.cpp
        rc4.cpp
        rcfile.cpp
        readline.cpp
        realcrc.cpp
        refcount.cpp
        registry.cpp
        rgb.cpp
        rle.cpp
        rndstrng.cpp
        sampler.cpp
        sha.cpp
        slnode.cpp
        srandom.cpp
        stimer.cpp
        straw.cpp
        strtok_r.cpp
        systimer.cpp
        tagblock.cpp
        TARGA.CPP
        textfile.cpp
        tgatodxt.cpp
        thread.cpp
        trim.cpp
        vector.cpp
        verchk.cpp
        widestring.cpp
        win.cpp
        WWCOMUtil.cpp
        wwfile.cpp
        wwfont.cpp
        wwstring.cpp
        xpipe.cpp
        xstraw.cpp
        xsurface.cpp
)

target_include_directories(WWLib
        PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
        PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/../WWDebug)

 target_compile_definitions(WWLib PRIVATE  "_WINDOWS" "WIN32_LEAN_AND_MEAN" "WIN32" "REGEX_MALLOC" "STDC_HEADERS")


#
#














































































































































































































































































































































































































































































