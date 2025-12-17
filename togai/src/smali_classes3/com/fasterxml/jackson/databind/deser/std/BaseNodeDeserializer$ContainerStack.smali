.class final Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;
.super Ljava/lang/Object;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerStack"
.end annotation


# instance fields
.field private _end:I

.field private _stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

.field private _top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popOrNull()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    .line 739
    aget-object v0, v1, v0

    return-object v0
.end method

.method public push(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_end:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    .line 718
    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_end:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    const/16 v2, 0x14

    .line 726
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_end:I

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 727
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_stack:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    .line 729
    aput-object p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->_top:I

    return v0
.end method
