.class public final synthetic Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;

    invoke-static {v0, v1, p1, p2}, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->$r8$lambda$sMXTpoBZQe0Kco3w62Gn3oNSwYk(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
