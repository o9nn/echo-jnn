.class public abstract Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;
.super Ljava/lang/Object;
.source "NativeFontDirFinder.java"

# interfaces
.implements Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;->getSearchableDirectories()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 44
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected abstract getSearchableDirectories()[Ljava/lang/String;
.end method
