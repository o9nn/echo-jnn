.class Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers$DefaultFontMapper;
.super Ljava/lang/Object;
.source "FontMappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFontMapper"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers$DefaultFontMapper;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers$DefaultFontMapper;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    return-object v0
.end method
