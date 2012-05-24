.class public Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field regenerateId:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput p1, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    return-void
.end method
