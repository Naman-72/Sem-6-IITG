<project xmlns="com.autoesl.autopilot.project" name="dilithium_weak.prj" top="crypto_sign">
    <files>
        <file name="aes.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="fips202.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="ntt.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="packing.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="poly.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="polyvec.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="reduce.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="rng.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sign.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="../../test/cpucycles.c" sc="0" tb="1" cflags=""/>
        <file name="../../test/cpucycles.h" sc="0" tb="1" cflags=""/>
        <file name="../../test/speed.c" sc="0" tb="1" cflags=""/>
        <file name="../../test/speed.h" sc="0" tb="1" cflags=""/>
        <file name="../../test/test_dilithium.c" sc="0" tb="1" cflags=""/>
        <file name="../../test/test_mul.c" sc="0" tb="1" cflags=""/>
        <file name="../../test/test_vectors.c" sc="0" tb="1" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="sign_open_fit" status="inactive"/>
        <solution name="sign_fit" status="inactive"/>
        <solution name="sign_unroll" status="inactive"/>
        <solution name="sing_open_unroll" status="inactive"/>
        <solution name="sign_open_pipeline" status="inactive"/>
        <solution name="sign_pipeline" status="inactive"/>
        <solution name="sign_open" status="inactive"/>
        <solution name="sign" status="active"/>
        <solution name="keypair" status="inactive"/>
    </solutions>
</project>

