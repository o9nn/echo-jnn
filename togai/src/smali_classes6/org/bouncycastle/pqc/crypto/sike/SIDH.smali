.class Lorg/bouncycastle/pqc/crypto/sike/SIDH;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    return-void
.end method


# virtual methods
.method protected EphemeralKeyGeneration_A([B[B)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v11, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v12, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v13, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v14, v2, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v15, 0x2

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v6, 0x3

    filled-new-array {v6, v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [[[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v2, v2, [I

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v15, v15, [J

    move-object/from16 v22, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_gen:[J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->init_basis([J[[J[[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen:[J

    move-object/from16 v23, v6

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v1, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v24, v14

    iget-object v14, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v2, v6, v1, v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->init_basis([J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v14, 0x0

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v6, v9, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v9, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v8, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v8, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v18, 0x0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v19, v15

    move/from16 v20, v2

    move/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move-object/from16 v16, v22

    move-object/from16 v14, v23

    move-object v6, v15

    move-object v15, v7

    move v7, v1

    move-object v1, v8

    move-object v8, v10

    move-object/from16 p1, v9

    move-object v9, v15

    invoke-virtual/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    add-int/lit8 v7, v3, -0x1

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v5, p1

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v15, p1

    invoke-virtual {v2, v9, v15, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v11, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v12, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v13, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v10, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    goto :goto_0

    :cond_0
    move-object/from16 v15, p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    if-ge v8, v5, :cond_3

    move v9, v2

    :goto_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v2, v8

    if-ge v9, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v2, v24, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, v24, v3

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v24, v3

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v18, v3, 0x1

    aput v9, v16, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Alice:[I

    add-int/lit8 v19, v4, 0x1

    aget v20, v2, v4

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    mul-int/lit8 v7, v20, 0x2

    move-object v3, v10

    move-object v4, v10

    move-object v5, v15

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v9, v9, v20

    move/from16 v3, v18

    move/from16 v4, v19

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v10, v15, v1, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v6, v24, v2

    invoke-virtual {v5, v6, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v11, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v12, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v13, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v5, v3, -0x1

    aget-object v6, v24, v5

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, v24, v5

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v7, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v2, v16, v5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v10, v15, v1, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v11, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v12, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v13, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->inv_3_way([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return-void
.end method

.method protected EphemeralKeyGeneration_B([B[B)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v11, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v12, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v13, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v14, v2, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v15, 0x2

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v6, 0x3

    filled-new-array {v6, v15, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [[[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v2, v2, [I

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v15, v15, [J

    move-object/from16 v22, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen:[J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->init_basis([J[[J[[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_gen:[J

    move-object/from16 v23, v6

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v1, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v24, v14

    iget-object v14, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v2, v6, v1, v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->init_basis([J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v14, 0x0

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v6, v9, v14

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v9, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v8, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v8, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move/from16 v18, v2

    move-object/from16 v19, v15

    move/from16 v20, v6

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move-object/from16 v14, v22

    move-object/from16 v16, v13

    move-object/from16 v13, v23

    move-object v6, v15

    move-object v15, v7

    move v7, v1

    move-object v1, v8

    move-object v8, v10

    move-object/from16 p1, v9

    move-object v9, v15

    invoke-virtual/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    const/4 v2, 0x1

    move v8, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge v8, v5, :cond_2

    move v9, v2

    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v2, v8

    if-ge v9, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v2, v24, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, v24, v3

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v24, v3

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v15, v3, 0x1

    aput v9, v14, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Bob:[I

    add-int/lit8 v17, v4, 0x1

    aget v18, v2, v4

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object/from16 v6, p1

    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v9, v9, v18

    move v3, v15

    move/from16 v4, v17

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v5, p1

    invoke-virtual {v2, v10, v1, v5, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v7, v24, v2

    invoke-virtual {v6, v7, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v11, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v6, v16

    invoke-virtual {v2, v6, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v7, v3, -0x1

    aget-object v9, v24, v7

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v15, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v9, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v9, v24, v7

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v15, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v9, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v2, v14, v7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 p1, v5

    goto/16 :goto_0

    :cond_2
    move-object/from16 v5, p1

    move-object/from16 v6, v16

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v10, v1, v5, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v11, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v12, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v6, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->inv_3_way([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v12, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return-void
.end method

.method protected EphemeralSecretAgreement_A([B[B[B)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v10, v2, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x3

    const/4 v11, 0x2

    filled-new-array {v3, v11, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v11, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [[[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v7, v3, [I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v5, v3, [J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v6, 0x0

    aget-object v4, v2, v6

    invoke-virtual {v3, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v4, 0x1

    aget-object v6, v2, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-virtual {v3, v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v2, v11

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    mul-int/2addr v6, v11

    invoke-virtual {v3, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v3, 0x1

    aget-object v6, v2, v3

    aget-object v3, v2, v11

    invoke-virtual {v1, v4, v6, v3, v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_A([[J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v6, 0x0

    aget-object v11, v15, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-virtual {v1, v3, v4, v11, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v8, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    aget-object v4, v15, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-virtual {v1, v4, v4, v4, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v18, 0x0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v6, 0x0

    aget-object v3, v2, v6

    const/4 v4, 0x1

    aget-object v11, v2, v4

    const/16 v16, 0x2

    aget-object v17, v2, v16

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move/from16 v16, v2

    move-object v2, v3

    move-object v3, v11

    move v11, v4

    move-object/from16 v4, v17

    move/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v1, v11, :cond_0

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    add-int/lit8 v6, v2, -0x1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v7, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v9, v7}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    if-ge v11, v3, :cond_3

    move v7, v2

    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v2, v11

    if-ge v7, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v2, v10, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v10, v6

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v4, v10, v6

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v8, v6, 0x1

    aput v7, v16, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Alice:[I

    add-int/lit8 v17, v1, 0x1

    aget v18, v2, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    mul-int/lit8 v6, v18, 0x2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v7, v7, v18

    move v6, v8

    move/from16 v1, v17

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v9, v14, v15, v12}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v4, v10, v2

    invoke-virtual {v3, v4, v12}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v3, v6, -0x1

    aget-object v4, v10, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v10, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v2, v16, v3

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v9, v14, v15, v12}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v14, v15, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->j_inv([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return-void
.end method

.method protected EphemeralSecretAgreement_B([B[B[B)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v10, v2, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [[[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, [[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v8, v3, [I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v5, v3, [J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v7, 0x0

    aget-object v6, v2, v7

    invoke-virtual {v3, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v22, 0x1

    aget-object v6, v2, v22

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-virtual {v3, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, v2, v4

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    mul-int/2addr v7, v4

    invoke-virtual {v3, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v3, 0x0

    aget-object v6, v2, v3

    aget-object v3, v2, v22

    aget-object v7, v2, v4

    invoke-virtual {v1, v6, v3, v7, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_A([[J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v7, 0x0

    aget-object v4, v14, v7

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-virtual {v1, v3, v6, v4, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v15, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v15, v14, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v20, v4

    move/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v7, 0x0

    aget-object v3, v2, v7

    aget-object v4, v2, v22

    const/4 v6, 0x2

    aget-object v6, v2, v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move/from16 v16, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move/from16 v6, v16

    move-object v7, v9

    move-object/from16 v16, v8

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    move/from16 v8, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge v8, v3, :cond_2

    move/from16 v23, v7

    move v7, v2

    move/from16 v2, v23

    :goto_1
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v3, v8

    if-ge v7, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v3, v10, v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v5, v10, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v5, v10, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v17, v2, 0x1

    aput v7, v16, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Bob:[I

    add-int/lit8 v18, v1, 0x1

    aget v19, v2, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object v2, v9

    move-object v3, v9

    move-object v4, v14

    move-object v5, v13

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v7, v7, v19

    move/from16 v2, v17

    move/from16 v1, v18

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v3, v9, v14, v13, v11}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v7, 0x0

    :goto_2
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    if-ge v7, v2, :cond_1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v4, v10, v7

    invoke-virtual {v3, v4, v11}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v4, v2, -0x1

    aget-object v5, v10, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, v10, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v3, v16, v4

    add-int/lit8 v7, v2, -0x1

    add-int/lit8 v8, v8, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v9, v14, v13, v11}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v15, v15, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v15, v13, v12}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->j_inv([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return-void
.end method

.method protected init_basis([J[[J[[J[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x1

    aget-object p2, p2, v3

    invoke-virtual {v0, p1, v2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v0, v0, 0x2

    aget-object v2, p3, v1

    invoke-virtual {p2, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v0, v0, 0x3

    aget-object p3, p3, v3

    invoke-virtual {p2, p1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 p3, p3, 0x4

    aget-object v0, p4, v1

    invoke-virtual {p2, p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 p3, p3, 0x5

    aget-object p4, p4, v3

    invoke-virtual {p2, p1, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    return-void
.end method
