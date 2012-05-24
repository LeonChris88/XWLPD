.class Lcom/sec/android/app/twlauncher/RoundedRectSolid;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.source "RoundedRectSolid.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;-><init>()V

    const/4 v9, 0x6

    const/16 v17, 0x31

    const/4 v14, 0x3

    const/16 v19, 0x93

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v19, 0x0

    const/high16 v20, 0x3f00

    aput v20, v18, v19

    const/16 v19, 0x1

    const/high16 v20, 0x3f00

    aput v20, v18, v19

    const/16 v19, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    add-int/lit8 v13, v13, 0x3

    const/4 v11, 0x0

    :goto_0
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_0

    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    add-int/lit8 v13, v13, 0x6

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    add-int/lit8 v13, v13, 0x6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_2

    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    add-int/lit8 v13, v13, 0x6

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_3
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    int-to-float v0, v11

    move/from16 v19, v0

    const/high16 v20, 0x40a0

    div-float v19, v19, v20

    const v20, 0x3fc90fdb

    mul-float v16, v19, v20

    add-int/lit8 v19, v13, 0x0

    const/high16 v20, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, p1

    add-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x1

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    sub-float v20, v20, v21

    sub-float v20, v20, p2

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x2

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v20, v13, 0x0

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v13, 0x1

    aget v20, v18, v20

    aput v20, v18, v19

    add-int/lit8 v19, v13, 0x3

    add-int/lit8 v19, v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    add-int/lit8 v13, v13, 0x6

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/16 v19, 0xd8

    move/from16 v0, v19

    new-array v12, v0, [S

    const/4 v11, 0x0

    :goto_4
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x0

    const/16 v20, 0x0

    aput-short v20, v12, v19

    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v20, v11, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v12, v19

    mul-int/lit8 v19, v11, 0x3

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v20, v11, 0x1

    rem-int/lit8 v20, v20, 0x18

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v12, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    const/16 v15, 0x48

    const/4 v11, 0x0

    :goto_5
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v6, v0

    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v7, v0

    add-int/lit8 v19, v11, 0x1

    rem-int/lit8 v19, v19, 0x18

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v8, v0

    add-int/lit8 v19, v11, 0x1

    rem-int/lit8 v19, v19, 0x18

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v10, v0

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x0

    aput-short v6, v12, v19

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x1

    aput-short v7, v12, v19

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x2

    aput-short v8, v12, v19

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x3

    aput-short v8, v12, v19

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x4

    aput-short v7, v12, v19

    mul-int/lit8 v19, v11, 0x6

    add-int/lit8 v19, v19, 0x48

    add-int/lit8 v19, v19, 0x5

    aput-short v10, v12, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;->put([F[SI)V

    return-void
.end method
