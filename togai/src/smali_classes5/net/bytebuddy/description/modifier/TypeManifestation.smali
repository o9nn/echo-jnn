.class public final enum Lnet/bytebuddy/description/modifier/TypeManifestation;
.super Ljava/lang/Enum;
.source "TypeManifestation.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/TypeManifestation;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 33
    new-instance v1, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const-string v4, "FINAL"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 38
    new-instance v2, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v3, 0x2

    const/16 v4, 0x400

    const-string v5, "ABSTRACT"

    invoke-direct {v2, v5, v3, v4}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 43
    new-instance v3, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v4, 0x3

    const/16 v5, 0x600

    const-string v6, "INTERFACE"

    invoke-direct {v3, v6, v4, v5}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 48
    new-instance v4, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v5, 0x4

    const/16 v6, 0x2600

    const-string v7, "ANNOTATION"

    invoke-direct {v4, v7, v5, v6}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 23
    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/TypeManifestation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x2610

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/TypeManifestation;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

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

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterface()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
