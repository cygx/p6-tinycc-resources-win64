my constant DLL = ~$*VM.config<prefix>.IO.child('bin').child('libtcc.dll');

sub EXPORT {
    %*ENV<LIBTCC> = DLL;
    BEGIN Map.new;
}
