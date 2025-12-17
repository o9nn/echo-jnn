.class Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;
.super Ljavax/tools/SimpleJavaFileObject;
.source "$JavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->toJavaFileObject()Ljavax/tools/JavaFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final lastModified:J

.field final synthetic this$0:Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->this$0:Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;

    .line 248
    invoke-direct {p0, p2, p3}, Ljavax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->lastModified:J

    return-void
.end method


# virtual methods
.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->getCharContent(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharContent(Z)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->this$0:Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;

    .line 251
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->lastModified:J

    return-wide v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$2;->getCharContent(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
