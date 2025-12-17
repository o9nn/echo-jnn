.class final Lcom/google/auto/value/processor/TemplateVars$1;
.super Ljava/io/FilterInputStream;
.source "TemplateVars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/value/processor/TemplateVars;->inputStreamFromJar(Ljava/net/URL;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jar:Ljava/util/jar/JarFile;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .locals 0

    iput-object p2, p0, Lcom/google/auto/value/processor/TemplateVars$1;->val$jar:Ljava/util/jar/JarFile;

    .line 199
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/google/auto/value/processor/TemplateVars$1;->val$jar:Ljava/util/jar/JarFile;

    .line 203
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    return-void
.end method
