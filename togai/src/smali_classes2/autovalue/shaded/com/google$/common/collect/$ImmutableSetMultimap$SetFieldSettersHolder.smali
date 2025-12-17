.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$SetFieldSettersHolder;
.super Ljava/lang/Object;
.source "$ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFieldSettersHolder"
.end annotation


# static fields
.field static final EMPTY_SET_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter<",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 587
    const-class v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    const-string v1, "emptySet"

    .line 588
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$SetFieldSettersHolder;->EMPTY_SET_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
