my constant DLL = ~$*VM.config<prefix>.IO.child('bin/libtcc.dll');
sub EXPORT {
    %*ENV<LIBTCC> = DLL;
    BEGIN Map.new;
}
