.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "StdDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Gettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
        "TT;>;",
        "Ljava/io/Serializable;",
        "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Gettable;"
    }
.end annotation


# static fields
.field protected static final F_MASK_ACCEPT_ARRAYS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final F_MASK_INT_COERCIONS:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 52
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 53
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_INT_COERCIONS:I

    .line 56
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 57
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 58
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->F_MASK_ACCEPT_ARRAYS:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    if-nez p1, :cond_0

    .line 77
    const-class v0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 88
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 89
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected static final _isBlank(Ljava/lang/String;)Z
    .locals 5

    .line 1360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1362
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static final _neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static final _parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "2.2250738585072012e-308"

    .line 1164
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x10000000000000L

    return-wide v0

    .line 1167
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final _byteOverflow(I)Z
    .locals 1

    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected _checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1476
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_0

    const-string v5, "Cannot coerce %s to %s (but could if coercion was enabled using `CoercionConfig`)"

    .line 1479
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p5, v0}, [Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    .line 1477
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadCoercion(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method protected _checkDoubleSpecialValue(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 1184
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1185
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1193
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1188
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1198
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _checkFloatSpecialValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 1064
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1067
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1068
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1076
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1430
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Float:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, v0, p3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v4

    .line 1432
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v4, v0, :cond_0

    .line 1433
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Floating-point value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    .line 1433
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v4
.end method

.method protected _checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1381
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method protected _checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p1, p3, p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v3

    const-string v6, "empty String (\"\")"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    .line 1401
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1

    .line 1403
    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p1, p3, p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v3

    const-string v6, "blank String (all whitespace)"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    .line 1405
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1

    .line 1409
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/StreamReadCapability;->UNTYPED_SCALARS:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object p1

    .line 1412
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p1, p3, p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 1413
    sget-object p4, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, p4, :cond_3

    .line 1417
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "Cannot coerce String value (\"%s\") to %s (but might if coercion using `CoercionConfig` was enabled)"

    .line 1415
    invoke-virtual {p1, p0, p4, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p3
.end method

.method protected _checkTextualNull(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1495
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1496
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v1, "String \"null\""

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected _coerceBooleanFromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1446
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Integer:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, v0, p3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v4

    .line 1447
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 1461
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p2

    sget-object p3, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, p3, :cond_1

    .line 1463
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "0"

    .line 1465
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1449
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Integer value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    .line 1449
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 1451
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 1455
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected _coerceEmptyString(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1655
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1658
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1659
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v0, 0x0

    :goto_0
    const-string v1, "empty String (\"\")"

    .line 1664
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1662
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _coerceIntegral(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1522
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 1525
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1526
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1528
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected _coerceNullToken(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1703
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 1705
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _coerceTextualNull(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1711
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    const-string v0, "String \"null\""

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V

    .line 1713
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _coercedTypeDesc()Ljava/lang/String;
    .locals 4

    .line 1595
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1596
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1597
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 1598
    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1600
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 1601
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/util/Map;

    .line 1602
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 1603
    :cond_4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_5

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "element of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findCoercionFromEmptyArray(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-eq v0, v2, :cond_5

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 205
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 206
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 208
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v1, :cond_5

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeWrappedValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_4
    return-object v0

    .line 222
    :cond_5
    :goto_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v7, 0x0

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeFromEmpty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 247
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeFromEmptyString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object p1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result p5

    aget p1, p1, p5

    const/4 p5, 0x1

    if-eq p1, p5, :cond_1

    const/4 p5, 0x4

    if-eq p1, p5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ""

    const-string v5, "empty String (\"\")"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkCoercionFail(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 322
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v7

    .line 262
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v2, p2, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, v0, v7, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v6

    const-string v8, "empty String (\"\")"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 270
    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromEmptyString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 273
    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p2, v0, v7, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v6

    const-string v8, "blank String (all whitespace)"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 276
    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromEmptyString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v2, :cond_6

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    sget-object p1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-class v1, Ljava/lang/Integer;

    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p1, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p1, v1, :cond_3

    .line 288
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 291
    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromLong()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 292
    sget-object p1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-class v1, Ljava/lang/Long;

    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p1, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p1, v1, :cond_4

    .line 294
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLongPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 297
    :cond_4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 299
    sget-object p1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-class v1, Ljava/lang/Boolean;

    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p2, p1, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p1, v1, :cond_6

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "true"

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x1

    .line 303
    invoke-virtual {v2, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "false"

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 306
    invoke-virtual {v2, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 311
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    const-string v4, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    move-object v0, p2

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeWrappedValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 362
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot deserialize instance of %s out of %s token: nested Arrays not allowed with %s"

    .line 360
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 368
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected _failDoubleToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1672
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 1674
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Cannot coerce a floating-point value (\'%s\') into %s (enable `DeserializationFeature.ACCEPT_FLOAT_AS_INT` to allow)"

    .line 1672
    invoke-virtual {p2, v0, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected _findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 3

    .line 1991
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method protected _findCoercionFromEmptyArray(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 3

    .line 1985
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyArray:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method protected _findCoercionFromEmptyString(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 3

    .line 1979
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method protected final _findNullProvider(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/annotation/Nulls;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/NullValueProvider;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1933
    sget-object v0, Lcom/fasterxml/jackson/annotation/Nulls;->FAIL:Lcom/fasterxml/jackson/annotation/Nulls;

    if-ne p3, v0, :cond_2

    if-nez p2, :cond_1

    if-nez p4, :cond_0

    .line 1935
    const-class p2, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p2

    .line 1936
    :goto_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->constructForRootValue(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    move-result-object p1

    return-object p1

    .line 1938
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->constructForProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    move-result-object p1

    return-object p1

    .line 1940
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/annotation/Nulls;->AS_EMPTY:Lcom/fasterxml/jackson/annotation/Nulls;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_3

    return-object v1

    .line 1950
    :cond_3
    instance-of p3, p4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    if-eqz p3, :cond_5

    .line 1951
    move-object p3, p4

    check-cast p3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    .line 1952
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    .line 1953
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_4

    .line 1954
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getValueType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    :goto_1
    const-string p3, "Cannot create empty instance of %s, no default Creator"

    .line 1955
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p4

    .line 1956
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1955
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    return-object p1

    .line 1961
    :cond_5
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getEmptyAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;

    move-result-object p2

    .line 1962
    sget-object p3, Lcom/fasterxml/jackson/databind/util/AccessPattern;->ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    if-ne p2, p3, :cond_6

    .line 1963
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->nuller()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    move-result-object p1

    return-object p1

    .line 1965
    :cond_6
    sget-object p3, Lcom/fasterxml/jackson/databind/util/AccessPattern;->CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    if-ne p2, p3, :cond_7

    .line 1966
    invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->forValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    move-result-object p1

    return-object p1

    .line 1969
    :cond_7
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/NullsAsEmptyProvider;

    invoke-direct {p1, p4}, Lcom/fasterxml/jackson/databind/deser/impl/NullsAsEmptyProvider;-><init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object p1

    .line 1971
    :cond_8
    sget-object p1, Lcom/fasterxml/jackson/annotation/Nulls;->SKIP:Lcom/fasterxml/jackson/annotation/Nulls;

    if-ne p3, p1, :cond_9

    .line 1972
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->skipper()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1
.end method

.method protected _hasTextualNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "null"

    .line 1344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final _intOverflow(J)Z
    .locals 2

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected _isEmptyOrTextualNull(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1718
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected _isFalse(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const-string v0, "false"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x46

    if-ne v1, v2, :cond_2

    const-string v1, "FALSE"

    .line 476
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "False"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected final _isIntNumber(Ljava/lang/String;)Z
    .locals 6

    .line 1752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 1754
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, v4, :cond_2

    return v1

    :cond_2
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_5

    .line 1768
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_4

    const/16 v5, 0x30

    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    return v4

    :cond_6
    return v1
.end method

.method protected final _isNaN(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NaN"

    .line 1355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final _isNegInf(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-Infinity"

    .line 1348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected final _isPosInf(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Infinity"

    .line 1352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected _isTrue(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_0

    const-string v0, "true"

    .line 462
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    const-string v1, "TRUE"

    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "True"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected _nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2091
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected final _parseBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 524
    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :pswitch_0
    return-object v1

    .line 514
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 512
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coerceBooleanFromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 519
    :cond_3
    invoke-virtual {p2, p1, p0, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 527
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 529
    sget-object v4, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v4, :cond_4

    return-object v1

    .line 532
    :cond_4
    sget-object v4, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v4, :cond_5

    .line 533
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 535
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 541
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 545
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 546
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 549
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkTextualNull(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "only \"true\" or \"false\" recognized"

    new-array v1, v3, [Ljava/lang/Object;

    .line 552
    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _parseBooleanFromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1625
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNumberForScalarCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V

    const-string p2, "0"

    .line 1628
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected final _parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    .line 401
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coerceBooleanFromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 395
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 415
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result v0

    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v0

    .line 423
    :cond_3
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 411
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 426
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 428
    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v3, :cond_5

    .line 429
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 432
    :cond_5
    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v3, :cond_6

    return v2

    .line 435
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 441
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 445
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 449
    :cond_8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 450
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return v2

    .line 453
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v1, "only \"true\"/\"True\"/\"TRUE\" or \"false\"/\"False\"/\"FALSE\" recognized"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 455
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final _parseBooleanPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result p1

    return p1
.end method

.method protected final _parseBytePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p2

    .line 566
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_1

    return v2

    .line 569
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_2

    return v2

    .line 572
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result p1

    return p1

    .line 574
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result p1

    return p1

    .line 562
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 576
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 584
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 585
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBytePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)B

    move-result v0

    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v0

    .line 592
    :cond_7
    :goto_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    .line 580
    :cond_8
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 596
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 598
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_9

    .line 600
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 603
    :cond_9
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_a

    return v2

    .line 606
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 608
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return v2

    .line 613
    :cond_b
    :try_start_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_byteOverflow(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v1, "overflow, value cannot be represented as 8-bit value"

    new-array v2, v2, [Ljava/lang/Object;

    .line 620
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    :cond_c
    int-to-byte p1, v0

    return p1

    :catch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v1, "not a valid `byte` value"

    new-array v2, v2, [Ljava/lang/Object;

    .line 615
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1211
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1237
    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 1219
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/exc/StreamReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1222
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid 64-bit `long` for creating `java.util.Date`"

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1226
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1213
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1229
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 1235
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDateFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1232
    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 1240
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDate(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected _parseDate(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 1280
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 1282
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1290
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 1293
    :cond_2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1297
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "not a valid representation (error: %s)"

    .line 1295
    invoke-virtual {p2, v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method protected _parseDateFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findCoercionFromEmptyArray(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 1248
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-eq v0, v2, :cond_4

    .line 1251
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 1252
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 1253
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1258
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 1255
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-object v0

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1267
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v1, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method protected final _parseDoublePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide p1

    return-wide p1

    .line 1091
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1097
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v2

    .line 1104
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1105
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1106
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDoublePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)D

    move-result-wide v0

    .line 1107
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v0

    .line 1112
    :cond_4
    :goto_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 1101
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 1119
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkDoubleSpecialValue(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 1125
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 1127
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_7

    .line 1129
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v2

    .line 1132
    :cond_7
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_8

    return-wide v2

    .line 1135
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1136
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1137
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return-wide v2

    .line 1140
    :cond_9
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDoublePrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method protected final _parseDoublePrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    :try_start_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 1152
    :catch_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid `double` value (as String to convert)"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1154
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method protected final _parseFloatPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result p1

    return p1

    .line 984
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 990
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 997
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 998
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 999
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseFloatPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)F

    move-result v0

    .line 1000
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v0

    .line 1005
    :cond_4
    :goto_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 994
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 1012
    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatSpecialValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 1018
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 1020
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_7

    .line 1022
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 1025
    :cond_7
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_8

    return v2

    .line 1028
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1030
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return v2

    .line 1033
    :cond_9
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseFloatPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method protected final _parseFloatPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1045
    :catch_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid `float` value"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1047
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method protected final _parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p2

    .line 704
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_1

    return v2

    .line 707
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_2

    return v2

    .line 710
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result p1

    return p1

    .line 712
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result p1

    return p1

    .line 700
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 714
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 721
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 722
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v0

    .line 729
    :cond_7
    :goto_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 718
    :cond_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 732
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 734
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_9

    .line 736
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 739
    :cond_9
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_a

    return v2

    .line 742
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 744
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return v2

    .line 747
    :cond_b
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected final _parseIntPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 756
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 757
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 758
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_intOverflow(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "Overflow: numeric value (%s) out of range of int (%d -%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const/high16 v4, -0x80000000

    .line 761
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 759
    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 762
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    long-to-int p1, v1

    return p1

    .line 766
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 768
    :catch_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "not a valid `int` value"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 770
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method protected final _parseInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 806
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 787
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 788
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_1

    .line 789
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 791
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_2

    .line 792
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 794
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 796
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 784
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 798
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 804
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 801
    :cond_7
    invoke-virtual {p2, p1, p0, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 809
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 810
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_8

    .line 811
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 813
    :cond_8
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_9

    .line 814
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 816
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkTextualNull(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 818
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 820
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 830
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 831
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_intOverflow(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    const-class v1, Ljava/lang/Integer;

    const-string v2, "Overflow: numeric value (%s) out of range of `java.lang.Integer` (%d -%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const/high16 v4, -0x80000000

    .line 834
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 832
    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    :cond_0
    long-to-int v1, v1

    .line 836
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 838
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 840
    :catch_0
    const-class v1, Ljava/lang/Integer;

    const-string v2, "not a valid `java.lang.Integer` value"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method protected final _parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 948
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 929
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 930
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_1

    .line 931
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 933
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_2

    .line 934
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 936
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 940
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 926
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 938
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 946
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 943
    :cond_7
    invoke-virtual {p2, p1, p0, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 951
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p3

    .line 952
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_8

    .line 953
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 955
    :cond_8
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p3, v0, :cond_9

    .line 956
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 958
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 959
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkTextualNull(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 960
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 963
    :cond_a
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLong(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final _parseLong(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    :try_start_0
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 974
    :catch_0
    const-class v0, Ljava/lang/Long;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid `java.lang.Long` value"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method protected final _parseLongPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p2

    .line 855
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_1

    return-wide v2

    .line 858
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_2

    return-wide v2

    .line 861
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide p1

    return-wide p1

    .line 863
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide p1

    return-wide p1

    .line 851
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 865
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v2

    .line 872
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 873
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLongPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)J

    move-result-wide v0

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v0

    .line 880
    :cond_7
    :goto_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 869
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 883
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 885
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_9

    .line 887
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-wide v2

    .line 890
    :cond_9
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_a

    return-wide v2

    .line 893
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 895
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return-wide v2

    .line 898
    :cond_b
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLongPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final _parseLongPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    :try_start_0
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 910
    :catch_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid `long` value"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 912
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_nonNullNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method protected final _parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFloatToIntCoercion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p2

    .line 636
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_1

    return v2

    .line 639
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne p2, v0, :cond_2

    return v2

    .line 642
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result p1

    return p1

    .line 644
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result p1

    return p1

    .line 632
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 646
    :cond_5
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 654
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 655
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 656
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S

    move-result v0

    .line 657
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v0

    .line 662
    :cond_7
    :goto_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 650
    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 665
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 667
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_9

    .line 669
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return v2

    .line 672
    :cond_9
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsEmpty:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    if-ne v0, v1, :cond_a

    return v2

    .line 675
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 677
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V

    return v2

    .line 682
    :cond_b
    :try_start_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_shortOverflow(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 688
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v1, "overflow, value cannot be represented as 16-bit value"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_c
    int-to-short p1, v0

    return p1

    .line 684
    :catch_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v1, "not a valid `short` value"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected final _parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1313
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1314
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    .line 1315
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 1316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object p2

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1322
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1325
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 1326
    invoke-virtual {p2, p1, p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1329
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 1333
    :cond_5
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected _reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Z",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "enable"

    goto :goto_0

    :cond_0
    const-string p2, "disable"

    .line 1579
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4, v0, p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Cannot coerce %s to Null value as %s (%s `%s.%s` to allow)"

    .line 1578
    invoke-virtual {p1, p0, p3, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final _shortOverflow(I)Z
    .locals 1

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected _verifyEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2045
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 2046
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_0
    return-void
.end method

.method protected final _verifyNullForPrimitive(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1541
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot coerce `null` to %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)"

    .line 1542
    invoke-virtual {p1, p0, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final _verifyNullForPrimitiveCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1561
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v1, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1565
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v1, 0x0

    .line 1570
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "empty String (\"\")"

    goto :goto_1

    :cond_1
    const-string v2, "String \"%s\""

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1571
    :goto_1
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final _verifyNullForScalarCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1680
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1681
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "empty String (\"\")"

    goto :goto_0

    :cond_0
    const-string v0, "String \"%s\""

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x1

    .line 1682
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_reportFailedNullCoerce(Lcom/fasterxml/jackson/databind/DeserializationContext;ZLjava/lang/Enum;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected _verifyNumberForScalarCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1689
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1690
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1693
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p2

    .line 1695
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Cannot coerce Number (%s) to %s (enable `%s.%s` to allow)"

    .line 1694
    invoke-virtual {p1, p0, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected _verifyStringForScalarCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1637
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1638
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_coercedTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/MapperFeature;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Cannot coerce String \"%s\" to %s (enable `%s.%s` to allow)"

    .line 1639
    invoke-virtual {p1, p0, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected findContentNullProvider(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/NullValueProvider;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findContentNullStyle(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v0

    .line 1892
    sget-object v1, Lcom/fasterxml/jackson/annotation/Nulls;->SKIP:Lcom/fasterxml/jackson/annotation/Nulls;

    if-ne v0, v1, :cond_0

    .line 1893
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->skipper()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    move-result-object p1

    return-object p1

    .line 1897
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/annotation/Nulls;->FAIL:Lcom/fasterxml/jackson/annotation/Nulls;

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_2

    .line 1899
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 1901
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1902
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 1904
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->constructForRootValue(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    move-result-object p1

    return-object p1

    .line 1906
    :cond_2
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->constructForProperty(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    move-result-object p1

    return-object p1

    .line 1909
    :cond_3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findNullProvider(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p3
.end method

.method protected findContentNullStyle(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/annotation/Nulls;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1920
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p1

    return-object p1

    .line 1925
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->getContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p1

    return-object p1
.end method

.method protected findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1798
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1799
    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1800
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1802
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1804
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 1805
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-nez p3, :cond_0

    .line 1807
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p3

    .line 1809
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {p1, v0, v1, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object p1

    :cond_1
    return-object p3
.end method

.method protected findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1740
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected findFormatFeature(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1854
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1856
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findFormatOverrides(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1835
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    return-object p1

    .line 1838
    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    return-object p1
.end method

.method protected final findValueNullProvider(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1873
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object p3

    .line 1874
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1873
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_findNullProvider(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 135
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2035
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2037
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Attempted to unwrap \'%s\' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value"

    .line 2035
    invoke-virtual {p2, p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p3

    .line 2023
    :cond_0
    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 2029
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    return-void
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isDefaultKeyDeserializer(Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
    .locals 0

    .line 155
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
