.class public final enum Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
.super Ljava/lang/Enum;
.source "ObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultTyping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum EVERYTHING:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum JAVA_LANG_OBJECT:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum NON_CONCRETE_AND_ARRAYS:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

.field public static final enum OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 159
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v1, "JAVA_LANG_OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->JAVA_LANG_OBJECT:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 169
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v2, "OBJECT_AND_NON_CONCRETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 178
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v3, "NON_CONCRETE_AND_ARRAYS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_CONCRETE_AND_ARRAYS:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 189
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v4, "NON_FINAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->NON_FINAL:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 214
    new-instance v4, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    const-string v5, "EVERYTHING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->EVERYTHING:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 152
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->$VALUES:[Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .line 152
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    return-object v0
.end method
