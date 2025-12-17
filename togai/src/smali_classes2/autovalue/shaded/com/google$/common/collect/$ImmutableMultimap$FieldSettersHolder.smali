.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;
.super Ljava/lang/Object;
.source "$ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldSettersHolder"
.end annotation


# static fields
.field static final MAP_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter<",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter<",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 339
    const-class v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    const-string v1, "map"

    .line 340
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    .line 341
    const-class v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    const-string v1, "size"

    .line 342
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
