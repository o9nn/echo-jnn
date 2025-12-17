.class public Lcom/google/mediapipe/framework/image/BitmapImageBuilder;
.super Ljava/lang/Object;
.source "BitmapImageBuilder.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/framework/image/MPImage;
    .locals 7

    .line 69
    new-instance v6, Lcom/google/mediapipe/framework/image/MPImage;

    new-instance v1, Lcom/google/mediapipe/framework/image/BitmapImageContainer;

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;-><init>(Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/image/MPImage;-><init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V

    return-object v6
.end method

.method setTimestamp(J)Lcom/google/mediapipe/framework/image/BitmapImageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->timestamp:J

    return-object p0
.end method
