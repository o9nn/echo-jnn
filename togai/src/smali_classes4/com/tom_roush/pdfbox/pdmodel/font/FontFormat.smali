.class public final enum Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
.super Ljava/lang/Enum;
.source "FontFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

.field public static final enum OTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

.field public static final enum PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

.field public static final enum TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v1, "TTF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    .line 35
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v2, "OTF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->OTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    .line 40
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v3, "PFB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    filled-new-array {v0, v1, v2}, [Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    .line 25
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    return-object v0
.end method
