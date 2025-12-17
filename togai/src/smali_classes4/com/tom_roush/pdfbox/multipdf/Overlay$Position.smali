.class public final enum Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;
.super Ljava/lang/Enum;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/multipdf/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

.field public static final enum BACKGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

.field public static final enum FOREGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->FOREGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    new-instance v1, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    const-string v2, "BACKGROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->BACKGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    .line 59
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->$VALUES:[Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    .line 59
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    return-object v0
.end method
