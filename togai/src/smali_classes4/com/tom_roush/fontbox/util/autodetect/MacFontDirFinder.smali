.class public Lcom/tom_roush/fontbox/util/autodetect/MacFontDirFinder;
.super Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;
.source "MacFontDirFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSearchableDirectories()[Ljava/lang/String;
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Library/Fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/System/Library/Fonts/"

    const-string v3, "/Network/Library/Fonts/"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
