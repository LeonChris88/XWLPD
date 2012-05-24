.class Lcom/sec/android/app/twlauncher/GLCanvas$Grid;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;-><init>()V

    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_0

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v5, v2

    add-int/lit8 v6, p1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v1, v4

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v3

    add-int/lit8 v6, p2, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    new-array v0, v4, [S

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_3

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;->put([F[SI)V

    return-void
.end method
