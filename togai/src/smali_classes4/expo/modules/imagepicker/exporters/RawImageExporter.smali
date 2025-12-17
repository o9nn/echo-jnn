.class public final Lexpo/modules/imagepicker/exporters/RawImageExporter;
.super Ljava/lang/Object;
.source "RawImageExporter.kt"

# interfaces
.implements Lexpo/modules/imagepicker/exporters/ImageExporter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRawImageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawImageExporter.kt\nexpo/modules/imagepicker/exporters/RawImageExporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0096@\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/RawImageExporter;",
        "Lexpo/modules/imagepicker/exporters/ImageExporter;",
        "()V",
        "exportAsync",
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "source",
        "Landroid/net/Uri;",
        "output",
        "Ljava/io/File;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image-picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;-><init>(Lexpo/modules/imagepicker/exporters/RawImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget v2, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/io/File;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iput-object p2, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/imagepicker/exporters/RawImageExporter$exportAsync$1;->label:I

    invoke-static {p1, p2, p3, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 17
    :cond_3
    :goto_1
    new-instance p1, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p3, "Orientation"

    const/4 p4, 0x0

    .line 18
    invoke-virtual {p1, p3, p4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-ne p1, p3, :cond_5

    :cond_4
    move p4, v3

    .line 20
    :cond_5
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p4, :cond_6

    .line 26
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    :cond_6
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_2
    if-eqz p4, :cond_7

    .line 27
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_3

    :cond_7
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 29
    :goto_3
    new-instance p4, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    invoke-direct {p4, p3, p1, p2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;-><init>(IILjava/io/File;)V

    return-object p4
.end method
