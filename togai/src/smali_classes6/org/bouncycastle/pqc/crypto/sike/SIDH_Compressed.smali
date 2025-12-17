.class Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;
.super Ljava/lang/Object;


# static fields
.field private static final t_points:I = 0x2


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    return-void
.end method

.method private EphemeralKeyGeneration_A([B[B)I
    .locals 19

    move-object/from16 v8, p0

    const/4 v0, 0x3

    new-array v7, v0, [I

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_3:I

    new-array v9, v0, [I

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v10, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v11, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v12, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v13, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x4

    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x5

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [[[[J

    new-array v6, v1, [Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v2, v14, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FullIsogeny_A_dual([B[[[[J[[JI)V

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v6

    move-object v4, v7

    move/from16 v17, v5

    move-object v5, v7

    move-object/from16 v18, v7

    move-object v7, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildOrdinary3nBasis_dual([[J[[[[J[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[II)V

    invoke-direct {v8, v7, v15}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate3_pairings([Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[[J)V

    move-object v1, v15

    move-object v2, v9

    move-object v3, v11

    move-object v4, v10

    move-object v5, v13

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Dlogs3_dual([[[J[I[J[J[J[J)V

    move-object v1, v11

    move-object v2, v10

    move-object v3, v13

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v18

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Compress_PKA_dual([J[J[J[J[[J[I[B)V

    return v17
.end method

.method private FirstPoint_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x2

    filled-new-array {v5, v5, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v5, v5, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v7, v7, [J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v11, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v13, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v9, v10, v11, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v11, v5

    iget-object v13, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v13, v13, v12

    invoke-virtual {v9, v10, v11, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v13, 0x3

    mul-int/2addr v11, v13

    iget-object v15, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v15, v15, v14

    invoke-virtual {v9, v10, v11, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v11, v11, 0x4

    iget-object v15, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v15, v15, v12

    invoke-virtual {v9, v10, v11, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v11, v11, 0x5

    iget-object v15, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v15, v15, v14

    invoke-virtual {v9, v10, v11, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v11, v11, 0x6

    iget-object v15, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v15, v15, v12

    invoke-virtual {v9, v10, v11, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v11, v11, 0x7

    iget-object v15, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v15, v15, v14

    invoke-virtual {v9, v10, v11, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v10, p1

    invoke-virtual {v9, v10, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->CompletePoint(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V

    aget-object v9, v4, v12

    aget-object v10, v6, v12

    invoke-virtual {v0, v2, v1, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate3_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V

    aget-object v2, v4, v14

    aget-object v9, v6, v14

    invoke-virtual {v0, v3, v1, v2, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate3_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V

    invoke-virtual {v0, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FinalExpo3_2way([[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v4, v12

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v4, v14

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    aget-object v1, v4, v12

    aget-object v1, v1, v14

    invoke-static {v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    aget-object v1, v4, v12

    aget-object v1, v1, v14

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->g_R_S_im:[J

    invoke-static {v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    aget-object v2, v4, v14

    aget-object v2, v2, v14

    invoke-static {v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    aget-object v2, v4, v14

    aget-object v2, v2, v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->g_R_S_im:[J

    invoke-static {v2, v3, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v14

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    return v12

    :cond_4
    if-nez v1, :cond_5

    aput-byte v12, p3, v12

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    aput-byte v14, p3, v12

    goto :goto_2

    :cond_6
    add-int/2addr v1, v2

    if-ne v1, v13, :cond_7

    aput-byte v13, p3, v12

    goto :goto_2

    :cond_7
    aput-byte v5, p3, v12

    :goto_2
    return v14
.end method

.method private SecondPoint_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B)Z
    .locals 12

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v4, v4, [J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    const/4 v8, 0x0

    aget-byte v9, p3, v8

    mul-int/lit8 v9, v9, 0x4

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v9, v10

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v10, v10, v8

    invoke-virtual {v6, v7, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    aget-byte v9, p3, v8

    mul-int/lit8 v9, v9, 0x4

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v9, v11

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v11, v11, v10

    invoke-virtual {v6, v7, v9, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    aget-byte v9, p3, v8

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v9, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v2, v2, v8

    invoke-virtual {v6, v7, v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen_3_tors:[J

    aget-byte p3, p3, v8

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0x3

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr p3, v7

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v7, v7, v10

    invoke-virtual {v2, v6, p3, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->CompletePoint(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V

    invoke-virtual {p0, v0, p2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate3_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FinalExpo3([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    aget-object p1, v1, v10

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result p1

    if-nez p1, :cond_0

    return v10

    :cond_0
    return v8
.end method

.method private Tate2_pairings(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[[J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    filled-new-array {v5, v6, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v9}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v11}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[J

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v6, v12}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v15, 0x0

    aget-object v5, v7, v15

    invoke-virtual {v13, v14, v15, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move v5, v15

    :goto_0
    if-ge v5, v6, :cond_0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, v3, v5

    invoke-virtual {v13, v7, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v14, v5, 0x2

    aget-object v14, v3, v14

    invoke-virtual {v13, v7, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_P:[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_P:[J

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_P:[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/16 v17, 0x2

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 p1, v7

    const/16 v16, 0x0

    aget-object v7, v8, v16

    invoke-virtual {v14, v15, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_P:[J

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v14, v14, 0x3

    const/4 v15, 0x1

    move-object/from16 v18, v13

    aget-object v13, v8, v15

    invoke-virtual {v6, v7, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    :goto_1
    if-ge v6, v7, :cond_1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p3, v6

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v7, v13, v5, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p3, v6

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v7, v13, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v8, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p3, v6

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_P:[J

    move-object/from16 v20, v1

    aget-object v1, v12, v14

    invoke-virtual {v7, v13, v15, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p3, v6

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v13, 0x1

    aget-object v7, v7, v13

    aget-object v15, v12, v13

    invoke-virtual {v1, v7, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, v12, v13

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, v3, v6

    invoke-virtual {v1, v7, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, v3, v6

    invoke-virtual {v1, v7, v11, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v20

    const/4 v7, 0x2

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v7, p1

    move-object/from16 v13, v18

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v5, v14, :cond_3

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_P:[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_P:[J

    move-object/from16 v18, v15

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_P:[J

    move-object/from16 v20, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v21, v5, 0x3

    mul-int v4, v4, v21

    move-object/from16 v22, v8

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v23, v21, 0x1

    mul-int v8, v8, v23

    move/from16 p1, v8

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    add-int/lit8 v21, v21, 0x2

    mul-int v8, v8, v21

    move/from16 v21, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p3, v5

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/16 v16, 0x0

    aget-object v3, v3, v16

    move/from16 v23, v4

    const/16 v19, 0x1

    aget-object v4, v9, v19

    invoke-virtual {v2, v7, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([JI[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v9, v19

    invoke-virtual {v2, v15, v8, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([JI[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p3, v5

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v3, v19

    move/from16 v24, v6

    const/4 v4, 0x0

    aget-object v6, v9, v4

    invoke-virtual {v2, v15, v8, v3, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([JI[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p3, v5

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v3, v3, v19

    aget-object v4, v10, v19

    invoke-virtual {v2, v3, v13, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v9, v19

    aget-object v4, v10, v19

    aget-object v6, v11, v19

    invoke-virtual {v2, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    aget-object v4, v9, v3

    aget-object v6, p3, v5

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v6, v6, v3

    move/from16 v25, v1

    aget-object v1, v11, v3

    invoke-virtual {v2, v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v5

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v2, v2, v3

    aget-object v4, v12, v3

    move/from16 v6, v23

    invoke-virtual {v1, v2, v14, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v5

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v4, 0x1

    aget-object v2, v2, v4

    aget-object v6, v12, v4

    invoke-virtual {v1, v2, v3, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v12, v4

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p4

    aget-object v3, v2, v5

    invoke-virtual {v1, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v2, v5

    invoke-virtual {v1, v3, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v1, v25

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_2
    move-object v2, v3

    move/from16 v23, v4

    add-int/lit8 v5, v21, 0x1

    move/from16 v1, p1

    move-object v7, v14

    move-object/from16 v13, v18

    move-object/from16 v4, v20

    move-object/from16 v8, v22

    move/from16 v6, v23

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_3
    move-object v2, v3

    move-object/from16 v20, v4

    move/from16 v24, v6

    move-object/from16 v22, v8

    const/4 v1, 0x0

    :goto_4
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, p3, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v6, v11, v5

    move/from16 v8, v24

    invoke-virtual {v3, v4, v7, v8, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, p3, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v6, 0x1

    aget-object v4, v4, v6

    aget-object v13, v11, v6

    invoke-virtual {v3, v4, v5, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4, v11, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v1, p2

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_Q:[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_Q:[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_Q:[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    const/4 v14, 0x0

    aget-object v15, v22, v14

    invoke-virtual {v7, v8, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_firststep_Q:[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v13, v13, 0x3

    const/4 v14, 0x1

    aget-object v15, v22, v14

    invoke-virtual {v7, v8, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p3, v7

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v8, v13, v3, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p3, v7

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v8, v13, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v13, v22

    invoke-virtual {v8, v13, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v8, v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, p3, v7

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v18, v1

    aget-object v1, v12, v15

    invoke-virtual {v8, v14, v4, v15, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v8, p3, v7

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x1

    aget-object v8, v8, v14

    move-object/from16 v21, v3

    aget-object v3, v12, v14

    invoke-virtual {v1, v8, v15, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v12, v14

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v3, v7, 0x2

    aget-object v8, v2, v3

    invoke-virtual {v1, v8, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v2, v3

    invoke-virtual {v1, v3, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v18

    move-object/from16 v3, v21

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_7

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_Q:[J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_Q:[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate2_Q:[J

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v15, v1, 0x3

    mul-int/2addr v14, v15

    move-object/from16 v18, v8

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v21, v15, 0x1

    mul-int v8, v8, v21

    move/from16 p1, v8

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move/from16 v21, v1

    const/4 v1, 0x2

    add-int/2addr v15, v1

    mul-int/2addr v8, v15

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v1, :cond_6

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v15

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/16 v16, 0x0

    aget-object v2, v2, v16

    move-object/from16 v22, v7

    aget-object v7, v9, v16

    invoke-virtual {v1, v2, v4, v3, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v9, v16

    invoke-virtual {v1, v13, v8, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([JI[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v15

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v7, 0x1

    aget-object v2, v2, v7

    move/from16 v23, v3

    aget-object v3, v9, v7

    invoke-virtual {v1, v13, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([JI[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v15

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v7, v10, v3

    invoke-virtual {v1, v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v9, v3

    aget-object v7, v10, v3

    move-object/from16 v24, v5

    aget-object v5, v11, v3

    invoke-virtual {v1, v2, v7, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x1

    aget-object v3, v9, v2

    aget-object v5, p3, v15

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v5, v5, v2

    aget-object v7, v11, v2

    invoke-virtual {v1, v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v15

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v5, v12, v3

    move-object/from16 v7, v22

    invoke-virtual {v1, v2, v7, v14, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v15

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move/from16 v22, v6

    aget-object v6, v12, v5

    invoke-virtual {v1, v2, v3, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v12, v5

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v2, v15, 0x2

    move-object/from16 v3, p4

    aget-object v5, v3, v2

    invoke-virtual {v1, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2, v11, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v15, v15, 0x1

    move-object v2, v3

    move/from16 v6, v22

    move/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v1, 0x2

    goto/16 :goto_7

    :cond_6
    move-object v3, v2

    add-int/lit8 v1, v21, 0x1

    move/from16 v6, p1

    move-object v4, v7

    move v3, v14

    move-object/from16 v5, v18

    goto/16 :goto_6

    :cond_7
    move/from16 v23, v3

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_8
    if-ge v1, v2, :cond_8

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p3, v1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aget-object v8, v11, v7

    move/from16 v14, v23

    invoke-virtual {v5, v6, v4, v14, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[JI[J)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p3, v1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v8, 0x1

    aget-object v6, v6, v8

    aget-object v9, v11, v8

    invoke-virtual {v5, v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v6, v1, 0x2

    aget-object v9, v3, v6

    invoke-virtual {v5, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, v3, v6

    invoke-virtual {v5, v6, v11, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v4, v20

    const/4 v2, 0x4

    invoke-virtual {v1, v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mont_n_way_inv([[[JI[[[J)V

    move v15, v7

    :goto_9
    if-ge v15, v2, :cond_9

    aget-object v1, v3, v15

    aget-object v5, v4, v15

    invoke-direct {v0, v1, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->final_exponentiation_2_torsion([[J[[J[[J)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_9
    return-void
.end method

.method private Tate3_pairings([Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[[J)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v2, v2, [J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v3, v3, [J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v4, v4, [J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v5, v5, [J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v6, v6, [J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v7, v7, [J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v8, v8, [J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v9, v9, [J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v10, v10, [J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v12, 0x2

    filled-new-array {v12, v12, v11}, [I

    move-result-object v11

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[[J

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x4

    filled-new-array {v14, v12, v13}, [I

    move-result-object v13

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v12, v15}, [I

    move-result-object v15

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v12, v15}, [I

    move-result-object v15

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v16, v13

    const/4 v13, 0x2

    filled-new-array {v13, v15}, [I

    move-result-object v15

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v17, v8

    const/4 v8, 0x2

    filled-new-array {v8, v15}, [I

    move-result-object v15

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v18, v3

    const/4 v3, 0x2

    filled-new-array {v3, v15}, [I

    move-result-object v15

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v19, v2

    const/4 v2, 0x2

    filled-new-array {v2, v15}, [I

    move-result-object v15

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v20, v3

    const/4 v3, 0x2

    filled-new-array {v3, v15}, [I

    move-result-object v15

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v21, v13

    const/4 v13, 0x2

    filled-new-array {v13, v15}, [I

    move-result-object v15

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v22, v13

    const/4 v13, 0x2

    filled-new-array {v13, v15}, [I

    move-result-object v15

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v23, v13

    const/4 v13, 0x2

    filled-new-array {v13, v15}, [I

    move-result-object v15

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[J

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v24, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    move-object/from16 v25, v3

    const/4 v3, 0x0

    move-object/from16 v26, v2

    aget-object v2, v14, v3

    invoke-virtual {v15, v13, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move v2, v3

    :goto_0
    const/4 v13, 0x2

    if-ge v2, v13, :cond_0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v15, v1, v2

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v15, v2, 0x2

    aget-object v15, v1, v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v15, p1, v2

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v11, v2

    invoke-virtual {v13, v15, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v15, v2, 0x6

    mul-int/2addr v14, v15

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move/from16 v27, v2

    const/4 v2, 0x0

    invoke-static {v3, v14, v4, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v13, v15, 0x1

    mul-int/2addr v3, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x0

    invoke-static {v2, v3, v5, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v13, v15, 0x2

    mul-int/2addr v3, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x0

    invoke-static {v2, v3, v6, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v13, v15, 0x3

    mul-int/2addr v3, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x0

    invoke-static {v2, v3, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v13, v15, 0x4

    mul-int/2addr v3, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x0

    invoke-static {v2, v3, v9, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v15, v15, 0x5

    mul-int/2addr v3, v15

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x0

    invoke-static {v2, v3, v10, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v14

    const/4 v3, 0x2

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p1, v2

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v13, v13, v14

    aget-object v15, v12, v14

    invoke-virtual {v3, v13, v4, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p1, v2

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aget-object v15, v12, v14

    invoke-virtual {v3, v13, v4, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p1, v2

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aget-object v15, v8, v14

    invoke-virtual {v3, v13, v5, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, p1, v2

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aget-object v15, v8, v14

    invoke-virtual {v3, v13, v5, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, v11, v2

    const/4 v15, 0x0

    aget-object v13, v13, v15

    aget-object v14, v26, v15

    invoke-virtual {v3, v13, v9, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v13, v11, v2

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v28, v5

    aget-object v5, v26, v14

    invoke-virtual {v3, v13, v15, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p1, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v5, v5, v15

    aget-object v13, v25, v15

    invoke-virtual {v3, v5, v10, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p1, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v13, 0x1

    aget-object v5, v5, v13

    aget-object v14, v25, v13

    invoke-virtual {v3, v5, v10, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p1, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    move-object/from16 v13, v21

    invoke-virtual {v3, v12, v5, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v5, 0x0

    aget-object v14, v13, v5

    invoke-virtual {v3, v14, v6, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, p1, v2

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    move-object/from16 v15, v20

    invoke-virtual {v3, v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, v15, v5

    invoke-virtual {v3, v14, v7, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v5, v22

    invoke-virtual {v3, v13, v15, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v10, v23

    move-object/from16 v9, v25

    move-object/from16 v14, v26

    invoke-virtual {v3, v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_conj([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v5, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v22, v11

    aget-object v11, v1, v2

    move-object/from16 v23, v4

    move-object/from16 v4, v24

    invoke-virtual {v3, v11, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, v1, v2

    invoke-virtual {v3, v11, v4, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, v1, v2

    invoke-virtual {v3, v11, v5, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v11, 0x1

    aget-object v4, v12, v11

    aget-object v11, p1, v2

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/16 v25, 0x0

    aget-object v11, v11, v25

    aget-object v1, v13, v25

    invoke-virtual {v3, v4, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v12, v25

    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/4 v11, 0x1

    aget-object v4, v4, v11

    move-object/from16 v25, v12

    aget-object v12, v13, v11

    invoke-virtual {v1, v3, v4, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v13, v11

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v13, v11

    invoke-virtual {v1, v3, v6, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v8, v11

    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/4 v12, 0x0

    aget-object v4, v4, v12

    aget-object v11, v15, v12

    invoke-virtual {v1, v3, v4, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v8, v12

    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/4 v11, 0x1

    aget-object v4, v4, v11

    aget-object v12, v15, v11

    invoke-virtual {v1, v3, v4, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v15, v11

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v15, v11

    invoke-virtual {v1, v3, v7, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v15, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_conj([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v5, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v3, v2, 0x2

    move-object/from16 v4, p2

    aget-object v11, v4, v3

    move-object/from16 v12, v24

    invoke-virtual {v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, v4, v3

    invoke-virtual {v1, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    move-object/from16 v11, v22

    move-object/from16 v4, v23

    move-object/from16 v12, v25

    const/4 v3, 0x2

    const/4 v14, 0x0

    move-object/from16 v22, v5

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v5, v28

    move-object/from16 v21, v13

    move-object/from16 v20, v15

    goto/16 :goto_2

    :cond_1
    move-object/from16 v28, v5

    move-object/from16 v15, v20

    move-object/from16 v13, v21

    move-object/from16 v5, v22

    move-object/from16 v14, v26

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v10, v23

    move-object/from16 v9, v25

    move-object/from16 v23, v4

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    move-object v4, v1

    add-int/lit8 v2, v27, 0x1

    move-object/from16 v4, v23

    move-object/from16 v12, v25

    move-object/from16 v22, v5

    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v5, v28

    move-object/from16 v21, v13

    move-object/from16 v20, v15

    goto/16 :goto_1

    :cond_2
    move-object/from16 v25, v12

    move-object/from16 v13, v21

    move-object/from16 v5, v22

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v23, v4

    move-object v4, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x6

    mul-int/2addr v3, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v7, v19

    const/4 v9, 0x0

    invoke-static {v1, v3, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v6, v9

    mul-int/2addr v3, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v9, v18

    const/4 v11, 0x0

    invoke-static {v1, v3, v9, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    mul-int/lit8 v6, v6, 0x6

    const/4 v11, 0x2

    add-int/2addr v6, v11

    mul-int/2addr v3, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v14, v23

    const/4 v15, 0x0

    invoke-static {v1, v3, v14, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->T_tate3:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0x6

    add-int/lit8 v6, v6, 0x3

    mul-int/2addr v3, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v15, v17

    const/4 v11, 0x0

    invoke-static {v1, v3, v15, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v3, v11

    aget-object v6, v25, v11

    invoke-virtual {v1, v3, v7, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v6, 0x1

    aget-object v3, v3, v6

    aget-object v7, v25, v6

    invoke-virtual {v1, v3, v11, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v25, v11

    aget-object v7, v13, v11

    invoke-virtual {v1, v14, v3, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v25, v6

    aget-object v7, v13, v6

    invoke-virtual {v1, v14, v3, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v1, v13, v3, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    aget-object v6, v8, v3

    invoke-virtual {v1, v6, v9, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v6, v25

    invoke-virtual {v1, v6, v8, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p1, v2

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v7, v7, v3

    aget-object v11, v10, v3

    invoke-virtual {v1, v7, v15, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p1, v2

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v11, 0x1

    aget-object v7, v7, v11

    aget-object v15, v10, v11

    invoke-virtual {v1, v7, v3, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v10, v11

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v5, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v4, v2

    invoke-virtual {v1, v3, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v4, v2

    invoke-virtual {v1, v3, v12, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v4, v2

    invoke-virtual {v1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v7, 0x0

    aget-object v3, v3, v7

    aget-object v11, v6, v7

    move-object/from16 v15, v19

    invoke-virtual {v1, v3, v15, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v6, v7

    aget-object v11, v13, v7

    invoke-virtual {v1, v14, v3, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v3, v3, v7

    const/4 v11, 0x1

    aget-object v14, v13, v11

    aget-object v11, v8, v7

    invoke-virtual {v1, v3, v14, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    const/4 v11, 0x1

    aget-object v3, v3, v11

    aget-object v14, v13, v7

    aget-object v7, v8, v11

    invoke-virtual {v1, v3, v14, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v8, v11

    invoke-virtual {v1, v3, v9, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v6, v8, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    const/4 v7, 0x0

    aget-object v3, v3, v7

    aget-object v14, v10, v7

    move-object/from16 v7, v17

    invoke-virtual {v1, v3, v7, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v5, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v3, v2, 0x2

    aget-object v14, v4, v3

    invoke-virtual {v1, v14, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, v4, v3

    invoke-virtual {v1, v14, v12, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    goto/16 :goto_3

    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v13, v16

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mont_n_way_inv([[[JI[[[J)V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v1, v4, v3

    aget-object v5, v13, v3

    invoke-direct {v0, v1, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->final_exponentiation_3_torsion([[J[[J[[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private final_exponentiation_2_torsion([[J[[J[[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_conj([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    if-ge v4, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cube_Fp2_cycl([[J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    return-void
.end method

.method private final_exponentiation_3_torsion([[J[[J[[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_conj([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    if-ge v4, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqr_Fp2_cycl([[J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    return-void
.end method

.method private from_base([I[JII)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v1, v1, [J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v2, v2, [J

    int-to-long v3, p4

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    add-int/lit8 v0, p3, -0x1

    aget v0, p1, v0

    if-gez v0, :cond_1

    neg-int v0, v0

    int-to-long v6, v0

    mul-long/2addr v6, v3

    aput-wide v6, v1, v5

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v1, p2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->copy_words([J[JI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v3, v1, p2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    goto :goto_0

    :cond_1
    int-to-long v6, v0

    mul-long/2addr v6, v3

    aput-wide v6, p2, v5

    :goto_0
    add-int/lit8 p3, p3, -0x2

    :goto_1
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    if-lt p3, v0, :cond_9

    aget v6, p1, p3

    if-gez v6, :cond_3

    neg-int v6, v6

    int-to-long v6, v6

    aput-wide v6, v1, v5

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v6, v7, v1, v1, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    goto :goto_2

    :cond_3
    int-to-long v6, v6

    aput-wide v6, v1, v5

    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v6, p2, v1, p2, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    invoke-virtual {v7, p2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_orderelm_lt([J[J)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, p2, v8, p2, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    :cond_4
    if-nez v6, :cond_5

    move v3, p4

    :goto_3
    if-le v3, v0, :cond_8

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v4, p2, p2, p2, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    div-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_5
    move v6, p4

    :goto_4
    if-le v6, v0, :cond_8

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, p2, p2, v2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    invoke-virtual {v7, v2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_orderelm_lt([J[J)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, v2, v8, v2, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    :cond_6
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, p2, v2, p2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    invoke-virtual {v7, p2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_orderelm_lt([J[J)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, p2, v8, p2, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    :cond_7
    div-int/lit8 v6, v6, 0x3

    goto :goto_4

    :cond_8
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_1

    :cond_9
    aget p1, p1, v5

    if-gez p1, :cond_b

    neg-int p1, p1

    int-to-long v2, p1

    aput-wide v2, v1, v5

    and-int/lit8 p1, p4, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {p1, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p3, v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    goto :goto_5

    :cond_b
    int-to-long v2, p1

    aput-wide v2, v1, v5

    :goto_5
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_orderelm_lt([J[J)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    :cond_c
    return-void
.end method


# virtual methods
.method protected BiQuad_affine([[J[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, p1, p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, p3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, p3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v9, v4, v6

    invoke-virtual {p1, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v9, v3, v6

    invoke-virtual {p1, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v7, 0x1

    aget-object v8, p2, v7

    aget-object v9, v3, v7

    invoke-virtual {p1, v8, v6, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, p2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v8, p3, v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v10, v5, v6

    invoke-virtual {p1, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v8, p3, v7

    aget-object v7, v5, v7

    invoke-virtual {p1, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v5, v1, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v4, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v5, v1, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqrt_Fp2([[J[[J)V

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->make_positive([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v3, v5, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, v2, v2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    return-void
.end method

.method protected BuildEntangledXonly([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[B[B)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v2, v2, [J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x2

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_sqr_fp2([[J[J)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_v_qnr:[[J

    aput-byte v7, p3, v8

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_v_qr:[[J

    aput-byte v8, p3, v8

    :goto_0
    aput-byte v8, p4, v8

    move v9, v8

    :cond_1
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, p2, v8

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, p1, v6, v9, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[JI[[J)V

    add-int/2addr v9, v4

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, p2, v8

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, p2, v8

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v11, p1, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, p2, v8

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v11, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, v5, v8

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v13, v5, v8

    invoke-virtual {v10, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v11, p2, v8

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v11, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    aget-byte v10, p4, v8

    add-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v10, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_sqr_fp2([[J[J)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-byte v2, p4, v8

    sub-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, p4, v8

    aget-byte v2, p3, v8

    if-ne v2, v7, :cond_2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_r_qnr:[[J

    aget-byte v9, p4, v8

    aget-object v6, v6, v9

    aget-object v9, v3, v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_r_qr:[[J

    aget-byte v9, p4, v8

    aget-object v6, v6, v9

    aget-object v9, v3, v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p2, v8

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, p2, v7

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v6, p1, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v7

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, p2, v7

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, p2, v4

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v6, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v4

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, p2, v4

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v3, v8

    aget-object v6, v3, v7

    invoke-virtual {v1, v2, v8, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v6, v3, v8

    invoke-virtual {v1, v2, v6, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v4

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v5, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected BuildEntangledXonly_Decomp([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;II)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    if-ne p3, v3, :cond_0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_v_qnr:[[J

    goto :goto_0

    :cond_0
    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_v_qr:[[J

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->TABLE_V_LEN:I

    div-int/2addr v5, v1

    const/4 v6, 0x0

    if-lt p4, v5, :cond_1

    move p4, v6

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    mul-int/lit8 v7, p4, 0x2

    aget-object v8, p2, v6

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v5, p1, v4, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[JI[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p2, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p2, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v4, v5, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p2, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v4, v5, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, v2, v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v8, v2, v6

    invoke-virtual {v4, v5, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, p2, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v4, v5, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    if-ne p3, v3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_r_qnr:[[J

    aget-object p4, v4, p4

    aget-object v4, v0, v6

    invoke-virtual {p3, p4, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->table_r_qr:[[J

    aget-object p4, v4, p4

    aget-object v4, v0, v6

    invoke-virtual {p3, p4, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    :goto_1
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p4, p2, v6

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, p2, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p3, p4, p1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p3, p2, v3

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p3, p2, v6

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object p4, p2, v3

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, p2, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p3, p4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p3, p2, v1

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object p4, p2, v1

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p3, v0, v6

    aget-object p4, v0, v3

    invoke-virtual {p1, p3, v6, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object p4, v0, v6

    invoke-virtual {p1, p3, p4, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p2, v1

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v2, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected BuildOrdinary2nBasis_dual([[J[[[[J[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B[B)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v4, v7}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {p0, p1, v3, p4, p5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildEntangledXonly([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object p5, v3, v5

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object p5, p5, v5

    invoke-virtual {p1, p4, v5, p5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object p5, v3, v6

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object p5, p5, v5

    invoke-virtual {p1, p4, v5, p5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move p1, v5

    :goto_0
    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge p1, p4, :cond_0

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object p5, v3, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, p1

    aget-object v4, p2, v4

    invoke-virtual {p4, p5, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object p5, v3, v6

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, p1

    aget-object v4, p2, v4

    invoke-virtual {p4, p5, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object p5, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, p1

    aget-object v4, p2, v4

    invoke-virtual {p4, p5, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object p4, v1, v5

    invoke-virtual {p1, p2, v5, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, v1, v5

    invoke-virtual {p1, p2, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, v1, v5

    invoke-virtual {p1, v0, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, v1, v5

    invoke-virtual {p1, p2, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object p2, v3, v5

    aget-object p4, p3, v5

    invoke-virtual {p1, v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->CompleteMPoint([[JLorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V

    invoke-virtual {p0, v1, v3, p3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->RecoverY([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V

    return-void
.end method

.method protected BuildOrdinary3nBasis_Decomp_dual([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[I[II)V
    .locals 12

    const/4 v8, 0x2

    new-array v9, v8, [B

    aget v0, p4, p5

    and-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    const/4 v10, 0x0

    aput-byte v1, v9, v10

    const/4 v11, 0x1

    ushr-int/2addr v0, v11

    and-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v9, v11

    aget v0, p3, v10

    sub-int/2addr v0, v11

    aput v0, p3, v10

    const/4 v3, 0x0

    aget-object v0, p2, v10

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, v9

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Elligator2([[J[II[[J[BII)V

    aget v0, p3, v11

    sub-int/2addr v0, v11

    aput v0, p3, v11

    const/4 v3, 0x1

    aget-object v0, p2, v11

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Elligator2([[J[II[[J[BII)V

    aget-object v0, p2, v10

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v1, p2, v11

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, p2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BiQuad_affine([[J[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    return-void
.end method

.method protected BuildOrdinary3nBasis_dual([[J[[[[J[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[II)V
    .locals 15

    move-object v8, p0

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[[J

    const/4 v11, 0x1

    new-array v12, v11, [B

    new-array v13, v11, [B

    const/4 v14, 0x0

    aget-object v3, v10, v14

    aget-object v4, p3, v14

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FirstPoint3n([[J[[[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[B[B)V

    aget-byte v0, v13, v14

    aput v0, p5, p6

    aget v0, p4, v14

    aput v0, p4, v11

    aget-object v3, v10, v11

    aget-object v4, p3, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->SecondPoint3n([[J[[[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[B[B)V

    aget v0, p5, p6

    aget-byte v1, v13, v14

    shl-int/2addr v1, v11

    or-int/2addr v0, v1

    aput v0, p5, p6

    aget-object v0, v10, v14

    aget-object v1, v10, v11

    move-object/from16 v2, p1

    invoke-virtual {p0, v2, v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BiQuad_affine([[J[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_full_dual_4_isog([[[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    aget-object v0, p3, v14

    aget-object v1, p3, v11

    invoke-virtual {p0, v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->makeDiff(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    return-void
.end method

.method protected Compress_PKA_dual([J[J[J[J[[J[I[B)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v9, v1, [J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v15, v1, [J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v14, 0x2

    filled-new-array {v14, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2, v2, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v13, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v12, 0x0

    aget-object v2, v13, v12

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v4, v13, v12

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v13, v12

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v4, v13, v12

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mod3([J)I

    move-result v10

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v1

    move-object/from16 v17, p2

    move-object/from16 v18, p2

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v1

    move-object/from16 v17, p4

    move-object/from16 v18, p4

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v18, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v2, p3

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    if-eqz v10, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v2, p3

    move-object v3, v15

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_inversion_mod_order_bingcd([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object v4, v15

    move-object v5, v9

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v12, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    move-object/from16 v6, p4

    invoke-virtual {v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v3, p4

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/2addr v2, v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    aput-byte v12, v8, v1

    move/from16 v16, v14

    move-object/from16 v22, v13

    move v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_0

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v6, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v11, p1

    move v5, v12

    move-object v12, v15

    move-object v3, v13

    move-object v13, v1

    move/from16 v16, v14

    move-object v14, v2

    move-object/from16 v17, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_inversion_mod_order_bingcd([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    invoke-virtual {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v11, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v2, p3

    move-object v12, v3

    move-object/from16 v3, v17

    move-object v4, v9

    move v13, v5

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v13, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v3, p4

    move-object/from16 v4, v17

    move-object v5, v9

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v1, v9, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    invoke-virtual {v1, v9, v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    const/16 v2, -0x80

    aput-byte v2, v8, v1

    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v12, v8, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    aget-byte v2, v8, v1

    aget v3, p6, v13

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget v2, p6, v2

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget v2, p6, v16

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    return-void
.end method

.method protected Compress_PKB_dual([J[J[J[J[[J[B[B[B)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v1, v1, [J

    const/4 v2, 0x0

    aget-wide v3, p3, v2

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {p3, p1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p3, p1, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, v2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    add-int/lit8 p1, p1, -0x1

    aget-byte p3, p8, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {p1, p4, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p4, v1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    aget-byte p3, p8, p1

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, v1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, p2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    aget-byte p2, p8, p1

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, p2

    aput-byte v2, p8, p1

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {p1, p3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p3, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, v2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    add-int/lit8 p1, p1, -0x1

    aget-byte p3, p8, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p4, v1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    aget-byte p3, p8, p1

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, v1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {p1, v0, p8, p2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    aget-byte p2, p8, p1

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, p2

    const/16 p2, -0x80

    aput-byte p2, p8, p1

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p5, p8, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, p2

    aget-byte p2, p8, p1

    aget-byte p3, p6, v2

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    aget-byte p2, p7, v2

    aput-byte p2, p8, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    aput-byte v2, p8, p1

    return-void
.end method

.method protected Compress_PKB_dual_extended([J[J[J[J[[J[B[B[B)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAXBITS_ORDER:I

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    sub-int/2addr v9, v10

    const-wide/16 v10, -0x1

    ushr-long v9, v10, v9

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v11, v2, v3, v6, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v11, v4, p1, v7, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {v11, v7, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v11, v6, v7, v7, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v7, v11

    and-long/2addr v12, v9

    aput-wide v12, v7, v11

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v11, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v7, v3, v8, v6, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v11, v6, v3

    and-long/2addr v11, v9

    aput-wide v11, v6, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v5, v11, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {v3, p1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v3, p1, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v12, v6, v1

    and-long/2addr v12, v9

    aput-wide v12, v6, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {v1, v6, v5, v3, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_neg([J[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v4, v8, v6, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, v6, v1

    and-long/2addr v3, v9

    aput-wide v3, v6, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {v1, v6, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v2, v8, v6, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v6, v1

    and-long/2addr v2, v9

    aput-wide v2, v6, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {v1, v6, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v3, p5

    invoke-virtual {v1, v3, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    aget-byte v2, p6, v11

    aput-byte v2, v5, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p7, v11

    aput-byte v2, v5, v1

    return-void
.end method

.method protected Dlogs2_dual([[[J[I[J[J[J[J)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    aget-object p3, p1, v1

    invoke-virtual {p0, p3, p2, p4, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    const/4 p3, 0x1

    aget-object p3, p1, p3

    invoke-virtual {p0, p3, p2, p5, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    const/4 p3, 0x3

    aget-object p1, p1, p3

    invoke-virtual {p0, p1, p2, p6, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, p4, p4, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Alice_order:[J

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, p6, p6, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    return-void
.end method

.method protected Dlogs3_dual([[[J[I[J[J[J[J)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    const/4 p3, 0x2

    aget-object p3, p1, p3

    invoke-virtual {p0, p3, p2, p4, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    const/4 p3, 0x1

    aget-object p3, p1, p3

    invoke-virtual {p0, p3, p2, p5, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p2, p6, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->solve_dlog([[J[I[JI)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, p4, p4, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {p1, p2, p6, p6, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_sub([J[J[JI)I

    return-void
.end method

.method protected Elligator2([[J[II[[J[BII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v2, v2, [J

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v3, v3, [J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v4, v4, [J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v5, v5, [J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v6, v6, [J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v7, v7, [J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v9, 0x2

    filled-new-array {v9, v8}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v12, p1

    invoke-virtual {v11, v12, v12, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v12, v8, v13

    invoke-virtual {v11, v12, v2, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v11, v8, v8, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    aget v11, p2, p3

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->v_3_torsion:[[[J

    aget-object v11, v14, v11

    invoke-virtual {v12, v8, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    const/4 v11, 0x1

    if-nez p7, :cond_2

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v12, v8, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v12, v10, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, v10, v13

    invoke-virtual {v12, v14, v2, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v12, v10, v13

    invoke-virtual {v2, v12, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsqr_mont([J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v10, v10, v11

    invoke-virtual {v2, v10, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsqr_mont([J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v5, v13, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move v2, v13

    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v6, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsqr_mont([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    if-ge v13, v2, :cond_1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsqr_mont([J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v6, v7, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpmul_mont([J[J[J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsqr_mont([J[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcorrectionPRIME([J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcorrectionPRIME([J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-static {v7, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1, v8, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    if-nez p7, :cond_3

    aput-byte v11, p5, p6

    goto :goto_2

    :cond_2
    aget-byte v2, p5, p6

    if-ne v2, v11, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1, v8, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected EphemeralKeyGeneration_A_extended([B[B)I
    .locals 19

    move-object/from16 v8, p0

    const/4 v0, 0x3

    new-array v7, v0, [I

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_3:I

    new-array v9, v0, [I

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x5

    filled-new-array {v0, v4, v1, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[[[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x4

    filled-new-array {v4, v1, v0}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v12, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v13, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v14, v0, [J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v15, v0, [J

    new-array v6, v1, [Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    const/16 v16, 0x0

    aput-object v0, v6, v16

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    aput-object v0, v6, v2

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v3, v10, v2}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FullIsogeny_A_dual([B[[[[J[[JI)V

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v3

    move-object v3, v6

    move-object v4, v7

    move-object v5, v7

    move-object/from16 v18, v7

    move-object v7, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildOrdinary3nBasis_dual([[J[[[[J[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[II)V

    invoke-direct {v8, v7, v11}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate3_pairings([Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[[J)V

    move-object v1, v11

    move-object v2, v9

    move-object v3, v13

    move-object v4, v12

    move-object v5, v15

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Dlogs3_dual([[[J[I[J[J[J[J)V

    move-object v1, v13

    move-object v2, v12

    move-object v3, v15

    move-object v4, v14

    move-object v5, v10

    move-object/from16 v6, v18

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Compress_PKA_dual([J[J[J[J[[J[I[B)V

    return v16
.end method

.method protected EphemeralKeyGeneration_B([B[B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralKeyGeneration_B_extended([B[BI)I

    move-result p1

    return p1
.end method

.method protected EphemeralKeyGeneration_B_extended([B[BI)I
    .locals 21

    move-object/from16 v9, p0

    const/4 v7, 0x1

    new-array v8, v7, [B

    new-array v10, v7, [B

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_2:I

    new-array v6, v0, [I

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v11, v0, [J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v12, v0, [J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v13, v0, [J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v14, v0, [J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v15, 0x2

    filled-new-array {v0, v15, v15, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [[[[J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x4

    filled-new-array {v5, v15, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[[J

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[J

    new-array v1, v15, [Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    const/4 v5, 0x0

    aput-object v0, v1, v5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;

    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;-><init>(I)V

    aput-object v0, v1, v7

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v15, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v15}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    move-object/from16 v15, p1

    invoke-virtual {v9, v15, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FullIsogeny_B_dual([B[[[[J[[J)V

    move-object v15, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move-object v1, v3

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move-object v4, v8

    move-object/from16 v20, v5

    const/4 v7, 0x0

    const/16 v16, 0x4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildOrdinary2nBasis_dual([[J[[[[J[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B[B)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    move-object/from16 v2, p1

    aget-object v3, v2, v7

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v3, v7

    aget-object v4, v2, v7

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v4, v4, v7

    invoke-virtual {v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v3, v2, v7

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v3, v7

    aget-object v4, v2, v7

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v4, v4, v7

    invoke-virtual {v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v4, v4, v7

    aget-object v5, v2, v3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v5, v5, v7

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v4, v2, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v4, v4, v7

    aget-object v5, v2, v3

    iget-object v3, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, v3, v7

    invoke-virtual {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v3, v20

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v4, v7

    invoke-virtual {v0, v1, v7, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/16 v17, 0x1

    aget-object v5, v5, v17

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v5, v5, v7

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/16 v17, 0x1

    aget-object v5, v5, v17

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v5, v5, v7

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v4, v4, 0x5

    iget-object v5, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/16 v16, 0x1

    aget-object v5, v5, v16

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v4, v4, 0x6

    iget-object v5, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v5, v5, v7

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_basis_zero:[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v4, v4, 0x7

    iget-object v5, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/16 v16, 0x1

    aget-object v5, v5, v16

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move-object/from16 v1, v19

    invoke-direct {v9, v3, v15, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Tate2_pairings(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v1, v7

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v1, v16

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    move-object/from16 v0, p0

    move-object v2, v6

    move-object v3, v12

    move-object v4, v11

    move-object v5, v14

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Dlogs2_dual([[[J[I[J[J[J[J)V

    move/from16 v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, v18

    move-object v6, v8

    move v15, v7

    move-object v7, v10

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Compress_PKB_dual_extended([J[J[J[J[[J[B[B[B)V

    goto :goto_0

    :cond_0
    move v15, v7

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, v18

    move-object v6, v8

    move-object v7, v10

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Compress_PKB_dual([J[J[J[J[[J[B[B[B)V

    :goto_0
    return v15
.end method

.method EphemeralSecretAgreement_A([BI[B[B)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralSecretAgreement_A_extended([BI[B[BI)I

    move-result p1

    return p1
.end method

.method protected EphemeralSecretAgreement_A_extended([BI[B[BI)I
    .locals 21

    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v9, v0, [I

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v10, 0x2

    filled-new-array {v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[J

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v13, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v14, v0, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[J

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x5

    filled-new-array {v1, v10, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[[J

    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v16, v3

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v18, v5

    move-object v5, v6

    move-object/from16 p5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->PKBDecompression_extended([BI[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[BI)V

    goto :goto_0

    :cond_0
    move-object/from16 v18, v5

    move-object/from16 p5, v6

    move-object v10, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->PKBDecompression([BI[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    :goto_0
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v7, 0x0

    aget-object v3, v12, v7

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v10, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v12, v7

    invoke-virtual {v0, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    add-int/lit8 v6, v2, -0x1

    move-object v2, v13

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v13, v0}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    :cond_1
    move v0, v7

    move v1, v0

    move v2, v1

    :goto_1
    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    if-ge v10, v3, :cond_4

    move v6, v1

    :goto_2
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v1, v10

    if-ge v6, v1, :cond_2

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v1, v14, v2

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v14, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v4, v14, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v16, v2, 0x1

    aput v6, v9, v2

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Alice:[I

    add-int/lit8 v17, v0, 0x1

    aget v0, v1, v0

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    mul-int/lit8 v19, v0, 0x2

    move-object v2, v13

    move-object v3, v13

    move-object v4, v11

    move-object v5, v12

    move/from16 v20, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v6, v20, v0

    move/from16 v2, v16

    move/from16 v0, v17

    goto :goto_2

    :cond_2
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v3, v18

    invoke-virtual {v1, v13, v11, v12, v3}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    move v1, v7

    :goto_3
    if-ge v1, v2, :cond_3

    iget-object v4, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v5, v14, v1

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v4, v2, -0x1

    aget-object v5, v14, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v6, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, v14, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v1, v9, v4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v3

    goto/16 :goto_1

    :cond_4
    move-object/from16 v3, v18

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v0, v13, v11, v12, v3}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v11, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v12, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v11, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v0, v11, v12, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->j_inv([[J[[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, p4

    invoke-virtual {v0, v15, v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return v7
.end method

.method EphemeralSecretAgreement_B([B[B[B)I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v1, v1, [I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x2

    filled-new-array {v3, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [[J

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v11, v4}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v12, v4, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x3

    filled-new-array {v5, v3, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, [[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v0, v4, v5, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->PKADecompression_dual([B[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v9, 0x0

    aget-object v6, v10, v9

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v14, v10, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v14, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    const/4 v3, 0x1

    move v4, v9

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge v3, v7, :cond_2

    move v8, v5

    :goto_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v5, v3

    if-ge v8, v5, :cond_0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v5, v12, v6

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, v12, v6

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v5, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v9, v12, v6

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v16, v6, 0x1

    aput v8, v1, v6

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Bob:[I

    add-int/lit8 v17, v4, 0x1

    aget v18, v5, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object v5, v11

    move-object v6, v11

    move-object v7, v10

    move/from16 v19, v8

    move-object v8, v2

    move/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v8, v19, v18

    move/from16 v6, v16

    move/from16 v4, v17

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v5, v11, v10, v2, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v9, 0x0

    :goto_2
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    if-ge v9, v6, :cond_1

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v7, v12, v9

    invoke-virtual {v5, v7, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v7, v6, -0x1

    aget-object v8, v12, v7

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v9, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v5, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v8, v12, v7

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v9, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v5, v1, v7

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v11, v10, v2, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v2, v10, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v2, v10, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v14, v2, v13}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->j_inv([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    return v3
.end method

.method protected FinalExpo3([[J[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, p1, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, p1, p2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, p1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, p1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cube_Fp2_cycl([[J[J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected FinalExpo3_2way([[[J[[[J)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v4

    aget-object v8, v0, v4

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, v0, v4

    aget-object v5, v7, v5

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p1, v4

    aget-object v7, v0, v4

    invoke-virtual {v5, v6, v7, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mont_n_way_inv([[[JI[[[J)V

    move v0, v3

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p1, v0

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p1, v0

    aget-object v7, p2, v0

    invoke-virtual {v4, v6, v7, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p1, v0

    aget-object v7, v2, v0

    invoke-virtual {v4, v6, v7, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    move v4, v3

    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    if-ge v4, v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p1, v0

    invoke-virtual {v6, v7, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_3
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p1, v0

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cube_Fp2_cycl([[J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected FirstPoint3n([[J[[[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[B[B)V
    .locals 12

    move-object v8, p0

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v10, v0, [J

    const/4 v11, 0x0

    aput v11, p5, v11

    move v0, v11

    :goto_0
    if-nez v0, :cond_0

    aput-byte v11, p7, v11

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Elligator2([[J[II[[J[BII)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v3, v3, v11

    invoke-virtual {v0, v1, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v10, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move-object v0, p2

    invoke-virtual {p0, p2, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_full_dual_4_isog([[[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    move-object/from16 v1, p4

    move-object/from16 v4, p6

    invoke-direct {p0, v9, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FirstPoint_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B)Z

    move-result v5

    aget v6, p5, v11

    add-int/2addr v6, v3

    aput v6, p5, v11

    move v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected FormatPrivKey_B([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    add-int/lit8 v0, v0, -0x2

    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK3_BOB:I

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK2_BOB:I

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mul3([B)V

    return-void
.end method

.method protected FullIsogeny_A_dual([B[[[[J[[JI)V
    .locals 24

    move-object/from16 v6, p0

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v15, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v5, v0, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x2

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x5

    filled-new-array {v1, v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [[[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_ALICE:I

    new-array v0, v0, [I

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v11, v7, [J

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->A_gen:[J

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->init_basis([J[[J[[J[[J)V

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v13, 0x0

    aget-object v4, v3, v13

    invoke-virtual {v7, v12, v13, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, v2, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v2, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    iget-object v13, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v4

    move-object/from16 v17, p1

    move/from16 v18, v7

    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    const/4 v4, 0x0

    move-object v13, v15

    invoke-virtual/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont([[J)V

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v9, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v10, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v9, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v9, v9, v4

    invoke-virtual {v7, v8, v4, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpzero([J)V

    move/from16 v7, p4

    if-ne v7, v9, :cond_0

    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/2addr v10, v11

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    add-int/2addr v10, v11

    move-object/from16 v11, p1

    invoke-virtual {v7, v8, v11, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    :cond_0
    iget-object v7, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    const/4 v10, 0x3

    if-ne v7, v9, :cond_1

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v7, v11}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    sub-int/2addr v12, v9

    move-object v13, v0

    move-object v0, v11

    move-object v11, v1

    move-object v1, v15

    move-object v14, v2

    move-object v2, v7

    move-object/from16 p1, v3

    move/from16 v16, v4

    move-object v4, v14

    move-object/from16 v17, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v12, p1

    invoke-virtual {v0, v7, v12, v14}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v0, v15, v7}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object v2, p2, v2

    aget-object v2, v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object v2, p2, v2

    aget-object v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    goto :goto_0

    :cond_1
    move-object v13, v0

    move-object v11, v1

    move-object v14, v2

    move-object v12, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    :goto_0
    move v7, v9

    move/from16 v0, v16

    move v1, v0

    move v2, v1

    :goto_1
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    const/16 v18, 0x4

    if-ge v7, v3, :cond_4

    move v5, v0

    move v4, v1

    move/from16 v19, v2

    :goto_2
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v0, v7

    if-ge v5, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v0, v17, v4

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v17, v4

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v17, v4

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v20, v4, 0x1

    aput v5, v13, v4

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Alice:[I

    add-int/lit8 v21, v19, 0x1

    aget v19, v0, v19

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    mul-int/lit8 v22, v19, 0x2

    move-object v1, v15

    move-object v2, v15

    move-object v3, v12

    move-object v4, v14

    move/from16 v23, v5

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v5, v23, v19

    move/from16 v4, v20

    move/from16 v19, v21

    goto :goto_2

    :cond_2
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v1, v7, -0x1

    aget-object v2, p2, v1

    aget-object v2, v2, v16

    invoke-virtual {v0, v12, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v1

    aget-object v2, v2, v9

    invoke-virtual {v0, v14, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    invoke-virtual {v6, v15, v12, v14, v11}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->get_4_isog_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    move/from16 v0, v16

    :goto_3
    if-ge v0, v4, :cond_3

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v3, v17, v0

    invoke-virtual {v2, v3, v11}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    aget-object v2, v11, v8

    aget-object v3, v11, v10

    aget-object v5, v11, v18

    aget-object v18, p2, v1

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move/from16 v21, v4

    move-object/from16 v4, v18

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_dual_4_isog_shared([[J[[J[[J[[[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v4, v21, -0x1

    aget-object v1, v17, v4

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v17, v4

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v0, v13, v4

    add-int/lit8 v1, v21, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_4
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v1, v9

    aget-object v1, p2, v1

    aget-object v1, v1, v16

    invoke-virtual {v0, v12, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v1, v9

    aget-object v1, p2, v1

    aget-object v1, v1, v9

    invoke-virtual {v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    invoke-virtual {v6, v15, v12, v14, v11}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->get_4_isog_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    aget-object v1, v11, v8

    aget-object v2, v11, v10

    aget-object v3, v11, v18

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v0, v9

    aget-object v4, p2, v0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_dual_4_isog_shared([[J[[J[[J[[[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object v1, p2, v1

    aget-object v1, v1, v16

    invoke-virtual {v0, v12, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object v1, p2, v1

    aget-object v1, v1, v9

    invoke-virtual {v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected FullIsogeny_B_dual([B[[[[J[[J)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p3

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v12, v1, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v6, 0x3

    filled-new-array {v6, v2, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [[[J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v8, v1, [I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v6, v1, [J

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen:[J

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->init_basis([J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->XQB3:[J

    iget-object v7, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v22, v15

    const/4 v15, 0x0

    aget-object v7, v7, v15

    invoke-virtual {v1, v2, v15, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->XQB3:[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v15, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/16 v23, 0x1

    aget-object v15, v15, v23

    invoke-virtual {v1, v2, v7, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v7, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v15, 0x0

    aget-object v7, v7, v15

    invoke-virtual {v1, v2, v15, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v7, v13, v15

    invoke-virtual {v1, v2, v15, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v13, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v13, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v18, 0x0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v10

    move-object v15, v8

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    move/from16 v7, v23

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge v7, v4, :cond_2

    move v8, v1

    :goto_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v1, v7

    if-ge v8, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v1, v12, v2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v5, v12, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v5, v12, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v16, v2, 0x1

    aput v8, v15, v2

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Bob:[I

    add-int/lit8 v17, v3, 0x1

    aget v18, v1, v3

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object v2, v10

    move-object v3, v10

    move-object v4, v14

    move-object v5, v13

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v8, v8, v18

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object/from16 v4, v22

    invoke-virtual {v1, v10, v14, v13, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v6, v12, v1

    invoke-virtual {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v11, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v6, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    add-int/lit8 v8, v7, -0x1

    aget-object v16, p2, v8

    move/from16 p1, v3

    const/16 v17, 0x0

    aget-object v3, v16, v17

    invoke-virtual {v1, v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, p2, v8

    aget-object v6, v6, v23

    invoke-virtual {v1, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v3, v2, -0x1

    aget-object v5, v12, v3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v5, v12, v3

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v1, v15, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p1

    move-object/from16 v22, v4

    goto/16 :goto_0

    :cond_2
    move-object/from16 v4, v22

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v10, v14, v13, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v1, v11, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p2, v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p2, v4

    aget-object v4, v4, v23

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v13, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v9, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    return-void
.end method

.method protected Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    if-ne p3, v2, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_BITS:I

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x2

    aget-object v4, p1, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p1, p1, v3

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, p1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    move p1, v3

    :goto_1
    const-wide/16 v4, 0x0

    if-ge v3, p3, :cond_1

    ushr-int/lit8 v2, v3, 0x6

    aget-wide v6, p2, v2

    and-int/lit8 v2, v3, 0x3f

    ushr-long/2addr v6, v2

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr p1, v2

    int-to-long v6, p1

    sub-long/2addr v4, v6

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {p1, p4, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v4, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v0, v1, v4, p5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLADD(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v3, v3, 0x1

    move p1, v2

    goto :goto_1

    :cond_1
    int-to-long p1, p1

    sub-long/2addr v4, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {p1, p4, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    return-void
.end method

.method protected PKADecompression_dual([B[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p4

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v8, 0x2

    filled-new-array {v8, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[J

    const/4 v1, 0x3

    new-array v10, v1, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v11, 0x0

    aput-object v2, v10, v11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v12, 0x1

    aput-object v2, v10, v12

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v2, v10, v8

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v15, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v14, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v13, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v5, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v4, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v3, v2, [J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v2, v2, [J

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/2addr v12, v1

    invoke-virtual {v8, v7, v0, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    const-wide/16 v16, 0x1

    aput-wide v16, v4, v11

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v4

    move-object/from16 v19, v12

    move-object/from16 v20, v11

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    const/4 v8, 0x3

    mul-int/2addr v1, v8

    iget-object v11, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v11

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v11, v1

    new-array v1, v8, [B

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    mul-int/2addr v12, v8

    iget-object v8, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v12, v8

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v8, 0x3

    invoke-static {v7, v12, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v8, v1, v2

    const v12, 0xffff

    and-int/2addr v8, v12

    const/16 v17, 0x1

    aget-byte v18, v1, v17

    and-int v2, v18, v12

    const/16 v17, 0x2

    aget-byte v1, v1, v17

    and-int/2addr v1, v12

    filled-new-array {v8, v2, v1}, [I

    move-result-object v8

    const/4 v1, 0x0

    aget v2, v8, v1

    and-int/lit8 v2, v2, 0x7f

    aput v2, v8, v1

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v12, v0, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const/4 v3, 0x0

    aget-object v4, v9, v3

    invoke-virtual {v2, v12, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aget-object v4, v9, v2

    invoke-virtual {v1, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v9, v3

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v4, v9, v3

    invoke-virtual {v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v9, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v23, v16

    move-object v2, v10

    move-object/from16 v24, v17

    move-object v3, v8

    move-object/from16 v7, v18

    move-object v4, v8

    move-object v8, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildOrdinary3nBasis_Decomp_dual([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[I[II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v2, 0x0

    aget-object v3, v10, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v3, v3, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v3, 0x1

    aget-object v4, v10, v3

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v4, v4, v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v1, v10, v2

    aget-object v2, v10, v3

    int-to-long v3, v11

    neg-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v18, 0x0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v23

    move/from16 v20, v1

    move/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object v12, v13

    move-object v13, v0

    move-object v5, v14

    move-object/from16 v14, v23

    move-object/from16 v22, v15

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p2

    move-object/from16 v3, v24

    move-object v15, v5

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v0

    move-object/from16 v17, v24

    move-object/from16 v18, v15

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p2

    move-object/from16 v3, v24

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v0

    move-object/from16 v18, v12

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_B_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p2

    move-object/from16 v3, v24

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v0

    move-object/from16 v18, v8

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_Montgomery_mod_order([J[J[J[J[J)V

    if-nez v11, :cond_0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v14, v22

    move-object v2, v15

    move-object v15, v12

    move-object/from16 v16, v12

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v12, v7, v12, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v18, v12

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_inversion_mod_order_bingcd([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object v15, v8

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v2, v8, v8, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move-object/from16 v19, v12

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v0, v12, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object/from16 v4, p3

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    goto/16 :goto_0

    :cond_0
    move-object v2, v15

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v14, v22

    move-object v15, v8

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v8, v7, v8, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB1:[J

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v8

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_inversion_mod_order_bingcd([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object v15, v12

    move-object/from16 v16, v12

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v2, v12, v12, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move-object/from16 v19, v12

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->Montgomery_multiply_mod_order([J[J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Bob_order:[J

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_RB2:[J

    invoke-virtual {v0, v12, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_Montgomery_mod_order([J[J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object/from16 v4, p3

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    :goto_0
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v2, v9, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->Double(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V

    return-void
.end method

.method protected PKBDecompression([BI[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v9, 0x2

    filled-new-array {v9, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v9

    new-array v11, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v9

    new-array v12, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v9

    new-array v13, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v5, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v4, v0, [J

    const/4 v0, 0x3

    new-array v3, v0, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAXBITS_ORDER:I

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    sub-int/2addr v1, v2

    const-wide/16 v14, -0x1

    ushr-long v20, v14, v1

    const-wide/16 v1, 0x1

    const/4 v15, 0x0

    aput-wide v1, v13, v15

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr v1, v0

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v1, v2

    aget-byte v1, v7, v1

    ushr-int/lit8 v1, v1, 0x7

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr v2, v0

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v2, v14

    aget-byte v2, v7, v2

    const/16 v22, 0x1

    and-int/lit8 v2, v2, 0x1

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr v14, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x1

    aget-byte v0, v7, v14

    invoke-virtual {v6, v8, v3, v2, v0}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildEntangledXonly_Decomp([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v14, v3, v15

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v14, v14, v15

    invoke-virtual {v0, v2, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v14, v3, v22

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v14, v14, v15

    invoke-virtual {v0, v2, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v8, v15

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v9, v10, v15

    invoke-virtual {v0, v2, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v8, v22

    aget-object v9, v10, v22

    invoke-virtual {v0, v2, v15, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v10, v15

    iget-object v9, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v14, v10, v15

    invoke-virtual {v0, v2, v9, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v10, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move v9, v15

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v5

    move/from16 v18, v0

    move/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v2, v3, v9

    aget-object v9, v3, v22

    const-wide/16 v14, 0x0

    int-to-long v7, v1

    sub-long/2addr v14, v7

    invoke-virtual {v0, v2, v9, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    if-nez v1, :cond_0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move-object v9, v3

    move-object v3, v4

    move-object v14, v4

    move v4, v7

    move-object v7, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v7, v14, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v11, v13, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v11, v0

    and-long v1, v1, v20

    aput-wide v1, v11, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v7, v14, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v14, v11, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v11, v12, v13, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v13, v0

    and-long v1, v1, v20

    aput-wide v1, v13, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    goto/16 :goto_0

    :cond_0
    move-object v9, v3

    move-object v14, v4

    move-object v7, v5

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v7, v14, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v11, v13, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v11, v0

    and-long v1, v1, v20

    aput-wide v1, v11, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v7, v14, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v2, 0x0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v14, v11, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v11, v12, v13, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v13, v0

    and-long v1, v1, v20

    aput-wide v1, v13, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    :goto_0
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v2, v10, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe_fast(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V

    return-void
.end method

.method protected PKBDecompression_extended([BI[BLorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[BI)V
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v12, 0x2

    filled-new-array {v12, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v12, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v12

    new-array v15, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v12

    new-array v5, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v4, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    mul-int/2addr v0, v12

    new-array v3, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v2, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v1, v0, [J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v0, v0, [J

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v12, v12, [J

    move-object/from16 v22, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v0, v0, [J

    const/4 v10, 0x3

    new-array v11, v10, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    move-object/from16 v23, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v0, 0x0

    aput-object v10, v11, v0

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/16 v25, 0x1

    aput-object v10, v11, v25

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v10, 0x2

    aput-object v0, v11, v10

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAXBITS_ORDER:I

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    sub-int/2addr v0, v10

    move-object v10, v14

    move-object/from16 v26, v15

    const-wide/16 v14, -0x1

    ushr-long v27, v14, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v14, v14, 0x4

    invoke-virtual {v0, v7, v9, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v0, v0, 0x4

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v0, v14

    aget-byte v0, v7, v0

    and-int/lit8 v0, v0, 0x1

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v14, v14, 0x4

    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    aget-byte v14, v7, v14

    invoke-virtual {v6, v9, v11, v0, v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->BuildEntangledXonly_Decomp([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;II)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    move-object/from16 v24, v1

    const/4 v15, 0x0

    aget-object v1, v11, v15

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v1, v1, v15

    invoke-virtual {v0, v14, v15, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v14, v11, v25

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v14, v14, v15

    invoke-virtual {v0, v1, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v9, v15

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    move-object/from16 v29, v3

    aget-object v3, v13, v15

    invoke-virtual {v0, v1, v14, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v9, v25

    aget-object v3, v13, v25

    invoke-virtual {v0, v1, v15, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v13, v15

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v14, v13, v15

    invoke-virtual {v0, v1, v3, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v13, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v13, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, v2

    move/from16 v20, v1

    move/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v14, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move/from16 v16, v15

    move-object/from16 v15, v22

    move/from16 v17, v1

    move-object/from16 p1, v24

    move-object/from16 v1, p3

    move-object v7, v2

    move v2, v3

    move-object/from16 v30, v29

    move-object/from16 v3, p1

    move-object/from16 v31, v4

    move v4, v14

    move-object v14, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x2

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move v2, v3

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    const/4 v2, 0x3

    mul-int/2addr v2, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v1, p3

    move-object/from16 v3, v23

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    move-object/from16 v0, p1

    aget-wide v1, v0, v16

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v4, v23

    move-object/from16 v3, v26

    invoke-virtual {v1, v7, v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v3, v12, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v4, v3, v1

    and-long v4, v4, v27

    aput-wide v4, v3, v1

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v7, v15, v14, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v14, v0, v14, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v14, v0

    and-long v1, v1, v27

    aput-wide v1, v14, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v7, v31

    invoke-virtual {v0, v14, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v2, v30

    invoke-virtual {v0, v3, v7, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    and-long v3, v3, v27

    aput-wide v3, v2, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v4, p4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    move-object/from16 v17, v10

    goto/16 :goto_0

    :cond_0
    move-object/from16 v4, v23

    move-object/from16 v3, v26

    move-object/from16 v2, v30

    move-object/from16 v5, v31

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v17, v10

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v7, v15, v3, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v1, v3, v0, v3, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v18, v3, v0

    and-long v18, v18, v27

    aput-wide v18, v3, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v7, v4, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v14, v12, v14, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp_add([J[J[JI)I

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v18, v14, v0

    and-long v18, v18, v27

    aput-wide v18, v14, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v14, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->inv_mod_orderA([J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    invoke-virtual {v0, v5, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->multiply([J[J[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    and-long v3, v3, v27

    aput-wide v3, v2, v0

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v1, v11, v16

    aget-object v3, v11, v25

    const-wide/16 v14, -0x1

    invoke-virtual {v0, v1, v3, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v4, p4

    move-object v7, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Ladder3pt_dual([Lorg/bouncycastle/pqc/crypto/sike/PointProj;[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    :goto_0
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    invoke-virtual {v0, v8, v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe_fast(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_encode([[J[BI)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    const/4 v4, 0x2

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    invoke-virtual {v0, v7, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->encode_to_bytes([J[BII)V

    return-void
.end method

.method protected RecoverY([[J[Lorg/bouncycastle/pqc/crypto/sike/PointProj;[Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v1

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v8, 0x1

    aget-object v9, p2, v8

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, p2, v1

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, p2, v1

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v7, v9, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v9, p2, v1

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v9, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v9, p3, v8

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p3, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v6, v3, v4, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p2, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v9, p3, v8

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v10, p3, v8

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v6, v7, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v7, p3, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v6, v5, v7, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p2, v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v1, v5, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p3, v8

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v1, p1, v2, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p3, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v1, 0x0

    aget-object v6, p3, v1

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v7, p3, v8

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {p1, v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p3, v8

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {p1, v3, v6, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p2, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, v2, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {p1, v2, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, p3, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v3, p3, v8

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {p1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p3, v1

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p2, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, p3, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p3, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v2, p3, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v3, p3, v8

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p2, v8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v1, p3, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p3, v8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    aget-object v0, p3, v8

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    aget-object v1, p3, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p3, v8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p3, v8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    aget-object v0, p3, v8

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    aget-object v1, p3, v8

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p3, v8

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    aget-object v0, p3, v8

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    aget-object p3, p3, v8

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected SecondPoint3n([[J[[[[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProjFull;[I[B[B)V
    .locals 12

    move-object v8, p0

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v10, v0, [J

    const/4 v11, 0x0

    move v0, v11

    :goto_0
    if-nez v0, :cond_0

    aput-byte v11, p7, v11

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Elligator2([[J[II[[J[BII)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v3, v3, v11

    invoke-virtual {v0, v1, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v10, v11, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    move-object v0, p2

    invoke-virtual {p0, p2, v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_full_dual_4_isog([[[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    move-object/from16 v1, p4

    move-object/from16 v4, p6

    invoke-direct {p0, v9, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->SecondPoint_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[B)Z

    move-result v5

    aget v6, p5, v3

    add-int/2addr v6, v3

    aput v6, p5, v3

    move v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected Tate3_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    invoke-virtual {p0, p1, v1, p4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->TripleAndParabola_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v2, v3, v4, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v1, p3, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v1, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    return-void
.end method

.method Traverse_w_div_e_fullsigned([[JIII[I[J[IIII)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v0, p4

    move-object/from16 v13, p6

    move/from16 v14, p10

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v15, 0x2

    filled-new-array {v15, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [[J

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v15, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[J

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-le v0, v8, :cond_6

    aget v16, p5, v0

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v12, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    move v2, v1

    :goto_0
    sub-int v7, v0, v16

    if-ge v2, v7, :cond_2

    and-int/lit8 v3, p9, 0x1

    if-nez v3, :cond_0

    move v3, v1

    :goto_1
    if-ge v3, v14, :cond_1

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v4, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqr_Fp2_cycl([[J[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_2
    if-ge v3, v14, :cond_1

    iget-object v4, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v4, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cube_Fp2_cycl([[J[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int v2, p2, v7

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v17, v7

    move-object/from16 v7, p7

    move/from16 v18, v8

    move/from16 v8, p8

    move-object/from16 v19, v9

    move/from16 v9, p9

    move-object v15, v10

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_div_e_fullsigned([[JIII[I[J[IIII)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v12, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    move/from16 v0, p3

    :goto_3
    add-int v3, p3, v16

    if-ge v0, v3, :cond_5

    aget v1, p7, v0

    if-eqz v1, :cond_4

    if-gez v1, :cond_3

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v3, p2, v0

    div-int/lit8 v4, p9, 0x2

    mul-int/2addr v3, v4

    aget v4, p7, v0

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    mul-int/2addr v2, v3

    move-object/from16 v4, v19

    invoke-virtual {v1, v13, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v4, v18

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v15, v4, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    goto :goto_4

    :cond_3
    move-object/from16 v4, v19

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v3, p2, v0

    div-int/lit8 v5, p9, 0x2

    mul-int/2addr v3, v5

    aget v5, p7, v0

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    mul-int/2addr v2, v3

    invoke-virtual {v1, v15, v13, v2, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[JI[[J)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, v19

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move/from16 v4, v17

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_div_e_fullsigned([[JIII[I[J[IIII)V

    goto/16 :goto_6

    :cond_6
    move/from16 v18, v8

    move-object v4, v9

    move-object v15, v10

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v12, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v15, v18

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_felm_zero([J)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v15, v1

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v0

    if-eqz v0, :cond_7

    aput v1, p7, p3

    goto :goto_6

    :cond_7
    move/from16 v8, v18

    const/4 v0, 0x2

    :goto_5
    div-int/lit8 v1, p9, 0x2

    if-gt v8, v1, :cond_a

    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int/lit8 v3, p8, -0x1

    mul-int/2addr v3, v1

    add-int/lit8 v1, v8, -0x1

    add-int/2addr v3, v1

    mul-int/2addr v3, v0

    mul-int/2addr v2, v3

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v1, v0

    invoke-static {v15, v13, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[JII)Z

    move-result v0

    if-eqz v0, :cond_8

    neg-int v0, v8

    aput v0, p7, p3

    goto :goto_6

    :cond_8
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, v13, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v4, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v4, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcorrectionPRIME([J)V

    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-static {v15, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[[JI)Z

    move-result v0

    if-eqz v0, :cond_9

    aput v8, p7, p3

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method Traverse_w_notdiv_e_fullsigned([[JIII[I[J[J[IIIIIII)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p3

    move/from16 v0, p4

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v10, 0x2

    filled-new-array {v10, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[J

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v10, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[J

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-le v0, v7, :cond_8

    aget v16, p5, v0

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    if-lez p2, :cond_0

    sub-int v2, v0, v16

    mul-int v2, v2, p13

    goto :goto_0

    :cond_0
    rem-int v2, p14, p13

    sub-int v3, v0, v16

    sub-int/2addr v3, v7

    mul-int v3, v3, p13

    add-int/2addr v2, v3

    :goto_0
    if-ge v1, v2, :cond_2

    and-int/lit8 v3, p10, 0x1

    if-nez v3, :cond_1

    iget-object v3, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v3, v9, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqr_Fp2_cycl([[J[J)V

    goto :goto_1

    :cond_1
    iget-object v3, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    invoke-virtual {v3, v9, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cube_Fp2_cycl([[J[J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v17, v0, v16

    add-int v2, p2, v17

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p3

    move/from16 v4, v16

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v18, v7

    move-object/from16 v7, p7

    move-object/from16 v19, v8

    move-object/from16 v8, p8

    move-object/from16 v20, v9

    move/from16 v9, p9

    move/from16 v21, v10

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_notdiv_e_fullsigned([[JIII[I[J[J[IIIIIII)V

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    move/from16 v0, p3

    move v13, v0

    :goto_2
    add-int v4, v0, v16

    if-ge v13, v4, :cond_7

    aget v1, p8, v13

    if-eqz v1, :cond_6

    if-lez p2, :cond_4

    if-gez v1, :cond_3

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v4, p2, v13

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, p11, 0x2

    mul-int/2addr v4, v5

    aget v5, p8, v13

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v2, v4

    move-object/from16 v7, p7

    move-object/from16 v5, v19

    invoke-virtual {v1, v7, v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v5, v18

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, p7

    move-object/from16 v5, v19

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v4, p2, v13

    div-int/lit8 v6, p11, 0x2

    mul-int/2addr v4, v6

    aget v6, p8, v13

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x2

    mul-int/2addr v2, v4

    invoke-virtual {v1, v3, v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[JI[[J)V

    :goto_3
    move-object/from16 v6, p6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    move-object/from16 v5, v19

    if-gez v1, :cond_5

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v4, p2, v13

    div-int/lit8 v6, p11, 0x2

    mul-int/2addr v4, v6

    aget v6, p8, v13

    neg-int v6, v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x2

    mul-int/2addr v2, v4

    move-object/from16 v6, p6

    invoke-virtual {v1, v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v2, v5, v18

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    add-int v4, p2, v13

    div-int/lit8 v8, p11, 0x2

    mul-int/2addr v4, v8

    aget v8, p8, v13

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x2

    mul-int/2addr v2, v4

    invoke-virtual {v1, v3, v6, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[JI[[J)V

    goto :goto_4

    :cond_6
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v5, v19

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v19, v5

    goto/16 :goto_2

    :cond_7
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p2

    move v3, v4

    move/from16 v4, v17

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_notdiv_e_fullsigned([[JIII[I[J[J[IIIIIII)V

    goto/16 :goto_8

    :cond_8
    move/from16 v18, v7

    move-object v5, v8

    move-object v3, v9

    move/from16 v21, v10

    move-object v7, v11

    move-object v6, v12

    move v0, v13

    move-object v2, v14

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v3, v18

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->is_felm_zero([J)Z

    move-result v2

    if-eqz v2, :cond_9

    aget-object v2, v3, v1

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-static {v2, v4, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v2

    if-eqz v2, :cond_9

    aput v1, p8, v0

    goto/16 :goto_8

    :cond_9
    if-nez p2, :cond_d

    add-int/lit8 v1, p9, -0x1

    if-eq v0, v1, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v7, v18

    :goto_5
    div-int/lit8 v2, p12, 0x2

    if-gt v7, v2, :cond_10

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    div-int/lit8 v4, p11, 0x2

    mul-int/lit8 v8, v4, 0x2

    mul-int/2addr v8, v1

    add-int/lit8 v9, v7, -0x1

    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v8, v10

    mul-int/2addr v2, v8

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v3, v6, v2, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[JII)Z

    move-result v2

    if-eqz v2, :cond_b

    neg-int v1, v7

    aput v1, p8, v0

    goto/16 :goto_8

    :cond_b
    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0x2

    mul-int/2addr v8, v4

    invoke-virtual {v2, v6, v8, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v5, v18

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v5, v18

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcorrectionPRIME([J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[[JI)Z

    move-result v2

    if-eqz v2, :cond_c

    aput v7, p8, v0

    goto :goto_8

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    move/from16 v1, v18

    :goto_7
    div-int/lit8 v2, p11, 0x2

    if-gt v1, v2, :cond_10

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v8, p9, -0x1

    mul-int/2addr v6, v8

    add-int/lit8 v9, v1, -0x1

    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v6, v10

    mul-int/2addr v4, v6

    iget-object v6, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v3, v7, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[JII)Z

    move-result v4

    if-eqz v4, :cond_e

    neg-int v1, v1

    aput v1, p8, v0

    goto :goto_8

    :cond_e
    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x2

    mul-int/2addr v6, v2

    invoke-virtual {v4, v7, v6, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([JI[[J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v5, v18

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v4, v5, v18

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcorrectionPRIME([J)V

    iget-object v2, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([[J[[JI)Z

    move-result v2

    if-eqz v2, :cond_f

    aput v1, p8, v0

    goto :goto_8

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    return-void
.end method

.method protected TripleAndParabola_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;[[J[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p3, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p2, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object p2, p2, v1

    invoke-virtual {v0, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {p2, v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    return-void
.end method

.method protected eval_dual_2_isog([[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected eval_dual_4_isog([[J[[J[[[JILorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v6, v7, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, p2, p1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, v0, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v4, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v3, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, v4, v2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p3, p4

    iget-object v2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 p2, p4, 0x1

    aget-object p2, p3, p2

    iget-object v2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p2, v2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/2addr p4, v1

    aget-object p2, p3, p4

    iget-object p3, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p4, p5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected eval_dual_4_isog_shared([[J[[J[[J[[[JI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p4, p5

    invoke-virtual {v0, p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v1, p5, 0x1

    aget-object v2, p4, v1

    invoke-virtual {v0, p2, p3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 p5, p5, 0x2

    aget-object p3, p4, p5

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p2, p4, p5

    aget-object p3, p4, v1

    invoke-virtual {p1, p2, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    return-void
.end method

.method protected eval_final_dual_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v2, v2, [J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, v6, v4

    invoke-virtual {v0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v3, v3, v5

    invoke-virtual {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpnegPRIME([J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    return-void
.end method

.method protected eval_full_dual_4_isog([[[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aget-object v5, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aget-object v6, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    aget-object v7, p1, v2

    const/4 v8, 0x2

    move-object v4, p0

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_dual_4_isog([[J[[J[[[JILorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object v0, p1, v0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Alice:I

    aget-object p1, p1, v1

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_dual_2_isog([[J[[JLorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    :cond_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->eval_final_dual_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    return-void
.end method

.method protected get_4_isog_dual(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x1

    aget-object v3, p4, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x2

    aget-object v3, p4, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v2, 0x4

    aget-object v3, p4, v2

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p4, v2

    const/4 v2, 0x0

    aget-object v3, p4, v2

    invoke-virtual {v0, v1, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p4, v2

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v0, p4, v2

    invoke-virtual {p3, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v0, 0x3

    aget-object v1, p4, v0

    invoke-virtual {p3, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p3, p4, v0

    invoke-virtual {p1, p3, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    return-void
.end method

.method protected init_basis([J[[J[[J[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v3, 0x1

    aget-object p2, p2, v3

    invoke-virtual {v0, p1, v2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v0, v0, 0x2

    aget-object v2, p3, v1

    invoke-virtual {p2, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 v0, v0, 0x3

    aget-object p3, p3, v3

    invoke-virtual {p2, p1, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 p3, p3, 0x4

    aget-object v0, p4, v1

    invoke-virtual {p2, p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    mul-int/lit8 p3, p3, 0x5

    aget-object p4, p4, v3

    invoke-virtual {p2, p1, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    return-void
.end method

.method protected makeDiff(Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v4, v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v4, v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v4, p1, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, v1, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p3, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    const/4 p1, 0x0

    aget-object p3, v0, p1

    aget-object p1, v2, p1

    invoke-static {p3, p1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result p1

    const/4 p3, 0x1

    aget-object v0, v0, p3

    aget-object p3, v2, p3

    invoke-static {v0, p3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result p3

    and-int/2addr p1, p3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    :cond_0
    return-void
.end method

.method protected make_positive([[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    new-array v1, v1, [J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, p1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->from_fp2mont([[J[[J)V

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v0

    const-wide/16 v3, 0x1

    if-nez v0, :cond_0

    aget-object v0, p1, v2

    aget-wide v0, v0, v2

    and-long/2addr v0, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget-object v0, p1, v0

    aget-wide v0, v0, v2

    and-long/2addr v0, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2neg([[J)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->to_fp2mont([[J[[J)V

    return-void
.end method

.method protected random_mod_order_A([BLjava/security/SecureRandom;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p2, p1, v1

    and-int/lit16 p2, p2, 0xfe

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/lit8 p2, p2, -0x1

    aget-byte v0, p1, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return-void
.end method

.method protected random_mod_order_B([BLjava/security/SecureRandom;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FormatPrivKey_B([B)V

    return-void
.end method

.method solve_dlog([[J[I[JI)V
    .locals 18

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move/from16 v10, p4

    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_2:I

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PLEN_2:I

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph2_path:[I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph2_T:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_2:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL2_W:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_div_e_fullsigned([[JIII[I[J[IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PLEN_2:I

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph2_path:[I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph2_T1:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph2_T2:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_2:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL2_W:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL2_EMODW:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_2:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v8

    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v13, v17

    move/from16 v14, v16

    invoke-virtual/range {v0 .. v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_notdiv_e_fullsigned([[JIII[I[J[J[IIIIIII)V

    :goto_0
    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_2:I

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL2_W:I

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-direct {v15, v14, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->from_base([I[JII)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne v10, v0, :cond_3

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_3:I

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PLEN_3:I

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph3_path:[I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph3_T:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_3:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL3_W:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_3:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_div_e_fullsigned([[JIII[I[J[IIII)V

    goto :goto_1

    :cond_2
    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PLEN_3:I

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph3_path:[I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph3_T1:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ph3_T2:[J

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_3:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL3_W:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL3_EMODW:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->W_3:I

    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_EXPON:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v8

    move-object/from16 v8, p2

    move/from16 v10, p4

    move/from16 v13, v17

    move/from16 v14, v16

    invoke-virtual/range {v0 .. v14}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->Traverse_w_notdiv_e_fullsigned([[JIII[I[J[J[IIIIIII)V

    :goto_1
    iget-object v0, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->DLEN_3:I

    iget-object v1, v15, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ELL3_W:I

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v15, v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->from_base([I[JII)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected validate_ciphertext([B[B[BI[BI)B
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move/from16 v1, p6

    const/4 v3, 0x3

    new-array v7, v3, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v8, 0x0

    aput-object v5, v7, v8

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v6, 0x1

    aput-object v5, v7, v6

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v9}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    const/4 v9, 0x2

    aput-object v5, v7, v9

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v5, v10}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v15, v10}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v9, v10}, [I

    move-result-object v10

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v19, v3

    const/4 v3, 0x2

    filled-new-array {v3, v10}, [I

    move-result-object v10

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    move-object/from16 v20, v9

    move-object/from16 v17, v15

    const/4 v9, 0x2

    const/4 v15, 0x3

    filled-new-array {v15, v9, v10}, [I

    move-result-object v10

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_INT_POINTS_BOB:I

    new-array v15, v10, [I

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v10, v10, [J

    move-object/from16 v16, v10

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    new-array v10, v10, [J

    move-object/from16 v27, v15

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v2, 0x0

    aget-object v3, v3, v2

    invoke-virtual {v15, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->B_gen:[J

    invoke-virtual {v0, v1, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->init_basis([J[[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v3, v7, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v15, p3

    move/from16 v2, p4

    invoke-virtual {v1, v15, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v3, 0x0

    aget-object v15, v7, v3

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v15, v3

    invoke-virtual {v1, v2, v3, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    aget-object v15, v14, v3

    invoke-virtual {v1, v2, v3, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v14, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v14, v6, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v6, v6, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/16 v23, 0x0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v24, v10

    move/from16 v25, v2

    move/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->BOB:I

    move-object v2, v10

    move-object/from16 v21, v16

    move-object v10, v1

    move-object v1, v14

    move-object v14, v2

    move-object/from16 v3, v17

    move-object/from16 v2, v27

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    :goto_0
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    if-ge v15, v13, :cond_2

    move v14, v10

    :goto_1
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MAX_Bob:I

    sub-int/2addr v10, v15

    if-ge v14, v10, :cond_0

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v13}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    aput-object v10, v4, v11

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v13, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move/from16 v16, v15

    aget-object v15, v4, v11

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v13, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v4, v11

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v10, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    add-int/lit8 v17, v11, 0x1

    aput v14, v2, v11

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->strat_Bob:[I

    add-int/lit8 v18, v12, 0x1

    aget v22, v10, v12

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    move-object v11, v5

    move-object v12, v5

    move-object v13, v6

    move/from16 v23, v14

    move-object v14, v1

    move/from16 v15, v22

    invoke-virtual/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V

    add-int v14, v23, v22

    move/from16 v15, v16

    move/from16 v11, v17

    move/from16 v12, v18

    goto :goto_1

    :cond_0
    move/from16 v16, v15

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v10, v5, v6, v1, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_1

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    aget-object v14, v4, v10

    invoke-virtual {v13, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v13, 0x0

    aget-object v14, v7, v13

    invoke-virtual {v10, v14, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    add-int/lit8 v13, v11, -0x1

    aget-object v14, v4, v13

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v15, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v10, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v14, v4, v13

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v15, v5, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v10, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    aget v10, v2, v13

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v15, v16, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-virtual {v2, v5, v6, v1, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v2, 0x0

    aget-object v4, v7, v2

    invoke-virtual {v1, v4, v9}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v8, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v4, p5

    move/from16 v6, p6

    invoke-virtual {v1, v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    add-int/2addr v9, v6

    invoke-virtual {v1, v4, v2, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2_decode([B[[JI)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    const/4 v9, 0x2

    mul-int/2addr v2, v9

    add-int/2addr v6, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ORDER_A_ENCODED_BYTES:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_ORDER:I

    move-object/from16 v2, p5

    move-object v11, v3

    move-object/from16 v12, v19

    move v3, v6

    move-object/from16 v4, v21

    move-object v13, v5

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->decode_to_digits([BI[JII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v21

    move-object/from16 p4, v8

    move/from16 p5, v3

    move-object/from16 p6, v13

    invoke-virtual/range {p1 .. p6}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->Ladder(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[J[[JILorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v1, v2, v3, v12}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, v11, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v9, v20

    invoke-virtual {v1, v2, v3, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v12, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->cmp_f2elm([[J[[J)B

    move-result v1

    return v1
.end method
