.class public Lcom/tom_roush/fontbox/util/autodetect/AndroidFontDirFinder;
.super Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;
.source "AndroidFontDirFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tom_roush/fontbox/util/autodetect/NativeFontDirFinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSearchableDirectories()[Ljava/lang/String;
    .locals 1

    const-string v0, "/system/fonts"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
