.class final enum Lcom/tom_roush/pdfbox/rendering/ImageType$5;
.super Lcom/tom_roush/pdfbox/rendering/ImageType;
.source "ImageType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/rendering/ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/rendering/ImageType;-><init>(Ljava/lang/String;ILcom/tom_roush/pdfbox/rendering/ImageType$1;)V

    return-void
.end method


# virtual methods
.method toBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
