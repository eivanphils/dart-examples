main() {
    Audio volumen = Audio.alto;

    switch(volumen) {
        case Audio.bajo:
            print('volumen ---> bajo');
            break;
        case Audio.medio:
            print('volumen ---> medio');
            break;
        case Audio.alto:
            print('volumen ---> alto');
            break;
        default:
            print('bajo volumen');
            break;
    }
}

enum Audio {
    bajo,
    medio,
    alto
}