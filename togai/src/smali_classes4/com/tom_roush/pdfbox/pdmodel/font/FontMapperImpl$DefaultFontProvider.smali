.class Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$DefaultFontProvider;
.super Ljava/lang/Object;
.source "FontMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFontProvider"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 151
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->access$000()Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$DefaultFontProvider;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$DefaultFontProvider;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    return-object v0
.end method
