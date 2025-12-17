.class public final enum Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
.super Ljava/lang/Enum;
.source "RNPromptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/shimo/react/prompt/RNPromptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PromptTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum PHONE_PAD:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

.field public static final enum TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    .locals 6

    sget-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    sget-object v1, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    sget-object v2, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    sget-object v3, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    sget-object v4, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    sget-object v5, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PHONE_PAD:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    filled-new-array/range {v0 .. v5}, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "TYPE_DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->TYPE_DEFAULT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 35
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x1

    const-string v2, "plain-text"

    const-string v3, "PLAIN_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PLAIN_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 36
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x2

    const-string v2, "secure-text"

    const-string v3, "SECURE_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->SECURE_TEXT:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 37
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x3

    const-string v2, "numeric"

    const-string v3, "NUMERIC"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->NUMERIC:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 38
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x4

    const-string v2, "email-address"

    const-string v3, "EMAIL_ADDRESS"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->EMAIL_ADDRESS:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 39
    new-instance v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    const/4 v1, 0x5

    const-string v2, "phone-pad"

    const-string v3, "PHONE_PAD"

    invoke-direct {v0, v3, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->PHONE_PAD:Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 33
    invoke-static {}, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->$values()[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    move-result-object v0

    sput-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->$VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-object p0
.end method

.method public static values()[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    .locals 1

    sget-object v0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->$VALUES:[Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    .line 33
    invoke-virtual {v0}, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;->mName:Ljava/lang/String;

    return-object v0
.end method
