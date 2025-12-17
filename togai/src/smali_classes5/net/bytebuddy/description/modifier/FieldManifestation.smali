.class public final enum Lnet/bytebuddy/description/modifier/FieldManifestation;
.super Ljava/lang/Enum;
.source "FieldManifestation.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/FieldManifestation;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/FieldManifestation;

.field public static final enum FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/FieldManifestation;

.field public static final enum VOLATILE:Lnet/bytebuddy/description/modifier/FieldManifestation;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lnet/bytebuddy/description/modifier/FieldManifestation;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/FieldManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/FieldManifestation;

    .line 33
    new-instance v1, Lnet/bytebuddy/description/modifier/FieldManifestation;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const-string v4, "FINAL"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/description/modifier/FieldManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/FieldManifestation;->FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

    .line 38
    new-instance v2, Lnet/bytebuddy/description/modifier/FieldManifestation;

    const/4 v3, 0x2

    const/16 v4, 0x40

    const-string v5, "VOLATILE"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/description/modifier/FieldManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/description/modifier/FieldManifestation;->VOLATILE:Lnet/bytebuddy/description/modifier/FieldManifestation;

    filled-new-array {v0, v1, v2}, [Lnet/bytebuddy/description/modifier/FieldManifestation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/description/modifier/FieldManifestation;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/FieldManifestation;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/FieldManifestation;

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/FieldManifestation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/FieldManifestation;

    .line 23
    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/FieldManifestation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/FieldManifestation;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/FieldManifestation;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/FieldManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/FieldManifestation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/FieldManifestation;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlain()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/FieldManifestation;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/FieldManifestation;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVolatile()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/FieldManifestation;->mask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
